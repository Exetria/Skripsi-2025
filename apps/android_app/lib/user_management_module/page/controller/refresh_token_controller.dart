import 'dart:async';

import 'package:android_app/main.dart';
import 'package:android_app/user_management_module/domain/entities/refresh_token_domain.dart';
import 'package:android_app/user_management_module/domain/repository/authentication_repository.dart';
import 'package:android_app/user_management_module/page/login_page.dart';
import 'package:common_components/common_components.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'refresh_token_controller.g.dart';

@riverpod
class RefreshTokenController extends _$RefreshTokenController {
  final Duration _tokenDuration = const Duration(seconds: 3600);
  final Duration _checkInterval = const Duration(seconds: 120);
  final Duration _checkBuffer = const Duration(seconds: 300);

  int _lastRefresh = DateTime.now().millisecondsSinceEpoch;
  Timer? _refreshTimer;
  bool _refreshing = false;

  @override
  AsyncValue<RefreshTokenDomain?> build() {
    return const AsyncLoading();
  }

  Future<void> startAutoRefreshToken() async {
    _refreshTimer = Timer.periodic(_checkInterval, (_) {
      final timeElapsed = Duration(
        milliseconds: DateTime.now().millisecondsSinceEpoch - _lastRefresh,
      );

      // time remaining until refresh: ${(_tokenDuration.inMilliseconds - _checkBuffer.inMilliseconds) - timeElapsed.inMilliseconds}
      if (!_refreshing &&
          timeElapsed.inMilliseconds >=
              (_tokenDuration.inMilliseconds - _checkBuffer.inMilliseconds)) {
        _refreshToken();
      }
    });
  }

  Future<void> stopAutoRefresh() async {
    _refreshTimer?.cancel();
    _refreshTimer = null;
  }

  Future<void> _refreshToken() async {
    _refreshing = true;
    try {
      final repository = ref.watch(refreshTokenRepositoryProvider);

      state = const AsyncLoading();

      final result = await repository.refreshToken(
        refreshToken: userDataHelper?.refreshToken ?? '',
      );

      state = await result.fold(
        (l) => AsyncError(l, StackTrace.empty),
        (r) => AsyncData(r),
      );

      if (state is AsyncData) {
        _lastRefresh = DateTime.now().millisecondsSinceEpoch;

        // Save new token to user data
        userDataHelper?.idToken = state.value?.idToken ?? '';
        userDataHelper?.refreshToken = state.value?.refreshToken ?? '';

        // Save new token to SP
        saveDataToSp(key: 'idToken', data: state.value?.idToken ?? '');
        saveDataToSp(
          key: 'refreshToken',
          data: state.value?.refreshToken ?? '',
        );
      } else {
        stopAutoRefresh();
        navigatorKey.currentState?.pushReplacement(
          MaterialPageRoute(
            builder:
                (_) => LoginPage(
                  kicked: true,
                  reason: 'Sesi Anda Berakhir\nSilahkan Login Kembali',
                ),
          ),
        );
      }
    } catch (e) {
      stopAutoRefresh();
      navigatorKey.currentState?.pushReplacement(
        MaterialPageRoute(
          builder:
              (_) => LoginPage(
                kicked: true,
                reason: 'Sesi Anda Berakhir\nSilahkan Login Kembali',
              ),
        ),
      );
    } finally {
      _refreshing = false;
    }
  }
}

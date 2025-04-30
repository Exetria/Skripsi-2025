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

  int _lastRefresh = DateTime.now().millisecondsSinceEpoch;
  Timer? _refreshTimer;
  bool _refreshing = false;

  @override
  AsyncValue<RefreshTokenDomain?> build() {
    return const AsyncLoading();
  }

  Future<void> startAutoRefreshToken() async {
    await Future.delayed(const Duration(seconds: 10));
    _refreshTimer = Timer.periodic(_checkInterval, (_) {
      final timeElapsed = Duration(
        milliseconds: DateTime.now().millisecondsSinceEpoch - _lastRefresh,
      );

      if (!_refreshing &&
          timeElapsed.inMilliseconds >=
              (_tokenDuration.inMilliseconds - _checkInterval.inMilliseconds)) {
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

      if (state.value is AsyncData) {
        _lastRefresh = DateTime.now().microsecondsSinceEpoch;

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
        navigatorKey.currentState?.pushReplacement(
          MaterialPageRoute(
            builder:
                (_) => LoginPage(
                  kicked: true,
                  reason: 'Session Expired\nPlease Sign In Again',
                ),
          ),
        );
      }
    } catch (e) {
      navigatorKey.currentState?.pushReplacement(
        MaterialPageRoute(
          builder:
              (_) => LoginPage(
                kicked: true,
                reason: 'Session Expired\nPlease Sign In Again',
              ),
        ),
      );
    } finally {
      _refreshing = false;
    }
  }
}

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:windows_app/user_module/domain/entities/announcement_domain.dart';
import 'package:windows_app/user_module/domain/repository/announcement_repository.dart';
import 'package:windows_app/user_module/page/controller/user_list_controller.dart';

part 'update_announcement_controller.g.dart';

@Riverpod(keepAlive: true)
class UpdateAnnouncementController extends _$UpdateAnnouncementController {
  @override
  AsyncValue<AnnouncementDomain?> build() {
    return const AsyncLoading();
  }

  Future<AsyncValue<AnnouncementDomain?>> addAnnouncement({
    required String title,
    required String content,
  }) async {
    List<String> fcmTokens =
        await ref
            .read(userListControllerProvider.notifier)
            .getAllSalesFcmToken();

    final repository = ref.watch(UpdateAnnouncementRepositoryProvider);

    state = const AsyncLoading();

    final result = await repository.addAnnouncement(
      title: title,
      content: content,
      fcmTokens: fcmTokens,
    );

    state = await result.fold(
      (l) => AsyncError(l, StackTrace.empty),
      (r) => AsyncData(r),
    );

    return state;
  }
}

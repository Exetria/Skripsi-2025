import 'package:android_app/announcement_module/domain/entities/announcement_domain.dart';
import 'package:android_app/announcement_module/domain/repository/announcement_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'announcement_list_controller.g.dart';

@Riverpod(keepAlive: true)
class AnnouncementListController extends _$AnnouncementListController {
  List<AnnouncementDomain>? _announcementList;

  @override
  FutureOr<List<AnnouncementDomain>?> build() async {
    final repository = ref.watch(AnnouncementListRepositoryProvider);
    state = const AsyncLoading();
    final result = await repository.getAnnouncementList();
    state = await result.fold(
      (l) => AsyncError(l, StackTrace.empty),
      (r) => AsyncData(r),
    );
    _announcementList = state.value;
    sortAnnouncementByDate();
    return state.value;
  }

  void sortAnnouncementByDate() {
    if (_announcementList == null) return;

    _announcementList?.sort((a, b) {
      final dateA = DateTime.tryParse(a.createTime ?? '');
      final dateB = DateTime.tryParse(b.createTime ?? '');

      if (dateA == null && dateB == null) return 0;
      if (dateA == null) return 1;
      if (dateB == null) return -1;

      return dateB.compareTo(dateA);
    });
  }
}

import 'package:android_app/announcement_module/page/controller/announcement_list_controller.dart';
import 'package:android_app/utils/functions.dart';
import 'package:common_components/common_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

class AnnouncementPage extends StatefulHookConsumerWidget {
  const AnnouncementPage({super.key});

  @override
  ConsumerState<AnnouncementPage> createState() => _AnnouncementPage();
}

class _AnnouncementPage extends ConsumerState<AnnouncementPage> {
  @override
  Widget build(BuildContext context) {
    final announcementListState = ref.watch(announcementListControllerProvider);

    return Scaffold(
      appBar: customAppBar(
        context: context,
        title: 'Pengumuman',
        showLeftButton: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(8.r),
        child: Column(
          children: [
            // Customer request list
            Expanded(
              child: announcementListState.when(
                loading: () => const Center(child: CircularProgressIndicator()),

                data: (announcementList) {
                  if (announcementList == null || announcementList.isEmpty) {
                    return refreshableInfoWidget(
                      refreshFunction: _refreshAnnouncementList,
                      content: const Text('Data Pengumuman Tidak Ditemukan'),
                    );
                  }

                  return RefreshIndicator(
                    onRefresh: _refreshAnnouncementList,
                    child: ListView.separated(
                      itemCount: announcementList.length,
                      separatorBuilder:
                          (context, index) => SizedBox(height: 12.h),
                      itemBuilder: (context, index) {
                        final data = announcementList[index];

                        final title = data.fields?.title?.stringValue ?? '-';
                        final content =
                            data.fields?.content?.stringValue ?? '-';
                        final String creationDate = DateFormat(
                          'd MMM yyyy',
                        ).format(DateTime.parse(data.createTime ?? ''));

                        return customListItem(
                          context: context,
                          leadIcon: Icons.add_business,
                          title: title,
                          subtitle: content,
                          onTap: () {
                            showAnnouncementDetailsPopup(
                              context: context,
                              title: title,
                              content: content,
                              creationDate: creationDate,
                            );
                          },
                        );
                      },
                    ),
                  );
                },

                error: (error, _) {
                  final exception = error as ApiException;

                  return refreshableInfoWidget(
                    refreshFunction: _refreshAnnouncementList,
                    content: Text(
                      'Gagal Memuat Data Daftar Pendaftaran PelangganS: ${exception.message}',
                      style: errorStyle,
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> showAnnouncementDetailsPopup({
    required BuildContext context,
    required String title,
    required String content,
    required String creationDate,
  }) async {
    showDialog(
      context: context,
      builder: (dialogContext) {
        return AlertDialog(
          title: Center(child: Text(title, style: subtitleStyle)),
          content: SizedBox(
            width: ScreenUtil().screenWidth * 0.4,
            child: SingleChildScrollView(
              child: Text(content, style: bodyStyle),
            ),
          ),
          actions: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(creationDate),
                TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Theme.of(context).colorScheme.onSurface,
                  ),
                  onPressed: () {
                    Navigator.pop(dialogContext);
                  },
                  child: const Text('Tutup'),
                ),
              ],
            ),
          ],
        );
      },
    );
  }

  Future<void> _refreshAnnouncementList() async {
    ref.invalidate(announcementListControllerProvider);
  }
}

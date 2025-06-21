import 'package:common_components/common_components.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:windows_app/user_module/data/repository_impl/announcement_list_repository_impl.dart';
import 'package:windows_app/user_module/data/repository_impl/update_announcement_repository_impl.dart';
import 'package:windows_app/user_module/domain/entities/announcement_domain.dart';

abstract class AnnouncementRepository {
  Future<Either<ApiException, List<AnnouncementDomain>?>> getAnnouncementList();
  Future<Either<ApiException, AnnouncementDomain?>> addAnnouncement({
    required String title,
    required String content,
    required List<String> fcmTokens,
  });
}

final AnnouncementListRepositoryProvider = Provider<AnnouncementRepository>(
  (ref) => AnnouncementListRepositoryImpl(),
);
final UpdateAnnouncementRepositoryProvider = Provider<AnnouncementRepository>(
  (ref) => UpdateAnnouncementRepositoryImpl(),
);

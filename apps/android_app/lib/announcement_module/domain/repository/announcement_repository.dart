import 'package:android_app/announcement_module/data/repository_impl/announcement_list_repository_impl.dart';
import 'package:android_app/announcement_module/domain/entities/announcement_domain.dart';
import 'package:common_components/common_components.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';

abstract class AnnouncementRepository {
  Future<Either<ApiException, List<AnnouncementDomain>?>> getAnnouncementList();
}

final AnnouncementListRepositoryProvider = Provider<AnnouncementRepository>(
  (ref) => AnnouncementListRepositoryImpl(),
);

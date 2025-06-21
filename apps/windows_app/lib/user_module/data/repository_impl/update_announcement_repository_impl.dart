import 'package:common_components/common_components.dart';
import 'package:fpdart/fpdart.dart';
import 'package:windows_app/user_module/data/remote_datasource/update_announcement_remote_datasource.dart';
import 'package:windows_app/user_module/domain/entities/announcement_domain.dart';
import 'package:windows_app/user_module/domain/repository/announcement_repository.dart';

class UpdateAnnouncementRepositoryImpl implements AnnouncementRepository {
  final remoteDataSource = UpdateAnnouncementRemoteDatasourceImpl();

  @override
  Future<Either<ApiException, List<AnnouncementDomain>?>>
  getAnnouncementList() {
    throw UnimplementedError();
  }

  @override
  Future<Either<ApiException, AnnouncementDomain?>> addAnnouncement({
    required String title,
    required String content,
    required List<String> fcmTokens,
  }) async {
    final resp = await remoteProcess(
      remoteDataSource.addAnnouncement(
        title: title,
        content: content,
        fcmTokens: fcmTokens,
      ),
    );

    return resp.fold((l) => Left(l), (r) => Right(r));
  }
}

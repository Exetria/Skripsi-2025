import 'package:android_app/announcement_module/data/remote_datasource/announcement_list_remote_datasource.dart';
import 'package:android_app/announcement_module/domain/entities/announcement_domain.dart';
import 'package:android_app/announcement_module/domain/repository/announcement_repository.dart';
import 'package:common_components/common_components.dart';
import 'package:fpdart/fpdart.dart';

class AnnouncementListRepositoryImpl implements AnnouncementRepository {
  final remoteDataSource = AnnouncementListRemoteDatasourceImpl();

  @override
  Future<Either<ApiException, List<AnnouncementDomain>?>>
  getAnnouncementList() async {
    final resp = await remoteProcess(remoteDataSource.getAnnouncementList());

    return resp.fold((l) => Left(l), (r) => Right(r));
  }
}

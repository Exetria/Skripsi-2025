// import 'package:common_components/common_components.dart';
// import 'package:fpdart/fpdart.dart';

// class ModuleNameRepositoryImpl implements ModuleNameRepository {
//   final remoteDataSource = ModuleNameRemoteDatasourceImpl();

//   @override
//   Future<Either<ApiException, List<DomainName>?>> fx() async {
//     final resp = await remoteProcess(remoteDataSource.fx());

//     return resp.fold((l) => Left(l), (r) => Right(r));
//   }
// }

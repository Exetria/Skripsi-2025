import 'dart:io';

import 'package:common_components/common_components.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:windows_app/visit_module/data/repository_impl/update_visit_repository_impl.dart';
import 'package:windows_app/visit_module/data/repository_impl/visit_list_repository_impl.dart';
import 'package:windows_app/visit_module/domain/entities/visit_domain.dart';

abstract class VisitRepository {
  Future<Either<ApiException, VisitDomain?>> getSalesVisitList({
    required String salesId,
    required DateTime date,
  });

  Future<Either<ApiException, VisitDomain?>> updateSalesVisit({
    required String salesId,
    required DateTime date,
    required List<Map<String, dynamic>> visitDataList,
    int? updateLocationIndex,
    File? visitPhoto,
  });

  Future<Either<ApiException, List<VisitDomain>?>> getFilteredVisitList({
    required DateTime startDate,
  });
}

final visitListRepositoryProvider = Provider<VisitRepository>(
  (ref) => VisitListRepositoryImpl(),
);

final updateVisitRepositoryProvider = Provider<VisitRepository>(
  (ref) => UpdateVisitRepositoryImpl(),
);

// import 'package:common_components/common_components.dart';

// abstract class ModuleNameRemoteDatasource {
//   Future<List<DomainName>> fx();
// }

// class ModuleNameRemoteDatasourceImpl implements ModuleNameRemoteDatasource {
//   @override
//   Future<List<DomainName>> fx() async {
//     Map<String, dynamic> result = await apiCallGet('link');

//     final documents = (result['documents'] as List<dynamic>? ?? []);
//     return documents
//         .map((e) => DomainName.fromJson(e as Map<String, dynamic>))
//         .toList();
//   }
// }

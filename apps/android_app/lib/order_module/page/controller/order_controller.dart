// import 'package:riverpod_annotation/riverpod_annotation.dart';

// part 'module_name_controller.g.dart';

// @riverpod
// class ModuleNameController extends _$ModuleNameController {
//   @override
//   FutureOr<List<DomainName>?> build() async {
//     final repository = ref.watch(ModuleNameRepositoryProvider);
//     state = const AsyncLoading();
//     final result = await repository.fx();
//     state = await result.fold(
//       (l) => AsyncError(l, StackTrace.empty),
//       (r) => AsyncData(r),
//     );
//     return state.value;
//   }
// }

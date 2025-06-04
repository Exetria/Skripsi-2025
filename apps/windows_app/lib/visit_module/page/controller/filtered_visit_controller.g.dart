// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'filtered_visit_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$filteredVisitControllerHash() =>
    r'a512a5c622a0705a31d5048cbbf30e92c73a1e90';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$FilteredVisitController
    extends BuildlessAsyncNotifier<List<VisitDomain>?> {
  late final DateTime startDate;

  FutureOr<List<VisitDomain>?> build(DateTime startDate);
}

/// See also [FilteredVisitController].
@ProviderFor(FilteredVisitController)
const filteredVisitControllerProvider = FilteredVisitControllerFamily();

/// See also [FilteredVisitController].
class FilteredVisitControllerFamily
    extends Family<AsyncValue<List<VisitDomain>?>> {
  /// See also [FilteredVisitController].
  const FilteredVisitControllerFamily();

  /// See also [FilteredVisitController].
  FilteredVisitControllerProvider call(DateTime startDate) {
    return FilteredVisitControllerProvider(startDate);
  }

  @override
  FilteredVisitControllerProvider getProviderOverride(
    covariant FilteredVisitControllerProvider provider,
  ) {
    return call(provider.startDate);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'filteredVisitControllerProvider';
}

/// See also [FilteredVisitController].
class FilteredVisitControllerProvider
    extends
        AsyncNotifierProviderImpl<FilteredVisitController, List<VisitDomain>?> {
  /// See also [FilteredVisitController].
  FilteredVisitControllerProvider(DateTime startDate)
    : this._internal(
        () => FilteredVisitController()..startDate = startDate,
        from: filteredVisitControllerProvider,
        name: r'filteredVisitControllerProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$filteredVisitControllerHash,
        dependencies: FilteredVisitControllerFamily._dependencies,
        allTransitiveDependencies:
            FilteredVisitControllerFamily._allTransitiveDependencies,
        startDate: startDate,
      );

  FilteredVisitControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.startDate,
  }) : super.internal();

  final DateTime startDate;

  @override
  FutureOr<List<VisitDomain>?> runNotifierBuild(
    covariant FilteredVisitController notifier,
  ) {
    return notifier.build(startDate);
  }

  @override
  Override overrideWith(FilteredVisitController Function() create) {
    return ProviderOverride(
      origin: this,
      override: FilteredVisitControllerProvider._internal(
        () => create()..startDate = startDate,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        startDate: startDate,
      ),
    );
  }

  @override
  AsyncNotifierProviderElement<FilteredVisitController, List<VisitDomain>?>
  createElement() {
    return _FilteredVisitControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FilteredVisitControllerProvider &&
        other.startDate == startDate;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, startDate.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin FilteredVisitControllerRef
    on AsyncNotifierProviderRef<List<VisitDomain>?> {
  /// The parameter `startDate` of this provider.
  DateTime get startDate;
}

class _FilteredVisitControllerProviderElement
    extends
        AsyncNotifierProviderElement<
          FilteredVisitController,
          List<VisitDomain>?
        >
    with FilteredVisitControllerRef {
  _FilteredVisitControllerProviderElement(super.provider);

  @override
  DateTime get startDate =>
      (origin as FilteredVisitControllerProvider).startDate;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package

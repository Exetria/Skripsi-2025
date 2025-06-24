// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'live_location_controller.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$liveLocationControllerHash() =>
    r'169889ac9d09a7c73206bc4304fafcc8bd382154';

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

abstract class _$LiveLocationController
    extends BuildlessAsyncNotifier<LiveLocationDomain?> {
  late final String userId;

  FutureOr<LiveLocationDomain?> build(String userId);
}

/// See also [LiveLocationController].
@ProviderFor(LiveLocationController)
const liveLocationControllerProvider = LiveLocationControllerFamily();

/// See also [LiveLocationController].
class LiveLocationControllerFamily
    extends Family<AsyncValue<LiveLocationDomain?>> {
  /// See also [LiveLocationController].
  const LiveLocationControllerFamily();

  /// See also [LiveLocationController].
  LiveLocationControllerProvider call(String userId) {
    return LiveLocationControllerProvider(userId);
  }

  @override
  LiveLocationControllerProvider getProviderOverride(
    covariant LiveLocationControllerProvider provider,
  ) {
    return call(provider.userId);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'liveLocationControllerProvider';
}

/// See also [LiveLocationController].
class LiveLocationControllerProvider
    extends
        AsyncNotifierProviderImpl<LiveLocationController, LiveLocationDomain?> {
  /// See also [LiveLocationController].
  LiveLocationControllerProvider(String userId)
    : this._internal(
        () => LiveLocationController()..userId = userId,
        from: liveLocationControllerProvider,
        name: r'liveLocationControllerProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product')
                ? null
                : _$liveLocationControllerHash,
        dependencies: LiveLocationControllerFamily._dependencies,
        allTransitiveDependencies:
            LiveLocationControllerFamily._allTransitiveDependencies,
        userId: userId,
      );

  LiveLocationControllerProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.userId,
  }) : super.internal();

  final String userId;

  @override
  FutureOr<LiveLocationDomain?> runNotifierBuild(
    covariant LiveLocationController notifier,
  ) {
    return notifier.build(userId);
  }

  @override
  Override overrideWith(LiveLocationController Function() create) {
    return ProviderOverride(
      origin: this,
      override: LiveLocationControllerProvider._internal(
        () => create()..userId = userId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        userId: userId,
      ),
    );
  }

  @override
  AsyncNotifierProviderElement<LiveLocationController, LiveLocationDomain?>
  createElement() {
    return _LiveLocationControllerProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is LiveLocationControllerProvider && other.userId == userId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, userId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin LiveLocationControllerRef
    on AsyncNotifierProviderRef<LiveLocationDomain?> {
  /// The parameter `userId` of this provider.
  String get userId;
}

class _LiveLocationControllerProviderElement
    extends
        AsyncNotifierProviderElement<
          LiveLocationController,
          LiveLocationDomain?
        >
    with LiveLocationControllerRef {
  _LiveLocationControllerProviderElement(super.provider);

  @override
  String get userId => (origin as LiveLocationControllerProvider).userId;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package

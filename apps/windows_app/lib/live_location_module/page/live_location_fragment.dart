import 'dart:async';

import 'package:common_components/common_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:latlong2/latlong.dart';
import 'package:windows_app/live_location_module/page/controller/live_location_controller.dart';
import 'package:windows_app/user_module/page/controller/user_list_controller.dart';
import 'package:windows_app/utils/functions.dart';

class LiveLocationFragment extends StatefulHookConsumerWidget {
  const LiveLocationFragment({super.key});

  @override
  ConsumerState<LiveLocationFragment> createState() => _LiveLocationFragment();
}

class _LiveLocationFragment extends ConsumerState<LiveLocationFragment> {
  DateTime selectedDate = DateTime.now();
  String? focusedSalesId;
  String? focusedSalesName;
  late final Timer _locationTimer;

  @override
  void initState() {
    super.initState();

    addCallBackAfterBuild(
      callback: () {
        ref.read(userListControllerProvider.notifier).resetSearch();
        ref
            .read(userListControllerProvider.notifier)
            .changeRoleFilter(RoleFilter.sales);

        _locationTimer = Timer.periodic(const Duration(seconds: 60), (_) async {
          _refreshLiveLocation();
        });
      },
    );
  }

  @override
  void dispose() {
    _locationTimer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          Text('Lokasi Langsung', style: titleStyle),
          const SizedBox(height: 10),

          _buildHeader(),
          const SizedBox(height: 12),

          // MAP & LIST
          Expanded(
            child: Row(
              children: [
                Expanded(flex: 7, child: _buildMapSection()),
                Expanded(flex: 3, child: _buildSalesList()),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            SizedBox(
              width: ScreenUtil().screenWidth * 0.25,
              child: customSearchBar(
                context: context,
                hint: 'Cari Sales...',
                onChanged: (query) {
                  ref
                      .read(userListControllerProvider.notifier)
                      .searchUser(query);
                },
              ),
            ),
            const SizedBox(width: 16),

            focusedSalesId != null &&
                    focusedSalesId!.isNotEmpty &&
                    focusedSalesName != null &&
                    focusedSalesName!.isNotEmpty
                ? IconButton(
                  onPressed: () {
                    setState(() {
                      focusedSalesId = null;
                      focusedSalesName = null;
                    });
                  },
                  icon: const Icon(Icons.close),
                  tooltip: 'Batalkan Fokus Sales',
                )
                : const SizedBox.shrink(),

            focusedSalesId != null &&
                    focusedSalesId!.isNotEmpty &&
                    focusedSalesName != null &&
                    focusedSalesName!.isNotEmpty
                ? const SizedBox(width: 16)
                : const SizedBox.shrink(),

            focusedSalesId != null &&
                    focusedSalesId!.isNotEmpty &&
                    focusedSalesName != null &&
                    focusedSalesName!.isNotEmpty
                ? Text(
                  'Sedang Melihat Lokasi: $focusedSalesName',
                  style: bodyStyle,
                )
                : const SizedBox.shrink(),
          ],
        ),
        Row(
          children: [
            IconButton(
              onPressed: () {
                _refreshLiveLocation();
              },
              icon: const Icon(Icons.refresh),
              tooltip: 'Segarkan',
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildMapSection() {
    if (focusedSalesId == null || focusedSalesId!.isEmpty) {
      return Card(
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Center(
            child: Text('Pilih Sales untuk melacak lokasi', style: bodyStyle),
          ),
        ),
      );
    }

    final liveLocationState = ref.watch(
      liveLocationControllerProvider(focusedSalesId!),
    );

    return liveLocationState.when(
      loading:
          () => Card(
            elevation: 4,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Padding(
              padding: EdgeInsets.all(12),
              child: Center(child: Center(child: CircularProgressIndicator())),
            ),
          ),
      data: (liveLocation) {
        return Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: FlutterMap(
                    options: MapOptions(
                      initialCenter:
                          liveLocation == null
                              ? const LatLng(-7.2960801, 112.738667)
                              : LatLng(
                                liveLocation.fields?.latitude?.doubleValue ??
                                    0.0,
                                liveLocation.fields?.longitude?.doubleValue ??
                                    0.0,
                              ),
                      initialZoom: 19,
                    ),
                    children: [
                      TileLayer(
                        urlTemplate:
                            'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                      ),
                      MarkerLayer(
                        markers: [
                          Marker(
                            point: LatLng(
                              liveLocation?.fields?.latitude?.doubleValue ??
                                  0.0,
                              liveLocation?.fields?.longitude?.doubleValue ??
                                  0.0,
                            ),
                            child: IconButton(
                              icon: const Icon(
                                Icons.person_pin_circle,
                                size: 32,
                              ),
                              color: Theme.of(context).colorScheme.primary,
                              onPressed: () {},
                              tooltip:
                                  liveLocation?.updateTime != null
                                      ? 'Terakhir Diperbarui: ${DateFormat().format(DateTime.tryParse(liveLocation!.updateTime!)!.toLocal())}'
                                      : 'Lokasi Tidak Tersedia',
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
      error: (error, _) {
        final exception = error as ApiException;
        return Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.all(12),
            child: Center(
              child: Text(
                exception.statusCode == 404
                    ? 'Lokasi tidak ditemukan untuk Sales ini'
                    : 'Gagal Memuat Lokasi: ${exception.message}',
                style: exception.statusCode == 404 ? bodyStyle : errorStyle,
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildSalesList() {
    final userListState = ref.watch(userListControllerProvider);

    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Daftar Sales',
                        style: subtitleStyle,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Expanded(
                    child: userListState.when(
                      loading: () {
                        return const Center(child: CircularProgressIndicator());
                      },
                      data: (salesList) {
                        if (salesList == null || salesList.isEmpty) {
                          return Center(
                            child: Text(
                              'Data Sales Tidak Ditemukan',
                              style: bodyStyle,
                            ),
                          );
                        }

                        return ListView.separated(
                          itemCount: salesList.length,
                          separatorBuilder:
                              (context, index) => const SizedBox(height: 12),
                          itemBuilder: (context, index) {
                            String salesId = getIdFromName(
                              name: salesList[index].name,
                            );

                            String salesName =
                                salesList[index]
                                    .fields
                                    ?.userName
                                    ?.stringValue ??
                                '';

                            return _createSalesTile(
                              salesId: salesId,
                              salesName: salesName,
                            );
                          },
                        );
                      },
                      error: (error, _) {
                        final exception = error as ApiException;
                        return Center(
                          child: Text(
                            'Gagal Memuat Daftar Sales: ${exception.message}',
                            style: errorStyle,
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _createSalesTile({
    required String salesId,
    required String salesName,
  }) {
    return hoverableCard(
      context: context,
      child: InkWell(
        onTap: () {
          setState(() {
            focusedSalesId = salesId;
            focusedSalesName = salesName;
            ref.watch(liveLocationControllerProvider(salesId));
          });
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [Text(salesName, style: bodyStyle)],
        ),
      ),
    );
  }

  Future<void> _refreshLiveLocation() async {
    if (focusedSalesId == null || focusedSalesId!.isEmpty) {
      return;
    }
    ref.invalidate(liveLocationControllerProvider(focusedSalesId!));
  }
}

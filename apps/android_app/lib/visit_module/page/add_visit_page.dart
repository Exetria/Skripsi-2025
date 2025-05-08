import 'package:android_app/utils/functions.dart';
import 'package:android_app/visit_module/domain/entities/visit_domain.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:latlong2/latlong.dart';

// ignore: must_be_immutable
class AddVisitPage extends StatefulHookConsumerWidget {
  DateTime date;
  List<Value> visitData;

  AddVisitPage({super.key, required this.date, required this.visitData});

  @override
  ConsumerState<AddVisitPage> createState() => _AddVisitPageState();
}

class _AddVisitPageState extends ConsumerState<AddVisitPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(
        context: context,
        title: 'Add Visit',
        showLeftButton: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: FlutterMap(
              options: const MapOptions(
                initialCenter: LatLng(-7.3421267, 112.7363611),
                initialZoom: 15.0,
                interactionOptions: InteractionOptions(
                  flags: InteractiveFlag.all & ~InteractiveFlag.rotate,
                ),
              ),
              children: [
                TileLayer(
                  urlTemplate:
                      'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
                  subdomains: const ['a', 'b', 'c'],
                ),
                MarkerLayer(
                  markers: [
                    Marker(
                      width: 40,
                      height: 40,
                      point: const LatLng(-7.3421267, 112.7363611),
                      child: Icon(
                        Icons.location_pin,
                        color: Theme.of(context).colorScheme.primary,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: ScreenUtil().screenHeight / 3,
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 8.0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text('testdata'),
                      IconButton(
                        icon: const Icon(Icons.delete),
                        onPressed: () {
                          // TODO: Add visit logic here
                        },
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

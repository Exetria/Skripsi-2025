import 'dart:convert';

import 'package:common_components/common_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

GeoJsonPolygonLoader? polygonDataLoader;

enum RegionFilter {
  // Madura
  bangkalan,
  pamekasan,
  sumenep,
  sampang,

  // Surabaya
  surabaya,
  sidoarjo,

  // Gresik
  gresik,
  lamongan,
  tuban,

  // Malang
  malang,

  // Pasuruan
  pasuruan,

  // Mojokerto
  mojokerto,

  // Probolinggo
  probolinggo,
}

class GeoJsonPolygonLoader {
  static final Map<RegionFilter, List<String>> regionFilesName = {
    // Madura
    RegionFilter.bangkalan: ['assets/bangkalan.geojson'],
    RegionFilter.pamekasan: ['assets/pamekasan.geojson'],
    RegionFilter.sumenep: ['assets/sumenep.geojson'],
    RegionFilter.sampang: ['assets/sampang.geojson'],

    // Surabaya
    RegionFilter.surabaya: ['assets/surabaya_kota.geojson'],
    RegionFilter.sidoarjo: ['assets/sidoarjo.geojson'],

    // Gresik
    RegionFilter.gresik: ['assets/gresik.geojson'],
    RegionFilter.lamongan: ['assets/lamongan.geojson'],
    RegionFilter.tuban: ['assets/tuban.geojson'],

    // Malang
    RegionFilter.malang: [
      'assets/malang.geojson',
      'assets/malang_kota.geojson',
    ],

    // Pasuruan
    RegionFilter.pasuruan: [
      'assets/pasuruan.geojson',
      'assets/pasuruan_kota.geojson',
    ],

    // Mojokerto
    RegionFilter.mojokerto: [
      'assets/mojokerto.geojson',
      'assets/mojokerto_kota.geojson',
    ],

    // Probolinggo
    RegionFilter.probolinggo: [
      'assets/probolinggo.geojson',
      'assets/probolinggo_kota.geojson',
    ],
  };

  Map<RegionFilter, List<Polygon>> regionPolygonsMap = {
    // Madura
    RegionFilter.bangkalan: [],
    RegionFilter.pamekasan: [],
    RegionFilter.sumenep: [],
    RegionFilter.sampang: [],

    // Surabaya
    RegionFilter.surabaya: [],
    RegionFilter.sidoarjo: [],

    // Gresik
    RegionFilter.gresik: [],
    RegionFilter.lamongan: [],
    RegionFilter.tuban: [],

    // Malang
    RegionFilter.malang: [],

    // Pasuruan
    RegionFilter.pasuruan: [],

    // Mojokerto
    RegionFilter.mojokerto: [],

    // Probolinggo
    RegionFilter.probolinggo: [],
  };

  GeoJsonPolygonLoader._(this.regionPolygonsMap);

  static Future<GeoJsonPolygonLoader> create({
    required BuildContext context,
  }) async {
    Map<RegionFilter, List<Polygon>> result = {};
    for (final entry in regionFilesName.entries) {
      final RegionFilter region = entry.key;
      final List<String> fileNames = entry.value;

      List<Polygon> polygons = [];
      for (final fileName in fileNames) {
        polygons.addAll(await _loadPolygonsFromGeoJSON(context, fileName));
      }
      result[region] = polygons;
    }
    return GeoJsonPolygonLoader._(result);
  }

  static Future<List<Polygon>> _loadPolygonsFromGeoJSON(
    BuildContext context,
    String assetPath,
  ) async {
    final raw = await rootBundle.loadString(assetPath);
    final Map<String, dynamic> geoData = jsonDecode(raw);

    final allRings = _decodeGeoJsonPolygons(geoData);
    return allRings.map((points) {
      return Polygon(
        points: points,
        color: primaryColor.withAlpha(30),
        borderColor: textColor,
        borderStrokeWidth: 0.5,
      );
    }).toList();
  }

  static List<List<LatLng>> _decodeGeoJsonPolygons(
    Map<String, dynamic> geoJson,
  ) {
    final features = geoJson['features'] as List<dynamic>? ?? [];
    final List<List<LatLng>> allPolygons = [];

    for (final feature in features) {
      final geometry = feature['geometry'] as Map<String, dynamic>;
      final type = geometry['type'] as String;
      final coords = geometry['coordinates'] as List<dynamic>;

      if (type == 'Polygon') {
        // coords: [ [ [lon, lat], … ] ]
        final outer = coords.first as List<dynamic>;
        allPolygons.add(_toLatLngList(outer));
      } else if (type == 'MultiPolygon') {
        // coords: [ [ [ [lon, lat], … ] ], … ]
        for (final poly in coords) {
          final rings = poly as List<dynamic>;
          final outer = rings.first as List<dynamic>;
          allPolygons.add(_toLatLngList(outer));
        }
      }
      // (you could handle other types here if needed)
    }

    return allPolygons;
  }

  static List<LatLng> _toLatLngList(List<dynamic> ring) {
    return ring.map<LatLng>((pair) {
      final lon = (pair[0] as num).toDouble();
      final lat = (pair[1] as num).toDouble();
      return LatLng(lat, lon);
    }).toList();
  }

  List<Polygon> getPolygonsForRegion(RegionFilter region) {
    return regionPolygonsMap[region] ?? [];
  }
}

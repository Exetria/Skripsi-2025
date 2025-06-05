import 'package:common_components/common_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:intl/intl.dart';
import 'package:latlong2/latlong.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:windows_app/report_module/domain/entities/attendance_domain.dart';
import 'package:windows_app/report_module/domain/repository/attendance_list_repository.dart';

part 'attendance_list_controller.g.dart';

@Riverpod(keepAlive: true)
class AttendanceListController extends _$AttendanceListController {
  List<AttendanceDomain>? _attendanceList;

  @override
  FutureOr<List<AttendanceDomain>?> build() async {
    final repository = ref.watch(AttendanceListRepositoryProvider);
    state = const AsyncLoading();
    final result = await repository.getAttendanceList();
    state = await result.fold(
      (l) => AsyncError(l, StackTrace.empty),
      (r) => AsyncData(r),
    );
    _attendanceList = state.value;
    return state.value;
  }

  void sortOrderByDate() {
    if (_attendanceList == null) return;

    _attendanceList?.sort((a, b) {
      final dateA = DateTime.tryParse(a.createTime ?? '');
      final dateB = DateTime.tryParse(b.createTime ?? '');

      if (dateA == null && dateB == null) return 0;
      if (dateA == null) return 1;
      if (dateB == null) return -1;

      return dateB.compareTo(dateA);
    });
  }

  void filterAttendanceByDate({required DateTime targetDate}) {
    if (_attendanceList == null) return;

    final normalizedTargetDate = DateTime(
      targetDate.year,
      targetDate.month,
      targetDate.day,
    );

    final filteredList =
        _attendanceList?.where((order) {
          final parsed = DateTime.tryParse(order.createTime ?? '');
          if (parsed == null) return false;

          final orderDate = DateTime(parsed.year, parsed.month, parsed.day);
          return orderDate == normalizedTargetDate;
        }).toList() ??
        [];

    state = AsyncData(filteredList);
  }

  void resetSearch() {
    if (_attendanceList == null) {
      return;
    }

    state = AsyncData(_attendanceList);
  }

  AttendanceDomain? getSalesAttendance({
    required String salesId,
    required DateTime date,
  }) {
    for (var attendance in _attendanceList!) {
      if (salesId == attendance.fields?.createdBy?.stringValue) {
        return attendance;
      }
    }
    return null;
  }

  List<Marker> getSalesAttendanceMarkers({
    required String salesId,
    required String salesName,
    required DateTime date,
    required Color checkInColor,
    required Color checkOutColor,
  }) {
    List<Marker> markers = [];

    if (_attendanceList == null) {
      return markers;
    }

    AttendanceDomain? salesAttendance;

    // Get sales' attendance
    for (var attendance in _attendanceList!) {
      if (_generateDocumentId(salesId: salesId, date: date) ==
          getIdFromName(name: attendance.name)) {
        salesAttendance = attendance;
        break;
      }
    }

    // If not found, return empty list
    if (salesAttendance == null) {
      return markers;
    }

    final checkInLocation =
        salesAttendance.fields?.checkinLocation?.mapValue?.fields;
    double? checkInLat = checkInLocation?.latitude?.doubleValue;
    double? checkInLong = checkInLocation?.longitude?.doubleValue;
    double? checkInAcc = checkInLocation?.accuracy?.doubleValue;
    DateTime? checkInTime = DateTime.tryParse(
      salesAttendance.fields?.checkinTime?.timestampValue ?? '',
    );

    final checkOutLocation =
        salesAttendance.fields?.checkoutLocation?.mapValue?.fields;
    double? checkOutLat = checkOutLocation?.latitude?.doubleValue;
    double? checkOutLong = checkOutLocation?.longitude?.doubleValue;
    double? checkOutAcc = checkOutLocation?.accuracy?.doubleValue;
    DateTime? checkOutTime = DateTime.tryParse(
      salesAttendance.fields?.checkoutTime?.timestampValue ?? '',
    );

    // Add check-in marker
    if (checkInLat != null &&
        checkInLong != null &&
        checkInAcc != null &&
        checkInTime != null) {
      markers.add(
        Marker(
          width: 40,
          height: 40,
          point: LatLng(checkInLat, checkInLong),
          child: IconButton(
            onPressed: () {},
            icon: Icon(Icons.login, color: checkInColor, size: 32),
            tooltip:
                '$salesName\nCheck-in: ${DateFormat('HH:mm:ss').format(checkInTime.toLocal())}',
          ),
        ),
      );
    }

    // Add check-out marker
    if (checkOutLat != null &&
        checkOutLong != null &&
        checkOutAcc != null &&
        checkOutTime != null) {
      markers.add(
        Marker(
          width: 40,
          height: 40,
          point: LatLng(checkOutLat, checkOutLong),
          child: IconButton(
            onPressed: () {},
            icon: Icon(Icons.logout, color: checkOutColor, size: 32),
            tooltip:
                '$salesName\nCheck-out: ${DateFormat('HH:mm:ss').format(checkOutTime.toLocal())}',
          ),
        ),
      );
    }

    return markers;
  }

  String getAttendanceStatus({
    required String salesId,
    required DateTime date,
  }) {
    String status = 'Belum Check In';

    if (_attendanceList == null) {
      return status;
    }

    AttendanceDomain? salesAttendance;

    // Get sales' attendance
    for (var attendance in _attendanceList!) {
      if (_generateDocumentId(salesId: salesId, date: date) ==
          getIdFromName(name: attendance.name)) {
        salesAttendance = attendance;
        break;
      }
    }

    // If not found, return 'Tidak Hadir'
    if (salesAttendance == null) {
      return status;
    }

    if (salesAttendance.fields?.checkinLocation?.mapValue?.fields != null &&
        salesAttendance.fields?.checkinTime?.timestampValue != null) {
      status = 'Belum Check Out';
    }

    if (salesAttendance.fields?.checkoutLocation?.mapValue?.fields != null &&
        salesAttendance.fields?.checkoutTime?.timestampValue != null) {
      status = 'Selesai Absen';
    }

    return status;
  }

  String _generateDocumentId({
    required String salesId,
    required DateTime date,
  }) {
    final formattedDate =
        '${date.day.toString().padLeft(2, '0')}${date.month.toString().padLeft(2, '0')}${date.year}';

    return '$salesId-$formattedDate';
  }
}

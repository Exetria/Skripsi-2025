import 'dart:io';

import 'package:bitsdojo_window/bitsdojo_window.dart';
import 'package:common_components/common_components.dart';
import 'package:excel/excel.dart' as xlsx;
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:windows_app/order_module/domain/entities/order_domain.dart';

// COLUMN COUNT
int getCrossAxisCount(BoxConstraints constraints) {
  final width = constraints.maxWidth;

  if (width > 2000) {
    return 5;
  } else if (width > 1500) {
    return 4;
  } else if (width > 1000) {
    return 3;
  } else if (width > 500) {
    return 2;
  } else {
    return 1;
  }
}

// GRID CHILD ASPECT RATIO
double getChildAspectRatio(BoxConstraints constraints) {
  final width = constraints.maxWidth;

  if (width > 2000) {
    return 2.2;
  } else if (width > 1000) {
    return 2.0;
  } else if (width > 700) {
    return 1.8;
  } else {
    return 1.5;
  }
}

// CUSTOM BOX DECORATION
BoxDecoration itemCardDecoration(
  BuildContext context, {
  bool isSelected = false,
  bool isHovered = false,
  bool shadow = true,
}) {
  final cs = Theme.of(context).colorScheme;
  return BoxDecoration(
    color: isHovered ? cs.surface.withAlpha(245) : cs.surface,
    borderRadius: BorderRadius.circular(12),
    border: Border.all(
      color:
          isSelected
              ? cs.primary
              : (isHovered ? cs.primary.withAlpha(100) : cs.outline),
      width: 1,
    ),
    boxShadow:
        shadow
            ? [
              BoxShadow(
                color: cs.shadow,
                blurRadius: isHovered ? 12 : 8,
                offset: Offset(0, isHovered ? 8 : 6),
              ),
            ]
            : null,
  );
}

// ITEM CARD
Widget itemCard({
  required BuildContext context,
  required IconData icon,
  required String title,
  required String subtitle,
  String? secondarySubtitle,
  String? tertiarySubtitle,
  String? leftBottomText,
  Color? leftBottomTextColor,
  String? secondaryLeftBottomText,
  Color? secondaryLeftBottomTextColor,
  String? rightBottomText,
  Color? rightBottomTextColor,
  String? secondaryRightBottomText,
  Color? secondaryRightBottomTextColor,
  required VoidCallback? onTap,
}) {
  final cs = Theme.of(context).colorScheme;

  return hoverableCard(
    context: context,
    child: InkWell(
      borderRadius: BorderRadius.circular(12),
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, size: 32, color: cs.primary),
          const SizedBox(height: 8),
          Text(
            title,
            style: subtitleStyle,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 4),
          Text(subtitle, style: captionStyle, overflow: TextOverflow.ellipsis),
          secondarySubtitle != null
              ? const SizedBox(height: 4)
              : const SizedBox.shrink(),
          secondarySubtitle != null
              ? Text(secondarySubtitle, style: captionStyle)
              : const SizedBox.shrink(),
          tertiarySubtitle != null
              ? const SizedBox(height: 4)
              : const SizedBox.shrink(),
          tertiarySubtitle != null
              ? Text(tertiarySubtitle, style: captionStyle)
              : const SizedBox.shrink(),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  leftBottomText != null
                      ? Text(
                        leftBottomText,
                        style: bodyStyle.copyWith(
                          color: leftBottomTextColor ?? cs.onSurface,
                        ),
                      )
                      : const SizedBox.shrink(),
                  secondaryLeftBottomText != null
                      ? Text(
                        secondaryLeftBottomText,
                        style: bodyStyle.copyWith(
                          color: secondaryLeftBottomTextColor ?? cs.onSurface,
                        ),
                      )
                      : const SizedBox.shrink(),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  rightBottomText != null
                      ? Text(
                        rightBottomText,
                        style: bodyStyle.copyWith(
                          color: rightBottomTextColor ?? cs.onSurface,
                        ),
                      )
                      : const SizedBox.shrink(),
                  secondaryRightBottomText != null
                      ? Text(
                        secondaryRightBottomText,
                        style: bodyStyle.copyWith(
                          color: secondaryRightBottomTextColor ?? cs.onSurface,
                        ),
                      )
                      : const SizedBox.shrink(),
                ],
              ),
            ],
          ),
        ],
      ),
    ),
  );
}

// HOVERABLE ITEM CARD
Widget hoverableCard({
  required BuildContext context,
  bool shadow = true,
  required Widget child,
}) {
  bool isHovered = false;
  return StatefulBuilder(
    builder: (context, setState) {
      return MouseRegion(
        onEnter: (_) => setState(() => isHovered = true),
        onExit: (_) => setState(() => isHovered = false),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 200),
          transform:
              isHovered
                  ? Matrix4.translationValues(0, -6, 0)
                  : Matrix4.identity(),
          decoration: itemCardDecoration(
            context,
            isHovered: isHovered,
            shadow: shadow,
          ),
          padding: const EdgeInsets.all(12),
          child: child,
        ),
      );
    },
  );
}

// CREATE PRODUCT DATA LIST
List<Map<String, dynamic>> createProductDataList({
  required List<Value> products,
}) {
  List<Map<String, dynamic>> result = [];
  for (var product in products) {
    Map<String, dynamic> newMap = {
      'mapValue': {
        'fields': {
          'product_id': {
            'stringValue':
                product.mapValue?.fields?.productId?.stringValue ?? '',
          },
          'quantity': {
            'integerValue':
                product.mapValue?.fields?.quantity?.integerValue ?? '0',
          },
          'unit_price': {
            'integerValue':
                product.mapValue?.fields?.unitPrice?.integerValue ?? '',
          },
          'total_price': {
            'integerValue':
                product.mapValue?.fields?.totalPrice?.integerValue ?? '',
          },
        },
      },
    };

    // Add discount fields conditionally (fixed amount or percentage)
    if (product.mapValue?.fields?.discountAmount?.integerValue != null) {
      newMap['mapValue']['fields']['discount_amount'] = {
        'integerValue':
            product.mapValue?.fields?.discountAmount?.integerValue ?? '0',
      };
    } else if (product.mapValue?.fields?.discountPercentage?.doubleValue !=
        null) {
      newMap['mapValue']['fields']['discount_percentage'] = {
        'doubleValue':
            product.mapValue?.fields?.discountPercentage?.doubleValue
                .toString() ??
            '0',
      };
    }

    // Add product data to list
    result.add(newMap);
  }
  return result;
}

// GENERATE EXCEL FILE
Future<void> generateExcelFile({
  required Map<String, List<List<dynamic>>> sheetsData,
  String fileName = 'report.xlsx',
}) async {
  // Create a new Excel workbook
  final xlsx.Excel book = xlsx.Excel.createExcel();

  // Rename first sheet so it'll be renamed and remove "Sheet1" (FAILED)
  // final defaultSheetName = excelFile.getDefaultSheet();
  // if (defaultSheetName != null && !sheetsData.containsKey(defaultSheetName)) {
  //   excelFile.rename(defaultSheetName, sheetsData.keys.toList().first);
  // }

  // Populate each sheet
  for (final entry in sheetsData.entries) {
    final sheetName = entry.key;
    final data = entry.value;

    // Access (auto-creates) the sheet
    final xlsx.Sheet sheet = book[sheetName];

    // Fill rows and columns
    for (var rowIndex = 0; rowIndex < data.length; rowIndex++) {
      for (var colIndex = 0; colIndex < data[rowIndex].length; colIndex++) {
        sheet
            .cell(
              xlsx.CellIndex.indexByColumnRow(
                columnIndex: colIndex,
                rowIndex: rowIndex,
              ),
            )
            .value = data[rowIndex][colIndex];
      }
    }
  }

  // Encode to bytes
  final bytes = book.encode();
  if (bytes == null) {
    return;
  }

  // Determine save directory (Downloads on desktop, fallback to app support)
  Directory? dir = await getDownloadsDirectory();
  dir ??= await getApplicationSupportDirectory();

  // Ensure directory exists
  if (!await dir.exists()) {
    await dir.create(recursive: true);
  }

  final path = '${dir.path}/$fileName.xlsx';
  final File file = File(path);

  // Ensure file (and parent directories) exist before writing
  await file.create(recursive: true);
  await file.writeAsBytes(bytes, flush: true);
}

// EXTENSION METHOD FOR DATE RANGE
extension DateTimeRangeExtension on DateTimeRange {
  /// Returns a list of DateTimes from start to end, inclusive, stepping by one day.
  List<DateTime> toDateTimeList() {
    final days = end.difference(start).inDays;
    return List.generate(
      days + 1,
      (i) => DateTime(start.year, start.month, start.day + i),
    );
  }
}

// APPLY WINDOW SETTINGS
void applyWindowSettings() {
  doWhenWindowReady(() {
    const initialSize = Size(1380, 960);

    appWindow.minSize = initialSize;
    appWindow.size = initialSize;
    appWindow.alignment = Alignment.center;
    appWindow.show();

    appWindow.minSize = initialSize;
  });
}

void maximizeWindow() {
  doWhenWindowReady(() {
    appWindow.maximize();
  });
}

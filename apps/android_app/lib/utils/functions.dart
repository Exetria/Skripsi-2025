import 'dart:async';
import 'dart:io';

import 'package:android_app/utils/widget_settings.dart';
import 'package:common_components/common_components.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:geolocator/geolocator.dart';
import 'package:image/image.dart' as imaglib;
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:url_launcher/url_launcher.dart';

// APP BAR
PreferredSizeWidget customAppBar({
  required BuildContext context,
  required String title,
  String? subtitle,
  bool showLeftButton = false,
  Widget? leftButtonWidget,
  VoidCallback? onLeftPressed,
  IconData? rightButtonIcon,
  VoidCallback? onRightPressed,
}) {
  return PreferredSize(
    preferredSize: Size.fromHeight(subtitle != null ? 80.h : 56.h),
    child: Container(
      padding: EdgeInsets.only(left: 16.w, right: 16.w, top: 32.h, bottom: 8.h),
      decoration: regularBoxDecoration(context).copyWith(
        color:
            Theme.of(context).brightness == Brightness.light
                ? tertiaryColor
                : darkModeTertiaryColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(12.r),
          bottomRight: Radius.circular(12.r),
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Left icon / back button
          SizedBox(
            width: 56.w,
            child: Align(
              alignment: Alignment.centerLeft,
              child:
                  showLeftButton
                      ? (leftButtonWidget ??
                          Builder(
                            builder:
                                (context) => IconButton(
                                  icon: Icon(Icons.arrow_back, size: 24.sp),
                                  onPressed:
                                      onLeftPressed ??
                                      () => Navigator.of(context).maybePop(),
                                ),
                          ))
                      : const SizedBox.shrink(),
            ),
          ),

          // Title + subtitle
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(title, style: sectionTitleStyle),
                if (subtitle != null) Text(subtitle, style: captionStyle),
              ],
            ),
          ),

          // Right icon
          SizedBox(
            width: 56.w,
            child: Align(
              alignment: Alignment.centerRight,
              child:
                  rightButtonIcon != null
                      ? IconButton(
                        icon: Icon(rightButtonIcon, size: 24.sp),
                        onPressed: onRightPressed,
                      )
                      : const SizedBox.shrink(),
            ),
          ),
        ],
      ),
    ),
  );
}

// CUSTOM LIST ITEM
InkWell customListItem({
  required BuildContext context,
  required VoidCallback? onTap,
  required IconData leadIcon,
  required String title,
  required String subtitle,
  required IconData trailIcon,
}) {
  return InkWell(
    onTap: onTap,
    child: Container(
      padding: EdgeInsets.all(12.r),
      decoration: regularBoxDecoration(context),
      child: Row(
        children: [
          Container(
            width: 48.w,
            height: 48.h,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.secondary.withAlpha(50),
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: Icon(
              leadIcon,
              color: Theme.of(context).colorScheme.secondary,
              size: 24.sp,
            ),
          ),
          SizedBox(width: 12.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: bodyStyle),
                SizedBox(height: 4.h),
                Text(subtitle, style: captionStyle),
              ],
            ),
          ),
          Icon(
            trailIcon,
            size: 16.sp,
            color: Theme.of(context).colorScheme.onSurface,
          ),
        ],
      ),
    ),
  );
}

// CUSTOM SELECTOR LIST ITEM
InkWell customSelectorListItem({
  required BuildContext context,
  required VoidCallback? onTap,
  required String title,
  required String subtitle,
  required IconData trailIcon,
}) {
  return InkWell(
    onTap: onTap,
    child: Container(
      padding: EdgeInsets.all(12.r),
      decoration: regularBoxDecoration(context),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: captionStyle),
                SizedBox(height: 4.h),
                Text(subtitle, style: footnoteStyle),
              ],
            ),
          ),
          SizedBox(width: 4.w),
          Icon(
            trailIcon,
            size: 12.sp,
            color: Theme.of(context).colorScheme.onSurface,
          ),
        ],
      ),
    ),
  );
}

// INFO CARD
Widget infoCard({
  required BuildContext context,
  required String title,
  String? imageurl,
  required List<String> values,
  required List<IconData> icons,
}) {
  if (values.length != icons.length) {
    return const Center(child: Text('Daftar Atribut Tidak Sesuai'));
  }

  List<Widget> cardAttribute = [];
  for (int i = 0; i < values.length; i++) {
    final val = values[i];
    final icon = icons[i];

    // Add row
    cardAttribute.add(
      Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(icon, size: 20.sp, color: primaryColor),
          SizedBox(width: 8.w),
          Expanded(child: Text(val, style: bodyStyle)),
        ],
      ),
    );

    // Don't add spacer if it's the last item
    if (i != values.length - 1) {
      cardAttribute.add(SizedBox(height: 8.h));
    }
  }

  return Container(
    width: double.infinity,
    padding: EdgeInsets.all(16.r),
    decoration: regularBoxDecoration(context),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Image
        imageurl != null && imageurl != ''
            ? Center(
              child: SizedBox(
                height: 170.h,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16.r),
                  child: AspectRatio(
                    aspectRatio: 16 / 9,
                    child: Image.network(
                      imageurl,
                      width: double.infinity,
                      fit: BoxFit.cover,
                      errorBuilder:
                          (_, __, ___) => Container(
                            color: dividerColor,
                            child: Icon(
                              Icons.error,
                              color: errorColor,
                              size: 40.sp,
                            ),
                          ),
                      loadingBuilder: (_, child, progress) {
                        if (progress == null) return child;
                        return Center(
                          child: CircularProgressIndicator(
                            value:
                                progress.expectedTotalBytes != null
                                    ? progress.cumulativeBytesLoaded /
                                        progress.expectedTotalBytes!
                                    : null,
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ),
            )
            : const SizedBox.shrink(),
        imageurl != null && imageurl != ''
            ? SizedBox(height: 8.h)
            : const SizedBox.shrink(),

        // Title
        Text(title, style: subtitleStyle),
        SizedBox(height: 8.h),

        ...cardAttribute,
      ],
    ),
  );
}

// PRODUCT CARD
Widget productCard({
  required BuildContext context,
  required String productName,
  required String quantity,
  required num price,
  required VoidCallback onTap,
  required VoidCallback onDelete,
  bool editable = true,
}) {
  return GestureDetector(
    onTap: editable ? onTap : null,
    behavior: HitTestBehavior.opaque,
    child: Container(
      margin: EdgeInsets.only(bottom: 12.h),
      padding: EdgeInsets.all(12.r),
      decoration: regularBoxDecoration(context),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Item name and quantity
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(productName, style: bodyStyle),
              SizedBox(height: 4.h),
              Text(rupiahFormat(price), style: bodyStyle),
            ],
          ),

          // Item total price & delete button
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text('Qty: $quantity', style: captionStyle),
              SizedBox(height: 8.h),
              editable
                  ? GestureDetector(
                    onTap: editable ? onDelete : null,
                    behavior: HitTestBehavior.translucent,
                    child: Icon(
                      Icons.delete,
                      size: 24.sp,
                      color: Theme.of(context).colorScheme.error,
                    ),
                  )
                  : const SizedBox.shrink(),
            ],
          ),
        ],
      ),
    ),
  );
}

// INPUT ROW
Widget buildInputRow({
  required TextEditingController controller,
  required String label,
  List<TextInputFormatter>? inputFormatters,
  String? Function(String?)? validator,
  String? prefix,
  String? suffix,
  int? maxLines = 1,
  bool enabled = true,
}) {
  return Padding(
    padding: EdgeInsets.only(bottom: 16.h),
    child: TextFormField(
      enabled: enabled,
      controller: controller,
      inputFormatters: inputFormatters,
      validator: validator,
      maxLines: maxLines,
      decoration: InputDecoration(
        labelText: label,
        prefixText: prefix,
        suffixText: suffix,
        alignLabelWithHint: true,
      ),
    ),
  );
}

// SCROLLABLE INFO TEXT
Widget refreshableInfoWidget({
  required Future<void> Function() refreshFunction,
  required Widget content,
}) {
  return RefreshIndicator(
    onRefresh: refreshFunction,
    child: LayoutBuilder(
      builder: (context, constraints) {
        return SingleChildScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraints.maxHeight),
            child: Center(child: content),
          ),
        );
      },
    ),
  );
}

// PICK IMAGE
Future<File?> pickImage({
  required BuildContext context,
  bool fromGallery = false,
}) async {
  try {
    final imagePicker = ImagePicker();

    Future<Position> futureLocation = getCurrentPosition();

    final image = await imagePicker.pickImage(
      source: fromGallery ? ImageSource.gallery : ImageSource.camera,
    );

    final currentLocation = await futureLocation;

    if (image == null) {
      return null;
    }

    final result = await drawWatermark(
      imageFile: File(image.path),
      location: currentLocation,
    );

    return result;
  } on ApiException catch (apiException) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(apiException.message),
        behavior: SnackBarBehavior.floating,
        duration: const Duration(seconds: 2),
      ),
    );
    return null;
  } catch (e) {
    return null;
  }
}

// DRAW WATERMARK
Future<File?> drawWatermark({
  required File imageFile,
  required Position location,
}) async {
  String appNameWatermark = 'Salesku App';
  String dateWatermark = DateTime.now().toString().split('.').first;
  String locationWatermark =
      '${location.latitude.toStringAsFixed(6)}, ${location.longitude.toStringAsFixed(6)}';

  if (!await imageFile.exists()) return null;

  final originalImage = await compute(_decodeImageFromFile, imageFile.path);
  if (originalImage == null) return null;

  final imaglib.BitmapFont font = imaglib.arial48;
  final lineHeight = font.lineHeight;
  final int centerX = (originalImage.width / 2).round();
  final int startY = (originalImage.height * 0.9).round();

  // Estimate character width (arial48 is roughly 24px per char)
  int charWidth = 24;

  // List of lines
  final lines = [appNameWatermark, dateWatermark, locationWatermark];

  // Draw each line centered
  for (int i = 0; i < lines.length; i++) {
    final line = lines[i];
    final linePixelWidth = line.length * charWidth;
    final lineX = (centerX - (linePixelWidth / 2)).round().clamp(
      0,
      originalImage.width - 1,
    );
    final lineY = (startY + (i * lineHeight)).clamp(
      0,
      originalImage.height - 1,
    );

    imaglib.drawString(originalImage, font: font, x: lineX, y: lineY, line);
  }

  // Save to temp file
  final tempDir = await getTemporaryDirectory();
  final output = File(
    '${tempDir.path}/watermarked_${DateTime.now().millisecondsSinceEpoch}.jpg',
  );

  await output.writeAsBytes(imaglib.encodeJpg(originalImage));

  return output;
}

// SEPARATE IMAGE DECODER (Different thread)
imaglib.Image? _decodeImageFromFile(String path) {
  final file = File(path);
  if (!file.existsSync()) return null;
  final bytes = file.readAsBytesSync();
  return imaglib.decodeImage(bytes);
}

// GET CURRENT POSITION
Future<Position> getCurrentPosition() async {
  bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
  if (!serviceEnabled) {
    throw ApiException(statusCode: -1, message: 'Lokasi Perangkat Tidak Aktif');
  }

  LocationPermission permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      throw ApiException(statusCode: -1, message: 'Izin Lokasi Ditolak');
    }
  }

  if (permission == LocationPermission.deniedForever) {
    throw ApiException(
      statusCode: -1,
      message: 'Nyalakan Izin Lokasi Terlebih Dahulu',
    );
  }

  return await Geolocator.getCurrentPosition(
    locationSettings: const LocationSettings(
      accuracy: LocationAccuracy.bestForNavigation,
      distanceFilter: 0,
    ),
  );
}

// NAVIGATE TO GOOGLE MAPS
Future<void> launchGoogleMapNavigation({
  required BuildContext context,
  required double latitude,
  required double longitude,
}) async {
  final Uri googleMapsUri = Uri.parse(
    'https://www.google.com/maps/search/?api=1&query=$latitude,$longitude',
  );

  try {
    await launchUrl(googleMapsUri, mode: LaunchMode.externalApplication);
  } catch (e) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(const SnackBar(content: Text('Could not open map')));
  }
}

Future<void> launchGoogleMapsRouteNavigation({
  required BuildContext context,
  required List<(double, double)> waypoints,
  required (double, double) destination,
}) async {
  if (waypoints.isEmpty) return;

  final destinationLatLng = '${destination.$1},${destination.$2}';

  // Format waypoints: "lat1,lng1|lat2,lng2"
  final waypointString = waypoints
      .map((point) => '${point.$1},${point.$2}')
      .join('|');

  final googleMapsUri = Uri.parse(
    'https://www.google.com/maps/dir/?api=1'
    '&destination=$destinationLatLng'
    '&waypoints=$waypointString'
    '&travelmode=driving',
  );

  try {
    await launchUrl(googleMapsUri, mode: LaunchMode.externalApplication);
  } catch (e) {
    ScaffoldMessenger.of(
      context,
    ).showSnackBar(const SnackBar(content: Text('Could not open map')));
  }
}

void addCallBackAfterBuild({required VoidCallback callback}) {
  WidgetsBinding.instance.addPostFrameCallback((_) {
    callback();
  });
}

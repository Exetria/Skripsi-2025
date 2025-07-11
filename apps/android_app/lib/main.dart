import 'dart:convert';

import 'package:android_app/live_location_module/page/controller/live_location_controller.dart';
import 'package:android_app/splash_screen.dart';
import 'package:android_app/utils/connection_status_controller.dart';
import 'package:android_app/utils/foreground_notification_listener.dart';
import 'package:android_app/utils/theme_controller.dart';
import 'package:common_components/common_components.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Init .env
  await dotenv.load(fileName: '.env');

  // Init Firebase
  await Firebase.initializeApp();

  // Handle notification flag (to prevent double announcement dialog)
  bool isNotificationHandled = false;

  // Handle notification when app is in background
  FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
    if (isNotificationHandled) return;
    isNotificationHandled = true;

    final title = message.notification?.title ?? '';
    final body = message.notification?.body ?? '';

    onNotificationTap(
      json.encode({
        'title': title,
        'body': body,
        'date': DateTime.now().toIso8601String(),
      }),
    );
  });

  // Handle notification when app is terminated
  addCallBackAfterBuild(
    callback: () async {
      RemoteMessage? initialMessage =
          await FirebaseMessaging.instance.getInitialMessage();
      if (initialMessage != null) {
        if (isNotificationHandled) return;
        isNotificationHandled = true;

        final title = initialMessage.notification?.title ?? '';
        final body = initialMessage.notification?.body ?? '';

        onNotificationTap(
          json.encode({
            'title': title,
            'body': body,
            'date': DateTime.now().toIso8601String(),
          }),
        );
      }
    },
  );

  // Init foreground notification listener
  initializeLocalNotifications();
  listenToForegroundFCM();

  // Get previous theme setting
  String? themeString = await getDataFromSp(key: 'themeMode');
  final initialThemeMode =
      themeString == '1' ? ThemeMode.dark : ThemeMode.light;

  runApp(
    ProviderScope(
      overrides: [themeModeProvider.overrideWith((ref) => initialThemeMode)],
      child: const Main(),
    ),
  );
}

class Main extends StatefulHookConsumerWidget {
  const Main({super.key});

  @override
  ConsumerState<Main> createState() => _MainApp();
}

class _MainApp extends ConsumerState<Main> {
  @override
  void initState() {
    super.initState();
    addCallBackAfterBuild(
      callback: () {
        startConnectionChecker(ref);
        startLiveLocationUpdater(ref);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    final themeMode = ref.watch(themeModeProvider);

    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        final lightTheme = ThemeData(
          useMaterial3: true,
          brightness: Brightness.light,

          scaffoldBackgroundColor: backgroundColor,

          colorScheme: ColorScheme.light(
            primary: primaryColor,
            onPrimary: invertedTextColor,

            secondary: secondaryColor,
            onSecondary: invertedTextColor,

            surface: fillColor,
            onSurface: textColor,

            // Success Color
            tertiary: successColor,
            onTertiary: invertedTextColor,

            // Warning Color
            tertiaryContainer: warningColor,
            onTertiaryContainer: invertedTextColor,

            // Error Color
            error: errorColor,
            onError: invertedTextColor,

            // Unselected Color
            outlineVariant: unselectedItemColor,

            outline: dividerColor,
            shadow: dividerColor,
          ),

          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
              // Content alignment
              alignment: Alignment.center,

              // Background color
              backgroundColor: WidgetStateProperty.resolveWith<Color?>((
                states,
              ) {
                if (states.contains(WidgetState.disabled)) {
                  return unselectedItemColor;
                }
                return primaryColor;
              }),

              // Text & icon color
              foregroundColor: WidgetStateProperty.resolveWith<Color?>((
                states,
              ) {
                if (states.contains(WidgetState.disabled)) {
                  return textColor;
                }
                return invertedTextColor;
              }),

              // Overlay color
              overlayColor: WidgetStateProperty.resolveWith<Color?>((states) {
                if (states.contains(WidgetState.pressed)) {
                  return accentColor.withAlpha(60);
                }
                if (states.contains(WidgetState.hovered)) {
                  return accentColor.withAlpha(30);
                }
                return null;
              }),

              // Padding
              padding: WidgetStateProperty.all(
                const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
              ),

              // Button shape
              shape: WidgetStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.r),
                ),
              ),
            ),
          ),

          inputDecorationTheme: InputDecorationTheme(
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.r),
              borderSide: BorderSide(color: dividerColor, width: 2),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.r),
              borderSide: BorderSide(color: dividerColor, width: 2),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.r),
              borderSide: BorderSide(color: dividerColor, width: 2),
            ),
          ),

          expansionTileTheme: ExpansionTileThemeData(
            childrenPadding: EdgeInsets.symmetric(horizontal: 8.w),
            backgroundColor: fillColor,
            collapsedBackgroundColor: fillColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.r),
              side: BorderSide(color: primaryColor, width: 2),
            ),
            collapsedShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.r),
              side: BorderSide(color: dividerColor, width: 2),
            ),
          ),

          textTheme: GoogleFonts.montserratTextTheme().apply(
            bodyColor: textColor,
            displayColor: textColor,
          ),
        );

        final darkTheme = ThemeData(
          useMaterial3: true,
          brightness: Brightness.dark,

          scaffoldBackgroundColor: darkModeBackgroundColor,

          colorScheme: ColorScheme.dark(
            primary: darkModePrimaryColor,
            onPrimary: darkModeInvertedTextColor,

            secondary: darkModeSecondaryColor,
            onSecondary: darkModeInvertedTextColor,

            surface: darkModeFillColor,
            onSurface: darkModeTextColor,

            // Success Color
            tertiary: darkModeSuccessColor,
            onTertiary: darkModeInvertedTextColor,

            // Warning Color
            tertiaryContainer: darkModeWarningColor,
            onTertiaryContainer: darkModeInvertedTextColor,

            // Error Color
            error: darkModeErrorColor,
            onError: darkModeInvertedTextColor,

            // Unselected Color
            outlineVariant: darkModeUnselectedItemColor,

            outline: darkModeDividerColor,
            shadow: Colors.black,
          ),

          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
              // Content alignment
              alignment: Alignment.center,

              // Background color
              backgroundColor: WidgetStateProperty.resolveWith<Color?>((
                states,
              ) {
                if (states.contains(WidgetState.disabled)) {
                  return darkModeUnselectedItemColor;
                }
                return darkModePrimaryColor;
              }),

              // Text & icon color
              foregroundColor: WidgetStateProperty.resolveWith<Color?>((
                states,
              ) {
                if (states.contains(WidgetState.disabled)) {
                  return darkModeTextColor;
                }
                return darkModeInvertedTextColor;
              }),

              // Overlay color
              overlayColor: WidgetStateProperty.resolveWith<Color?>((states) {
                if (states.contains(WidgetState.pressed)) {
                  return darkModeAccentColor.withAlpha(60);
                }
                if (states.contains(WidgetState.hovered)) {
                  return darkModeAccentColor.withAlpha(30);
                }
                return null;
              }),

              // Padding
              padding: WidgetStateProperty.all(
                const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
              ),

              // Button shape
              shape: WidgetStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.r),
                ),
              ),
            ),
          ),

          inputDecorationTheme: InputDecorationTheme(
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.r),
              borderSide: BorderSide(color: darkModeDividerColor, width: 2),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.r),
              borderSide: BorderSide(color: darkModeDividerColor, width: 2),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12.r),
              borderSide: BorderSide(color: darkModeDividerColor, width: 2),
            ),
          ),

          expansionTileTheme: ExpansionTileThemeData(
            childrenPadding: EdgeInsets.symmetric(horizontal: 8.w),
            backgroundColor: darkModeFillColor,
            collapsedBackgroundColor: darkModeFillColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.r),
              side: BorderSide(color: darkModePrimaryColor, width: 2),
            ),
            collapsedShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.r),
              side: BorderSide(color: darkModeDividerColor, width: 2),
            ),
          ),

          textTheme: GoogleFonts.montserratTextTheme().apply(
            bodyColor: darkModeTextColor,
            displayColor: darkModeTextColor,
          ),
        );

        return MaterialApp(
          navigatorKey: navigatorKey,
          debugShowCheckedModeBanner: false,
          theme: lightTheme,
          darkTheme: darkTheme,
          themeMode: themeMode,
          home: child,
        );
      },
      child: const SplashScreen(),
    );
  }
}

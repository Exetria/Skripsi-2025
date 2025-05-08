import 'package:android_app/splash_screen.dart';
import 'package:android_app/utils/theme_controller.dart';
import 'package:common_components/common_components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

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
  ),

  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      // Content alignment
      alignment: Alignment.center,

      // Background color
      backgroundColor: WidgetStateProperty.resolveWith<Color?>((states) {
        if (states.contains(WidgetState.disabled)) {
          return unselectedItemColor;
        }
        return primaryColor;
      }),

      // Text & icon color
      foregroundColor: WidgetStateProperty.resolveWith<Color?>((states) {
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
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
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
  ),

  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ButtonStyle(
      // Content alignment
      alignment: Alignment.center,

      // Background color
      backgroundColor: WidgetStateProperty.resolveWith<Color?>((states) {
        if (states.contains(WidgetState.disabled)) {
          return darkModeUnselectedItemColor;
        }
        return darkModePrimaryColor;
      }),

      // Text & icon color
      foregroundColor: WidgetStateProperty.resolveWith<Color?>((states) {
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
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.r)),
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

  textTheme: GoogleFonts.montserratTextTheme().apply(
    bodyColor: darkModeTextColor,
    displayColor: darkModeTextColor,
  ),
);

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: '.env');

  // Check previous theme setting
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
  Widget build(BuildContext context) {
    final themeMode = ref.watch(themeModeProvider);

    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
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

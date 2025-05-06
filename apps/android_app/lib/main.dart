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
  brightness: Brightness.light,
  primaryColor: primaryColor,
  scaffoldBackgroundColor: backgroundColor,
  cardColor: backgroundColor,
  colorScheme: ColorScheme.light(
    primary: primaryColor,
    secondary: accentColor,
    surface: Colors.white,
    onPrimary: Colors.white,
    onSecondary: Colors.white,
    onSurface: textColor,
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: primaryColor,
    foregroundColor: Colors.white,
    elevation: 2,
  ),
  iconTheme: IconThemeData(color: textColor),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: primaryColor,
    foregroundColor: Colors.white,
  ),
  cardTheme: CardTheme(
    color: Colors.white,
    elevation: 4,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
  ),
  navigationBarTheme: NavigationBarThemeData(
    backgroundColor: backgroundColor,
    indicatorColor: primaryColor.withAlpha(30),
    labelTextStyle: WidgetStateProperty.all(TextStyle(color: primaryColor)),
    iconTheme: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return IconThemeData(color: primaryColor);
      }
      return IconThemeData(color: unselectedItemColor);
    }),
  ),
  inputDecorationTheme: InputDecorationTheme(
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: primaryColor),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: dividerColor),
    ),
    border: OutlineInputBorder(borderSide: BorderSide(color: dividerColor)),
  ),
  textTheme: GoogleFonts.montserratTextTheme(),
);

final darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: darkModePrimaryColor,
  scaffoldBackgroundColor: darkModeBackgroundColor,
  cardColor: darkModeFillColor,
  colorScheme: ColorScheme.dark(
    primary: darkModePrimaryColor,
    secondary: darkModeAccentColor,
    surface: darkModeFillColor,
    onPrimary: Colors.white,
    onSecondary: Colors.white,
    onSurface: darkModeTextColor,
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: darkModePrimaryColor,
    foregroundColor: Colors.white,
    elevation: 2,
  ),
  iconTheme: IconThemeData(color: darkModeTextColor),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: darkModePrimaryColor,
    foregroundColor: Colors.white,
  ),
  cardTheme: CardTheme(
    color: darkModeFillColor,
    elevation: 4,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
  ),
  navigationBarTheme: NavigationBarThemeData(
    backgroundColor: darkModeBackgroundColor,
    indicatorColor: darkModePrimaryColor.withAlpha(30),
    labelTextStyle: WidgetStateProperty.all(
      TextStyle(color: darkModePrimaryColor),
    ),
    iconTheme: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return IconThemeData(color: darkModePrimaryColor);
      }
      return IconThemeData(color: darkModeUnselectedItemColor);
    }),
  ),
  inputDecorationTheme: InputDecorationTheme(
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: darkModePrimaryColor),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: darkModeDividerColor),
    ),
    border: OutlineInputBorder(
      borderSide: BorderSide(color: darkModeDividerColor),
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

  runApp(const ProviderScope(child: Main()));
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

import 'package:android_app/splash_screen.dart';
import 'package:common_components/variables.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

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

void main() async {
  // WARNA NOTIF BAR
  // SystemChrome.setSystemUIOverlayStyle(
  //   SystemUiOverlayStyle(
  //     statusBarColor: backgroundColor, // Use your predefined background color
  //     statusBarIconBrightness:
  //         Brightness.dark, // Use Brightness.light for white icons
  //     systemNavigationBarColor: backgroundColor, // Change nav bar color
  //     systemNavigationBarIconBrightness:
  //         Brightness.dark, // Light icons if dark background
  //   ),
  // );

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

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
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: lightTheme,
          home: child,
        );
      },
      child: const SplashScreen(),
    );
  }
}

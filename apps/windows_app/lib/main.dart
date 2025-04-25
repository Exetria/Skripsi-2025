import 'package:common_components/variables.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:windows_app/user_management_module/pages/loginPage.dart';

final lightTheme = ThemeData(
  // light/dark mode
  brightness: Brightness.light,

  // default scaffold bg color
  scaffoldBackgroundColor: backgroundColor,

  // main color (buttons, sliders, switches, etc.)
  primaryColor: primaryColor,

  // main app color scheme
  colorScheme: ColorScheme.light(
    primary: primaryColor,
    secondary: secondaryColor,
    surface: backgroundColor,
    onPrimary: backgroundColor,
    onSurface: textColor,
  ),

  // main app icon scheme
  iconTheme: IconThemeData(color: textColor),

  // navrail theme
  navigationRailTheme: NavigationRailThemeData(
    backgroundColor: backgroundColor,
    selectedIconTheme: IconThemeData(color: selectedItemColor),
    unselectedIconTheme: IconThemeData(color: unselectedItemColor),
    selectedLabelTextStyle: subtitleStyle.copyWith(color: selectedItemColor),
    unselectedLabelTextStyle: subtitleStyle.copyWith(
      color: unselectedItemColor,
    ),
    indicatorColor: tertiaryColor,
  ),

  // card color & theme
  cardColor: backgroundColor,
  cardTheme: CardTheme(
    color: backgroundColor,
    elevation: 4,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.r)),
  ),
  textTheme: GoogleFonts.montserratTextTheme(),
);

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
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
      child: const SafeArea(child: LoginPage()),
    );
  }
}

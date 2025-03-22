import 'package:android_app/splash_screen.dart';
import 'package:android_app/user_management_module/data/firebase_auth.dart';
import 'package:android_app/variables.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() async {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: backgroundColor, // Use your predefined background color
      statusBarIconBrightness:
          Brightness.dark, // Use Brightness.light for white icons
      systemNavigationBarColor: backgroundColor, // Change nav bar color too
      systemNavigationBarIconBrightness:
          Brightness.dark, // Light icons if dark background
    ),
  );

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
    print(
      'asds HASIL HOME NULL = ${ref.read(authStateProvider).value == null}',
    );
    return ScreenUtilInit(
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(textTheme: GoogleFonts.montserratTextTheme()),
          home: child,
        );
      },
      child: const SafeArea(
        child:
            // // kalo sudah login langsung ke home
            // ref.read(authStateProvider).value == null
            //     ? LoginPage()
            //     : const HomePage(),
            SplashScreen(),
      ),
    );
  }
}

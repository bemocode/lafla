import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:lafla/core/utils/app_export.dart';
import 'package:lafla/screens/home_screen.dart';
import 'package:lafla/screens/otp_screen.dart';
import 'package:lafla/screens/register_screen.dart';
import 'package:lafla/screens/splash_screen.dart';
import 'package:lafla/screens/welcome_screen.dart';
import 'firebase_options.dart';
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  ThemeHelper().changeTheme('primary');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Lafla',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.deepPurple,
            ),
            useMaterial3: true,
          ),
          // home: const SplashScreen(),
          initialRoute: '/',
          routes: {
            '/': (context) => const SplashScreen(),
            '/welcome': (context) => const WelcomeScreen(),
            '/register': (context) => RegisterScreen(),
            '/otp': (context) => const OtpScreen(),
            '/Home': (context) => const HomeScreen(),
          },
        );
      },
    );
  }
}

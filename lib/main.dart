import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mino/colors.dart';
import 'package:mino/features/landing/screens/landing_screen.dart';
import 'package:mino/firebase_options.dart';
import 'package:mino/router.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Minochat',
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          appBarTheme: const AppBarTheme(
            backgroundColor: webAppBarColor,
            elevation: 0.0,
          )),
      onGenerateRoute: (settings) => generateRoute(settings),
      home: const LandingScreen(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:mino/common/widgets/error.dart';
import 'package:mino/features/auth/screens/login_screen.dart';
import 'package:mino/features/auth/screens/otp_screen.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case LoginScreen.routeName:
      return MaterialPageRoute(
        builder: (context) => const LoginScreen(),
        settings: settings,
      );
    case OTPScreen.routeName:
      final verificationId = settings.arguments as String;
      return MaterialPageRoute(
        builder: (context) => OTPScreen(
          verificationId: verificationId,
        ),
        settings: settings,
      );
    default:
      return MaterialPageRoute(
        builder: (context) => const Scaffold(
          body: ErrorScreen(
            error: 'This page does not exist!',
          ),
        ),
        settings: settings,
      );
  }
}

import 'package:flutter/material.dart';
import 'package:mino/screens/desktop_layout.dart';
import 'package:mino/screens/mobile_layout.dart';

class ResposiveLayout extends StatelessWidget {
  const ResposiveLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: ((p0, p1) {
        if (p1.maxWidth > 700) {
          return const DesktopLayout();
        } else {
          return const MobileLayout();
        }
      }),
    );
  }
}

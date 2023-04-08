import 'package:flutter/material.dart';
import 'package:mino/widgets/contacts_list.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Scaffold(
            body: Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: const [
        Expanded(
          flex: 2,
          child: ContactList(),
        ),
        Expanded(
          flex: 3,
          child: Placeholder(),
        ),
      ],
    )));
  }
}

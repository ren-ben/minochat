import 'package:flutter/material.dart';
import 'package:mino/colors.dart';
import 'package:mino/widgets/contacts_list.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
      Expanded(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Web Profile Bar
              // Web Search Bar
              ContactList(),
            ],
          ),
        ),
      ),
      Container(
        width: MediaQuery.of(context).size.width * 0.75,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/mino.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    ]));
  }
}

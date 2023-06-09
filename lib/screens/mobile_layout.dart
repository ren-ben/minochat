import 'package:flutter/material.dart';
import 'package:mino/colors.dart';
import 'package:mino/widgets/contacts_list.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: kPrimaryColor,
            elevation: 0,
            title: const Text(
              "Minochat",
              style: TextStyle(
                color: Colors.grey,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                letterSpacing: -1.2,
              ),
            ),
            centerTitle: false,
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.more_vert,
                  color: Colors.grey,
                ),
              ),
            ],
            bottom: const TabBar(
              indicatorColor: tabColor,
              indicatorWeight: 3.0,
              labelColor: tabColor,
              unselectedLabelColor: Colors.grey,
              tabs: [
                Tab(icon: Icon(Icons.wechat_rounded)),
                Tab(icon: Icon(Icons.adjust)),
                Tab(icon: Icon(Icons.phone_outlined)),
              ],
            ),
          ),
          body: const ContactList(),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            backgroundColor: tabColor,
            child: const Icon(
              Icons.chat,
              color: kPrimaryColor,
            ),
          )),
    );
  }
}

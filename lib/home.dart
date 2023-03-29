// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import 'chat.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  late int tabValue;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
    tabValue = 0;
    setState(() {});
    tabController.addListener(() {
      tabValue = tabController.index;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: "WhatsApp".text.make(),
        actions: <Widget>[
          IconButton(
            splashRadius: 24.0,
            icon: const Icon(
              Icons.photo_camera_outlined,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          IconButton(
            splashRadius: 24.0,
            icon: const Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: PopupMenuAppBar(
              tabValue: tabValue,
            ),
          ),
        ],
        bottom: TabBar(controller: tabController, tabs: [
          Container(
            alignment: Alignment.center,
            height: 40.0,
            child: "Chats".text.make(),
          ),
          Container(
            alignment: Alignment.center,
            height: 40.0,
            child: "Status".text.make(),
          ),
          Container(
            alignment: Alignment.center,
            height: 40.0,
            child: "Calls".text.make(),
          ),
        ]),
      ),
      body: TabBarView(controller: tabController, children: const [
        ChatsPage(),
        StatusPage(),
        CallsPage(),
      ]),
    );
  }
}

class PopupMenuAppBar extends StatelessWidget {
  const PopupMenuAppBar({
    Key? key,
    required this.tabValue,
  }) : super(key: key);
  final int tabValue;
  @override
  Widget build(BuildContext context) {
    final List<String> listOfChat = [
      'New group',
      'New broadcast',
      'Linked devices',
      'Starred messages',
      'Payments',
      'Settings',
    ];
    final List<String> listOfStatus = [
      'Status privacy',
      'Settings',
    ];
    final List<String> listOfCalls = [
      'Clear call log',
      'Settings',
    ];
    return PopupMenuButton(
      splashRadius: 24.0,
      icon: const Icon(Icons.more_vert),
      itemBuilder: (_) {
        switch (tabValue) {
          case 0:
            return listOfChat
                .mapIndexed((val, i) => PopupMenuItem<int>(
                      value: i,
                      child: Text(
                        val,
                      ),
                    ))
                .toList();
          case 1:
            return listOfStatus
                .mapIndexed((val, i) => PopupMenuItem<int>(
                      value: i,
                      child: Text(
                        val,
                      ),
                    ))
                .toList();
          case 2:
            return listOfCalls
                .mapIndexed((val, i) => PopupMenuItem<int>(
                      value: i,
                      child: Text(
                        val,
                      ),
                    ))
                .toList();
          default:
            return listOfChat
                .mapIndexed((val, i) => PopupMenuItem<int>(
                      value: i,
                      child: Text(
                        val,
                      ),
                    ))
                .toList();
        }
      },
    );
  }
}

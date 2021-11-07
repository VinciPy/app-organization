import 'package:cake_app/controllers/dark/main.dart';
import 'package:flutter/material.dart';
import '../../controllers/dark/main.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<StatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: Text("Cake <3"),
            bottom: const TabBar(tabs: [
              Tab(icon: Icon(Icons.monetization_on_sharp)),
              Tab(icon: Icon(Icons.add_reaction_rounded)),
              Tab(icon: Icon(Icons.wb_incandescent_sharp)),
            ]),
            actions: [
              IconButton(
                  onPressed: () {
                    DarkController.instance.changeTheme();
                    print("Teste");
                  },
                  icon: Icon(Icons.light_mode))
            ],
          ),
        ));
  }
}

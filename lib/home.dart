import 'package:flutter/material.dart';
import 'package:innovativetaskgroupone/memberTab/tabbacala.dart';
import 'package:innovativetaskgroupone/memberTab/tabbracho.dart';
import 'package:innovativetaskgroupone/memberTab/tablosbanos.dart';
import 'package:innovativetaskgroupone/memberTab/tabong.dart';

import 'memberTab/tabnaval.dart';

class Home extends StatefulWidget {


  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin{

  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 8, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const ListTile(
          leading: CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage('assets/naval/mama.png'),
          ),
          title: Text("Innovative Task 1",
            style: TextStyle(color: Colors.white),
          ),
          subtitle: Text("Group 1",
            style: TextStyle(color: Colors.white),),
        ),
        bottom: TabBar(
          isScrollable: true,
          controller: tabController,
          tabs: const [
            Tab(child: Text('Bacala')),
            Tab(child: Text('Bracho')),
            Tab(child: Text('Cañete')),
            Tab(child: Text('Dagondon')),
            Tab(child: Text('Los Baños')),
            Tab(child: Text('Mosqueda')),
            Tab(child: Text('Naval')),
            Tab(child: Text('Ong'))
          ],
        ),
      ),
      // drawer: const CustomDrawer(),
      body: TabBarView(
        controller: tabController,
        children: const [
          TabBacala(),
          TabBracho(),
          TabNaval(),
          TabNaval(),
          TabLosBanos(),
          TabNaval(),
          TabNaval(),
          TabOng()
        ],
      ),
    );
  }
}

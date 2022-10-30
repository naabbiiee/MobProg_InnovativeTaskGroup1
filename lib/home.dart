import 'dart:io';
import 'package:flutter/material.dart';
import 'package:innovativetaskgroupone/memberTab/tabbacala.dart';
import 'package:innovativetaskgroupone/memberTab/tabbracho.dart';
import 'package:innovativetaskgroupone/memberTab/tabcanete.dart';
import 'package:innovativetaskgroupone/memberTab/tabdagondon.dart';
import 'package:innovativetaskgroupone/memberTab/tablosbanos.dart';
<<<<<<< HEAD
import 'package:innovativetaskgroupone/memberTab/tabmosqueda.dart';
=======
import 'package:innovativetaskgroupone/memberTab/tabong.dart';
>>>>>>> 2782228c70a19db8ab0935c06a3fbb675cd1d1fe

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
        actions: [
          IconButton(
            icon: Image.asset('assets/general_assets/Creative.png'),
            iconSize: 40,
            onPressed: () => exit(0),
            padding: EdgeInsets.all(10),
          ),
        ],
        title: const ListTile(
          contentPadding: EdgeInsets.all(0),
          minVerticalPadding: 20,
          leading: CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage('assets/general_assets/goggles.png'),
          ),
          title: Text("I N N O V A T I V E  -  T A S K 01",
            style: TextStyle(color: Colors.white,
            fontWeight: FontWeight.bold),
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
          TabCanete(),
          TabDagondon(),
          TabLosBanos(),
          TabMosqueda(),
          TabNaval(),
          TabOng()
        ],
      ),
    );
  }
}

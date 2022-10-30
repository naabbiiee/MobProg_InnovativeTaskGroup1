import 'package:flutter/material.dart';
import 'package:innovativetaskgroupone/model/slideleft.dart';
import 'package:innovativetaskgroupone/profile.dart';

import '../model/person.dart';

class TabLosBanos extends StatefulWidget {

  const TabLosBanos({Key? key}) : super(key: key);

  @override
  State<TabLosBanos> createState() => _TabBrachoState();
}

class _TabBrachoState extends State<TabLosBanos> {

  List<Person> listlosbanos = [
    Person(
        leading: 'assets/naval/naval.jpg',
        name: 'Janet Hinampas',
        relationship: 'Mother',
        occupation: 'House Wife',
        birthdate: 'January 15, 1977',
        age: 42

    ),
    Person(
        leading: 'assets/naval/naval.jpg',
        name: 'Concodio Los Banos',
        relationship: 'Father',
        occupation: 'Driver',
        birthdate: 'December 6, 1975',
        age: 42
    ),
    Person(
        leading: 'assets/naval/naval.jpg',
        name: 'Leah Marie Los Banos',
        relationship: 'Sister',
        occupation: 'Teacher',
        birthdate: 'October 9, 1999',
        age: 23

    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
          itemCount: listlosbanos.length,
          itemBuilder: (BuildContext context, index) {
            final losbanos = listlosbanos[index];
            return Card(
              child: ListTile(
                  leading: CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage(losbanos.leading.toString()),
                  ),
                  title: Text(losbanos.name.toString()),
                  subtitle: Text(losbanos.relationship.toString()),
                  onTap: () {
                    Navigator.push(
                      context, SlideLeft(page: Profile(details: losbanos)),
                    );
                  }
              ),

            );
          },
        )
    );
  }
}



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
        leading: 'assets/losbanos/5.jpg',
        name: 'John Christian Los Banos',
        relationship: 'Me',
        occupation: 'Student',
        birthdate: 'April 19, 2002',
        age: 20

    ),
    Person(
        leading: 'assets/losbanos/2.jpg',
        name: 'Janet Hinampas',
        relationship: 'Mother',
        occupation: 'House Wife',
        birthdate: 'January 15, 1977',
        age: 45

    ),
    Person(
        leading: 'assets/losbanos/1.jpg',
        name: 'Concodio Los Banos',
        relationship: 'Father',
        occupation: 'Driver',
        birthdate: 'December 6, 1975',
        age: 47
    ),
    Person(
        leading: 'assets/losbanos/3.jpg',
        name: 'Leah Marie Los Banos',
        relationship: 'Sister',
        occupation: 'Chemical Engineer',
        birthdate: 'November 19, 1999',
        age: 23

    ),
    Person(
        leading: 'assets/losbanos/4.jpg',
        name: 'Jason Los Banos',
        relationship: 'Brother',
        occupation: 'Student',
        birthdate: 'February 15, 2001',
        age: 21

    ),
    Person(
        leading: 'assets/losbanos/6.jpg',
        name: 'Lyrra Joy Marie Los Banos',
        relationship: 'Sister',
        occupation: 'Student',
        birthdate: 'June 25, 2004',
        age: 18

    ),
    Person(
        leading: 'assets/losbanos/7.jpg',
        name: 'John Carlo Los Banos',
        relationship: 'Student',
        occupation: 'Teacher',
        birthdate: 'November 25, 2006',
        age: 16

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
                    backgroundImage: AssetImage(losbanos.leading),
                  ),
                  title: Text(losbanos.name),
                  subtitle: Text(losbanos.relationship),
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



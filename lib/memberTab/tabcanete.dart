import 'package:flutter/material.dart';
import 'package:innovativetaskgroupone/model/person.dart';

import '../model/slideleft.dart';
import '../profile.dart';

class TabCanete extends StatefulWidget {
  const TabCanete({Key? key}) : super(key: key);

  @override
  State<TabCanete> createState() => _TabCaneteState();
}

class _TabCaneteState extends State<TabCanete> {
  List<Person> listcanete = [
    Person(
        leading: 'assets/canete/johnray.jpg',
        name: 'John Ray D. Canete',
        relationship: 'None',
        occupation: 'Student',
        birthdate: 'October 28, 2001',
        age: 21

    ),
    Person(
        leading: 'assets/canete/noprofile.jpg',
        name: 'Renante G. Canete',
        relationship: 'Father',
        occupation: 'Private Employee',
        birthdate: 'January 3, 1970',
        age: 52
    ),
    Person(
        leading: 'assets/canete/merlin.jpg',
        name: 'Merlin D. Canete',
        relationship: 'Mother',
        occupation: 'Private Employee',
        birthdate: 'December 22, 1972',
        age: 50

    ),
    Person(
        leading: 'assets/canete/noprofile.jpg',
        name: 'Jannine',
        relationship: 'Sister',
        occupation: 'Virtual Assistant',
        birthdate: 'January 17, 2000',
        age: 22

    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
          itemCount: listcanete.length,
          itemBuilder: (BuildContext context, index) {
            final canete = listcanete[index];
            return Card(
              child: ListTile(
                  leading: CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage(canete.leading),
                  ),
                  title: Text(canete.name),
                  subtitle: Text(canete.relationship),
                  onTap: () {
                    Navigator.push(
                      context, SlideLeft(page: Profile(details: canete)),
                    );
                  }
              ),

            );
          },
        )
    );
  }
}

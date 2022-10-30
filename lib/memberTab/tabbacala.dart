import 'package:flutter/material.dart';
import 'package:innovativetaskgroupone/model/person.dart';
import 'package:innovativetaskgroupone/model/slideleft.dart';
import 'package:innovativetaskgroupone/profile.dart';

class TabBacala extends StatefulWidget {
  const TabBacala({Key? key}) : super(key: key);

  @override
  State<TabBacala> createState() => _TabBacalaState();
}

class _TabBacalaState extends State<TabBacala> {
  List<Person> listbacala = [
    Person(
        leading: 'assets/bacala/papa.jpg',
        name: 'Winces A. Bacala',
        relationship: 'Father',
        occupation: 'EggLaying Caretaker',
        birthdate: 'September 28, 1968',
        age: 54
    ),
    Person(
        leading: 'assets/bacala/mama.jpg',
        name: 'Nenita M. Bacala',
        relationship: 'Mother',
        occupation: 'House Wife',
        birthdate: 'December 4, 1973',
        age: 48

    ),
    Person(
        leading: 'assets/bacala/kuya.jpg',
        name: 'John Mark M. Bacala',
        relationship: 'Brother',
        occupation: 'Factory Worker',
        birthdate: 'November 21, 1995',
        age: 26
    ),
    Person(
        leading: 'assets/bacala/ate.jpg',
        name: 'Maria Concepcion M. Bacala',
        relationship: 'Sister',
        occupation: 'Engineer',
        birthdate: 'December 6, 1996',
        age: 25
    ),
    Person(
        leading: 'assets/bacala/mica.jpg',
        name: 'Mica Angela M. Bacala',
        relationship: 'Me',
        occupation: 'Student',
        birthdate: 'June 7, 2002',
        age: 20
    ),
    Person(
        leading: 'assets/bacala/manghud.jpg',
        name: 'Winces Gabriel M. Bacala',
        relationship: 'Brother',
        occupation: 'Student',
        birthdate: 'October 19, 2012',
        age: 10
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
          itemCount: listbacala.length,
          itemBuilder: (BuildContext context, index) {
            final bacala = listbacala[index];
            return Card(
              child: ListTile(
                  leading: CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage(bacala.leading),
                  ),
                  title: Text(bacala.name),
                  subtitle: Text(bacala.relationship),
                  onTap: () {
                    Navigator.push(
                      context, SlideLeft(page: Profile(details: bacala)),
                    );
                  }
              ),

            );
          },
        )
    );
  }
}



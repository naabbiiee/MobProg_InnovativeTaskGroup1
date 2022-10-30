import 'package:flutter/material.dart';
import 'package:innovativetaskgroupone/model/slideleft.dart';
import 'package:innovativetaskgroupone/profile.dart';

import '../model/person.dart';

class TabBracho extends StatefulWidget {

  const TabBracho({Key? key}) : super(key: key);

  @override
  State<TabBracho> createState() => _TabBrachoState();
}

class _TabBrachoState extends State<TabBracho> {

  List<Person> listbracho = [
    Person(
        leading: 'assets/bracho/papa.jpg',
        name: 'Joel C. Bracho',
        relationship: 'Father',
        occupation: 'Freelancer',
        birthdate: 'February 24, 1975',
        age: 47

    ),
    Person(
        leading: 'assets/bracho/mama.jpg',
        name: 'Ruby Z. Bracho',
        relationship: 'Mother',
        occupation: 'Freelancer',
        birthdate: 'June 3, 1975',
        age: 47
    ),
    Person(
        leading: 'assets/bracho/wawa.jpg',
        name: 'Joshua Ryle Z. Bracho',
        relationship: 'Son',
        occupation: 'Student',
        birthdate: 'November 21, 2000',
        age: 21
    ),
    Person(
        leading: 'assets/bracho/sister.jpg',
        name: 'Sheniah Zacky Raine Niese',
        relationship: 'Step Sister',
        occupation: 'Student',
        birthdate: 'December 16, 2009',
        age: 13
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
          itemCount: listbracho.length,
          itemBuilder: (BuildContext context, index) {
            final bracho = listbracho[index];
            return Card(
              child: ListTile(
                leading: CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage(bracho.leading),
                ),
                title: Text(bracho.name),
                subtitle: Text(bracho.relationship),
                onTap: () {
                  Navigator.push(
                    context, SlideLeft(page: Profile(details: bracho)),
                  );
                }
              ),
            );
    },
    )
    );
    }
}



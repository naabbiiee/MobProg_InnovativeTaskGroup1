import 'package:flutter/material.dart';
import 'package:innovativetaskgroupone/model/slideleft.dart';
import 'package:innovativetaskgroupone/profile.dart';

import '../model/person.dart';

class TabNaval extends StatefulWidget {

  const TabNaval({Key? key}) : super(key: key);

  @override
  State<TabNaval> createState() => _TabNavalState();
}

class _TabNavalState extends State<TabNaval> {
  List<Person> listnaval = [
    Person(
        leading: 'assets/naval/1_Me.png',
        name: 'Angel Rose Naval',
        relationship: 'Myself',
        occupation: 'Student',
        birthdate: 'November 20, 2001',
        age: 20

    ),
    Person(
        leading: 'assets/naval/2_mama.png',
        name: 'Ma. Roscel N. Sebaria',
        relationship: 'Mother',
        occupation: 'House Wife',
        birthdate: 'September 24, 1979',
        age: 43

    ),
    Person(
        leading: 'assets/naval/4_papa.png',
        name: 'Joel B. Sebaria',
        relationship: 'Father',
        occupation: 'Driver',
        birthdate: 'October 9, 1975',
        age: 47

    ),
    Person(
        leading: 'assets/naval/3_Ate.png',
        name: 'Princess Johanna Naval',
        relationship: 'Older Sister',
        occupation: 'Teacher',
        birthdate: 'October 23, 1999',
        age: 23

    ),
    Person(
        leading: 'assets/naval/5_Kuya.png',
        name: 'Leo Joseph N. Sebaria',
        relationship: 'Brother',
        occupation: 'Student',
        birthdate: 'August 9, 2009',
        age: 13

    ),
    Person(
        leading: 'assets/naval/6_Alick.png',
        name: 'Angel N. Sebaria',
        relationship: 'Youngest Sister',
        occupation: 'Student',
        birthdate: 'June 14, 2011',
        age: 11

    ),
    Person(
        leading: 'assets/naval/7_DanDan.png',
        name: 'Daniel N. Sebaria',
        relationship: 'Youngest Brother',
        occupation: 'Student',
        birthdate: 'October 21, 2012',
        age: 10

    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
          itemCount: listnaval.length,
          itemBuilder: (BuildContext context, index) {
            final naval = listnaval[index];
            return Card(
              child: ListTile(
                leading: CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage(naval.leading),
                ),
                title: Text(naval.name),
                subtitle: Text(naval.relationship),
                onTap: () {
                  Navigator.push(
                    context, SlideLeft(page: Profile(details: naval)),
                  );
                }
              ),

            );
    },
    )
    );
    }
}



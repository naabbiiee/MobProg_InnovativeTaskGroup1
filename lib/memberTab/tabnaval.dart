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
        leading: 'assets/naval/mama.png',
        name: 'Ma. Roscel N. Sebaria',
        relationship: 'Mother',
        occupation: 'House Wife',
        birthdate: 'September 24, 1979',
        age: 42

    ),
    Person(
        leading: 'assets/naval/papa.png',
        name: 'Joel B. Sebaria',
        relationship: 'Father',
        occupation: 'Driver',
        birthdate: 'October 9, 1979',
        age: 42
    ),
    Person(
        leading: 'assets/naval/ate.png',
        name: 'Princess Johanna Naval',
        relationship: 'Sister',
        occupation: 'Teacher',
        birthdate: 'October 9, 1979',
        age: 23

    )
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
                  backgroundImage: AssetImage(naval.leading.toString()),
                ),
                title: Text(naval.name.toString()),
                subtitle: Text(naval.relationship.toString()),
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



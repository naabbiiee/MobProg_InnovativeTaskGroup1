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
        leading: 'assets/naval/naval.jpg',
        name: 'Ma. Roscel N. Sebaria',
        relationship: 'Mother',
        occupation: 'House Wife',
        birthdate: 'September 24, 1979',
        age: 42

    ),
    Person(
        leading: 'assets/naval/naval.jpg',
        name: 'Joel B. Sebaria',
        relationship: 'Father',
        occupation: 'Driver',
        birthdate: 'October 9, 1979',
        age: 42
    ),
    Person(
        leading: 'assets/naval/naval.jpg',
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
          itemCount: listbracho.length,
          itemBuilder: (BuildContext context, index) {
            final bracho = listbracho[index];
            return Card(
              child: ListTile(
                leading: CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage(bracho.leading.toString()),
                ),
                title: Text(bracho.name.toString()),
                subtitle: Text(bracho.relationship.toString()),
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



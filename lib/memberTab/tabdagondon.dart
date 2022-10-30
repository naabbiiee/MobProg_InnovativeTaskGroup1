import 'package:flutter/material.dart';
import 'package:innovativetaskgroupone/model/slideleft.dart';
import 'package:innovativetaskgroupone/profile.dart';

import '../model/person.dart';

class TabDagondon extends StatefulWidget {

  const TabDagondon({Key? key}) : super(key: key);

  @override
  State<TabDagondon> createState() => _TabDagondonState();
}

class _TabDagondonState extends State<TabDagondon> {

  List<Person> listdagondon = [
    Person(
        leading: 'assets/dagondon/d.jpg',
        name: 'Angel Deanielle R. Dagondon',
        relationship: 'Daughter',
        occupation: 'Student',
        birthdate: 'September 10, 2001',
        age: 21

    ),
    Person(
        leading: 'assets/dagondon/j.jpg',
        name: 'Angel Janielle R. Dagondon',
        relationship: 'Daughter',
        occupation: 'Student',
        birthdate: 'September 10, 2001',
        age: 21
    ),
    Person(
        leading: 'assets/dagondon/pa.jpg',
        name: 'Henry C. Dagondon',
        relationship: 'Father',
        occupation: 'Unemployed',
        birthdate: 'February 10, 1975',
        age: 47
    ),
    Person(
        leading: 'assets/dagondon/mom.jpg',
        name: 'Janielyn R. Dagondon',
        relationship: 'Mother',
        occupation: 'Housewife',
        birthdate: 'January 31, 1976',
        age: 46

    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
          itemCount: listdagondon.length,
          itemBuilder: (BuildContext context, index) {
            final dagondon = listdagondon[index];
            return Card(
              child: ListTile(
                  leading: CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage(dagondon.leading),
                  ),
                  title: Text(dagondon.name),
                  subtitle: Text(dagondon.relationship),
                  onTap: () {
                    Navigator.push(
                      context, SlideLeft(page: Profile(details: dagondon)),
                    );
                  }
              ),
            );
          },
        )
    );
  }
}



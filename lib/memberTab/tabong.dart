import 'package:flutter/material.dart';
import 'package:innovativetaskgroupone/model/person.dart';
import 'package:innovativetaskgroupone/model/slideleft.dart';
import 'package:innovativetaskgroupone/profile.dart';

class TabOng extends StatefulWidget {
  const TabOng({Key? key}) : super(key: key);

  @override
  State<TabOng> createState() => _TabOngState();
}

class _TabOngState extends State<TabOng> {


  List<Person> listong = [ //change list name
    Person(
        leading: 'assets/ong/myself.png',
        name: 'Japhet Steve G. Ong',
        relationship: 'Son',
        occupation: 'Student',
        birthdate: 'July 16, 2001',
        age: 21


    ),
    Person(
        leading: 'assets/ong/mother.png',
        name: 'Nora A. Gayosa',
        relationship: 'Mother',
        occupation: 'Businessswoman',
        birthdate: 'September 9, 1975',
        age: 47


    )



  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
          itemCount: listong.length,
          itemBuilder: (BuildContext context, index) {

            final ong = listong[index];

            return Card(
              child: ListTile(
                  leading: CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage(ong.leading),
                  ),
                  title: Text(ong.name),
                  subtitle: Text(ong.relationship),
                  onTap: () {
                    Navigator.push(
                      context, SlideLeft(page: Profile(details: ong)),
                    );
                  }
              ),

            );
          },
        )

    );
  }
}

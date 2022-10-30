import 'package:flutter/material.dart';
import 'package:innovativetaskgroupone/model/slideleft.dart';
import 'package:innovativetaskgroupone/profile.dart';

import '../model/person.dart';

class TabMosqueda extends StatefulWidget {

  const TabMosqueda({Key? key}) : super(key: key);

  @override
  State<TabMosqueda> createState() => _TabMosquedaState();
}

class _TabMosquedaState extends State<TabMosqueda> {
  List<Person> listmosqueda = [
    Person(
        leading: 'assets/mosqueda/jai.jpg',
        name: 'Jirah Leil B. Mosqueda',
        relationship: 'Me',
        occupation: 'BSIT - Student',
        birthdate: 'April 27, 2002',
        age: 20
    ),
    Person(
        leading: 'assets/mosqueda/mama.jpg',
        name: 'Miraluna B. Mosqueda',
        relationship: 'Mother',
        occupation: 'House Wife',
        birthdate: 'January 28, 1972',
        age: 50
    ),
    Person(
        leading: 'assets/mosqueda/daddy.jpg',
        name: 'Jihree O. Mosqueda',
        relationship: 'Father',
        occupation: 'Wardman',
        birthdate: 'December 23, 1971',
        age: 51
    ),
    Person(
        leading: 'assets/mosqueda/angelo.jpg',
        name: 'John Angelo B. Mosqueda',
        relationship: 'Brother',
        occupation: 'Call Center',
        birthdate: 'September 4, 1996',
        age: 26
        ),
    Person(
        leading: 'assets/mosqueda/rhimer.jpg',
        name: 'John Rhimer B. Mosqueda',
        relationship: 'Brother',
        occupation: 'Call Center',
        birthdate: 'January 14, 1999',
        age: 23
        ),
    Person(
        leading: 'assets/mosqueda/lyka.jpg',
        name: 'Jewel Lyka B. Mosqueda',
        relationship: 'Sister',
        occupation: ' Student',
        birthdate: 'October 19, 2003',
        age: 19
        ),
    Person(
        leading: 'assets/mosqueda/princess.jpg',
        name: 'Jade Princess B. Mosqueda',
        relationship: 'Sister',
        occupation: 'Student',
        birthdate: 'February 9, 2018',
        age: 4
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
          itemCount: listmosqueda.length,
          itemBuilder: (BuildContext context, index) {
            final mosqueda = listmosqueda[index];
            return Card(
              child: ListTile(
                  leading: CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage(mosqueda.leading),
                  ),
                  title: Text(mosqueda.name),
                  subtitle: Text(mosqueda.relationship),
                  onTap: () {
                    Navigator.push(
                      context, SlideLeft(page: Profile(details: mosqueda),
                    ));
                  }
              ),

            );
          },)
    );
    }
}



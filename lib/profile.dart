import 'package:flutter/material.dart';
import 'package:innovativetaskgroupone/model/person.dart';

class Profile extends StatefulWidget {

  final Person details;

  const Profile({
    required this.details,
    Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text(widget.details.name),
        ),
      body: ListView(
        padding: const EdgeInsets.all(40),
        children: [
          CircleAvatar(
            radius: 50,
            child: ClipOval(
              child: Image.network(widget.details.leading),
            ),
          ),
          ListTile(
            title: Text(widget.details.name),
            subtitle: const Text('Fullname'),
          ),
          ListTile(
            title: Text(widget.details.relationship),
            subtitle: const Text('Relationship'),
          ),
          ListTile(
            title: Text(widget.details.occupation),
            subtitle: const Text('Occupation'),
          ),
          ListTile(
            title: Text(widget.details.birthdate),
            subtitle: const Text('Birthday'),
          ),
          ListTile(
            title: Text(widget.details.age.toString()),
            subtitle: const Text('Age'),
          ),
        ],
      ),

    );
  }
}








// import 'package:flutter/material.dart';
// import '../models/person.dart';
//
// class PageNaval extends StatelessWidget {
//
//   final Naval naval;
//
//   const PageNaval({
//     required this.naval,
//     Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Profile Name'),
//       ),
//       body: ListView(
//         padding: const EdgeInsets.all(40),
//         children: [
//           CircleAvatar(
//             radius: 50,
//             child: ClipOval(
//               child: Image.network(
//                 'assets/naval/mama.png',
//               ),
//             ),
//           ),
//           Container(
//             padding: const EdgeInsets.all(20),
//           ),
//           ListTile(
//             title : Text('${naval.name}'),
//             subtitle : const Text('Fullname'),
//           ),
//           ListTile(
//             title : Text('${naval.relationship}'),
//             subtitle : const Text('Relationship'),
//           ),
//           ListTile(
//             title : Text('${naval.age}'),
//             subtitle : const Text('Age'),
//           ),
//           ListTile(
//             title : Text('${naval.occupation}'),
//             subtitle : const Text('Occupation'),
//           ),
//           ListTile(
//             title : Text('${naval.birthdate}'),
//             subtitle : const Text('Birthdate'),
//           ),
//         ],
//       ),
//     );
//   }
// }

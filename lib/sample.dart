import 'package:flutter/material.dart';
import 'package:footer/footer.dart';
import 'package:footer/footer_view.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  static Map<int, Color> color = {
    50:const Color.fromRGBO(4, 131, 184, .1),
    100:const Color.fromRGBO(4, 131, 184, .2),
    200:const Color.fromRGBO(4, 131, 184, .3),
    300:const Color.fromRGBO(4, 131, 184, .4),
    400:const Color.fromRGBO(4, 131, 184, .5),
    500:const Color.fromRGBO(4, 131, 184, .6),
    600:const Color.fromRGBO(4, 131, 184, .7),
    700:const Color.fromRGBO(4, 131, 184, .8),
    800:const Color.fromRGBO(4, 131, 184, .9),
    900:const Color.fromRGBO(4, 131, 184, 1),
  };
  //MaterialColor myColor = MaterialColor(0xFF162A49, color);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Footer',
      theme: ThemeData(
        primarySwatch: MaterialColor(0xFF162A49, color),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: FooterPage(),
    );
  }
}

class FooterPage extends StatefulWidget {
  @override
  FooterPageState createState() {
    return FooterPageState();
  }
}

class FooterPageState extends State<FooterPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Flutter Footer View',style: TextStyle(fontWeight:FontWeight.w200),)
      ),
      drawer: const Drawer(),
      body: FooterView(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Padding(
                  padding: EdgeInsets.only(top:50,left: 70),
                  child: Text('Scrollable View Section'),
                )
              ],
            ),
          ],
          footer: Footer(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children:<Widget>[
                  Center(
                    child:Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                            height: 45.0,
                            width: 45.0,
                            child: Center(
                              child:Card(
                                elevation: 5.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25.0), // half of height and width of Image
                                ),
                                child: IconButton(
                                  icon: const Icon(Icons.audiotrack,size: 20.0,),
                                  color: const Color(0xFF162A49),
                                  onPressed: () {},
                                ),
                              ),
                            )
                        ),
                        Container(
                            height: 45.0,
                            width: 45.0,
                            child: Center(
                              child:Card(
                                elevation: 5.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25.0), // half of height and width of Image
                                ),
                                child: IconButton(
                                  icon: const Icon(Icons.fingerprint,size: 20.0,),
                                  color: const Color(0xFF162A49),
                                  onPressed: () {},
                                ),
                              ),
                            )
                        ),
                        Container(
                            height: 45.0,
                            width: 45.0,
                            child: Center(
                              child:Card(
                                elevation: 5.0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25.0), // half of height and width of Image
                                ),
                                child: IconButton(
                                  icon: const Icon(Icons.call,size: 20.0,),
                                  color: const Color(0xFF162A49),
                                  onPressed: () {},
                                ),
                              ),
                            )
                        ),
                      ],
                    ),
                  ),

                  const Text('Copyright ©2020, All Rights Reserved.',style: TextStyle(fontWeight:FontWeight.w300, fontSize: 12.0, color: Color(0xFF162A49)),),
                  const Text('Powered by Nexsport',style: TextStyle(fontWeight:FontWeight.w300, fontSize: 12.0,color: Color(0xFF162A49)),),
                ]
            ),
            padding: const EdgeInsets.all(5.0),

          )
      ),
      floatingActionButton: FloatingActionButton(
          elevation: 10.0,
          child: const Icon(Icons.chat),
          backgroundColor: const Color(0xFF162A49),
          onPressed: (){
          }
      ),
    );
  }
}

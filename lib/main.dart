import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Hello World",
      home: HomeScreen(),
    );

  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  bool isPressed = true;
  bool isPressed1 = true;
  bool isPressed2 = true;
  bool visible = true;

  @override
  _HomeScreenState createState() => _HomeScreenState();
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Flutter App"),),
          body: Center(
            child: Center(
              child: Container(
                height: 600,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      isPressed ? "": "This is The Earth",
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                    Text(
                      isPressed1 ? "": "This is The Mars",
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                    Text(
                      isPressed2 ? "": "This is The Saturn",
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                    SizedBox(
                      height: 30,
                    ),
                    Image.network(
                        'https://freepngimg.com/thumb/earth/7-2-earth-png-pic-thumb.png',),
                    Padding(
                      padding: EdgeInsets.all(15),
                      child: new ButtonBar(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          RaisedButton(
                            child: new Text('Earth'),
                            color: Colors.blue,
                            onPressed: () {
                              setState(() {
                                isPressed = false;
                                isPressed1 = true;
                                isPressed2 = true;
                              });},
                          ),
                          FlatButton(
                            child: Text('Mars'),
                            color: Colors.blue,
                            onPressed: () {
                              setState(() {
                                isPressed1 = false;
                                isPressed = true;
                                isPressed2 = true;
                              });},
                          ),
                          FlatButton(
                            child: Text('Saturn'),
                            color: Colors.blue,
                            onPressed: () {
                              setState(() {
                                isPressed2 = false;
                                isPressed = true;
                                isPressed1 = true;
                              });},
                          ),
                        ],
                      ),
                    ),
    // Text(
                    //   isPressed ? "This is our home": "",
                    //   style: TextStyle(color: Colors.blue),
                    // ),
                  ],

                ),
              ),

            ),


          ),
        // floatingActionButton: FloatingActionButton(
        //     elevation: 8,
        //     child: Icon(Icons.arrow_forward),
        //     onPressed: () {
        //       setState(() {
        //         isPressed = true;
        //       });
        //
        //     },
        //
        // ),
      );
  }
}

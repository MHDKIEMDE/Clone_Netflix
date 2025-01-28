import 'package:flutter/material.dart';
import 'package:netflix_2/pages/sign.dart';
import 'package:netflix_2/pages/privacy.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => HomeState();
}

class HomeState extends State<Home> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.black,
        leading: const Image(
          image: AssetImage("assets/images/symbol.png"),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Privacy()));
            },
            child: Text(
              "PRIVACY",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          TextButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Sign()));
              },
              child: Text("SIGN IN",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold))),
          TextButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Home()));
              },
              child: Icon(
                Icons.more_vert,
                size: 25,
                color: Colors.white,
              ))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Home",
            ),
          ],
        ),
      ),
    );
  }
}

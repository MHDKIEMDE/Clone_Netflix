import 'package:flutter/material.dart';
import 'package:netflix_2/pages/sign.dart';
import 'package:netflix_2/pages/home.dart';


class Privacy extends StatefulWidget {
  const Privacy({super.key});

  @override
  State<Privacy> createState() => PrivacyState();
}

class PrivacyState extends State<Privacy> {
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
                Icons.home,
              ))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Privacy",
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Sign()));
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

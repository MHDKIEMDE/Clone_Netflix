import 'package:flutter/material.dart';
import 'package:netflix_2/componemts/my_button.dart';
import 'package:netflix_2/componemts/my_textfiled.dart';
import 'package:netflix_2/componemts/squartitle.dart';

class Privacy extends StatefulWidget {
  const Privacy({super.key});

  @override
  State<Privacy> createState() => PrivacyState();
}

class PrivacyState extends State<Privacy> {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  void signUserin() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 70,
              ),
              Icon(
                Icons.lock,
                size: 100,
              ),
              const SizedBox(
                height: 50,
              ),
              Text(
                "Welcome back you're been missed!",
                style: TextStyle(color: Colors.grey[700], fontSize: 16),
              ),
              const SizedBox(
                height: 20,
              ),
              MyTextfiled(
                controller: usernameController,
                hintText: "Username",
                obscureText: false,
              ),
              const SizedBox(
                height: 10,
              ),
              MyTextfiled(
                controller: passwordController,
                hintText: "Password",
                obscureText: true,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25.0),
                    child: Text(
                      "Forgot Password?",
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              MyButton(
                onTap: signUserin,
              ),
              const SizedBox(
                height: 50,
              ),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                      Expanded(
                          child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      )),
                      Text(
                        "or continues with",
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                      Expanded(
                          child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ))
                    ],
                  )),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Squartitle(
                    imagePath: "assets/images/google.png",
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Squartitle(
                    imagePath: "assets/images/apple.png",
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Not a member?",
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(
                    "Register Now?",
                    style: TextStyle(color: Colors.blue),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

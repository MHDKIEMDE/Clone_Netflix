import 'package:flutter/material.dart';
import 'package:netflix_2/pages/sign.dart';
import 'package:netflix_2/pages/home.dart';
import 'package:netflix_2/pages/privacy.dart';

class SignCode extends StatefulWidget {
  const SignCode({super.key});

  @override
  State<SignCode> createState() => SignCodeState();
}

class SignCodeState extends State<SignCode> {
  int counter = 0;

  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
       
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

      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Form(
            key: _formKey,
            child: Column(
              children: [
                const SizedBox(
                  height: 200,
                ),
                Text(
                  "Get you sign-in code",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
                const SizedBox(
                  height: 18,
                ),
                TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                      labelText: "Email or phone number",
                      labelStyle: const TextStyle(color: Colors.grey),
                      filled: true,
                      fillColor: Colors.grey[800],
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide.none)),
                  style: TextStyle(
                    color: Colors.white,
                    height: 2.5,
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter Email";
                    } else if (!value.contains("@")) {
                      return "Please enter valid email (@)";
                    } else if (!value.contains(".com")) {
                      return "Please enter valid email(.com)";
                    } else {
                      return null;
                    }
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 60,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // print(_passwordController.text);
                        // print(_emailController.text);
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        side: BorderSide(
                          color: Colors.grey, // Couleur de la bordure
                          width: 2.0, // Épaisseur de la bordure
                        ),
                      ),
                    ),
                    child: Text(
                      "Send Code",
                      style: TextStyle(
                        fontSize: 20.0,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Forgot Email or Phone Number?",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "New to Netflix? Sign up now.",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
                const SizedBox(
                  height: 35,
                ),
                Text(
                  "Sign in is protected by Google reCaPTCHA to ensure you're not bot. learn more",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey, fontSize: 11),
                ),
              ],
            )),
      ),
    );
  }
}

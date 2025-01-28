import 'package:flutter/material.dart';
import 'package:netflix_2/pages/signCode.dart';
import 'package:netflix_2/pages/home.dart';
import 'package:netflix_2/pages/privacy.dart';



class Sign extends StatefulWidget {
  const Sign({super.key});

  @override
  State<Sign> createState() => SignState();
}

class SignState extends State<Sign> {
  int counter = 0;

  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  // bool _isObscure = true;

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
                  height: 130,
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
                TextFormField(
                  controller: _passwordController,
                  // obscureText: _isObscure,
                  decoration: InputDecoration(
                    labelText: "Password",
                    labelStyle: const TextStyle(color: Colors.grey),
                    filled: true,
                    fillColor: Colors.grey[800],
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.0),
                        borderSide: BorderSide.none),
                  ),
                  style: TextStyle(color: Colors.white, height: 2.5),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Please enter Password";
                    }
                    return null;
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
                      "Sign In",
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
                  "Or",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey, fontSize: 17),
                ),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 60,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SignCode()));
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.grey[800],
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        )),
                    child: Text(
                      "Use a Sign-In Code",
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
                  "Forgot Password?",
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

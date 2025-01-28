import 'package:flutter/material.dart';
import 'package:netflix_2/pages/sign.dart';
import 'package:netflix_2/pages/privacy.dart';
import 'package:netflix_2/pages/home.dart';
import 'package:netflix_2/pages/widget/onbording.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => OnboardingState();
}

class OnboardingState extends State<Onboarding> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
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
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          PageView(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                _currentPage = index;
              });
            },
            children: const [
              Onbordings(
                title: "Unlimited movies, Tv shows & more",
                subTitle: "Watch anywhere. Cancel anytime",
                images: "assets/images/1.jpg",
              ),
              Onbordings(
                title: "There's a plan for every fan",
                subTitle: "Plan start at USD 2.99",
                images: "assets/images/2.jpg",
              ),
              Onbordings(
                title: "Cancel online anytime",
                subTitle: "Join today, no reason to wait",
                images: "assets/images/3.jpg",
              ),
              Onbordings(
                title: "watch everywhere",
                subTitle: "Stream on you phone, table, laptop and TV.",
                images: "assets/images/4.jpg",
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                        4,
                        (index) => AnimatedContainer(
                              duration: const Duration(milliseconds: 300),
                              margin: EdgeInsets.only(right: 5),
                              height: 10,
                              width: _currentPage == index ? 20 : 10,
                              decoration: BoxDecoration(
                                color: _currentPage == index
                                    ? Colors.red
                                    : Colors.grey,
                                borderRadius: BorderRadius.circular(5),
                              ),
                            ))),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/home');
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0))),
                    child: const Text("Get Started "),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

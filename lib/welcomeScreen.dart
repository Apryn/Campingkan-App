import 'package:flutter/material.dart';
import 'package:campingkan/HomeScreen.dart';
import '_theme.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SizedBox(
                height: double.infinity,
                width: double.infinity,
                child: Image.asset(
                  "assets/images/Gunung1.png",
                  fit: BoxFit.cover,
                )),
            Center(
              child: Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.only(bottom: 50),
                      // color: Colors.green,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "Campingkan?",
                            style: judul.copyWith(
                                color: Colors.white, fontSize: 35),
                          ),
                          Text(
                            "Bisa Camping Dimana Saja",
                            style: regular.copyWith(
                                color: Colors.white, fontSize: 11),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      margin: EdgeInsets.only(top: 100),
                      // color: Colors.red,
                      child: Column(
                        children: [
                          ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10))),
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return HomeScreen();
                                }));
                              },
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 10, horizontal: 15),
                                child: Text(
                                  "Get Started Now",
                                  style: medium.copyWith(color: Colors.black),
                                ),
                              ))
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

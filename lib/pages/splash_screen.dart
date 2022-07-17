import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:weather_app/pages/home/home_screen.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return Material(
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Image.asset(
                'assets/images/cloud-in-blue-sky.jpg',
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding:
                  EdgeInsets.only(top: MediaQuery.of(context).size.height * .1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Card(
                      color: Colors.lightBlue,
                      elevation: 22.0,
                      shadowColor: Colors.lightBlueAccent,
                      shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(12.0))),
                      child: Image.asset('assets/images/app_icon.png',
                          fit: BoxFit.contain)),
                  Text(
                    'balmy weather app'.toUpperCase(),
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.lightBlueAccent.withOpacity(.75),
                        fontWeight: FontWeight.w700,
                        wordSpacing: 1.5,
                        letterSpacing: 1.2),
                    textAlign: TextAlign.center,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * .025,
                      right: MediaQuery.of(context).size.width * .025,
                    ),
                    child: Card(
                      color: Colors.white10,
                      elevation: 22.0,
                      child: Padding(
                        padding: const EdgeInsets.all(22.0),
                        child: Text(
                          'View the current state or the next five days weather in your city || country, or search for the city || country through balmy-weather app'
                              .toUpperCase(),
                          style: TextStyle(
                              fontSize: 22,
                              color: Colors.white.withOpacity(.9),
                              fontWeight: FontWeight.w400,
                              wordSpacing: 1.5,
                              letterSpacing: 1.2),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 12.0, bottom: 12.0),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: IconButton(
                          onPressed: () => Get.to(HomeScreen()),
                          icon: CircleAvatar(
                            backgroundColor: Colors.white54,
                            child: Icon(
                              Icons.adaptive.arrow_forward,
                              color: Colors.white,
                            ),
                          )),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      );
    });
  }
}

import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
          stops: [0.1, 0.7],
          colors: [
            Color.fromARGB(255, 196, 148, 232),
            Color.fromARGB(255, 160, 101, 219),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SizedBox(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Stack(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
              ),
              const Positioned(
                bottom: 20,
                left: -20,
                child: RotatedBox(
                  quarterTurns: 3,
                  child: Text(
                    "Merhaba",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 130,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: SizedBox(
                    height: 8 * MediaQuery.of(context).size.height / 9,
                    // width: 3 * MediaQuery.of(context).size.width / 4,
                    child: Image.asset(
                      "assets/bm3.5.png",
                      fit: BoxFit.cover,
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:portfolio_app/viewmodels/detay_viewmodel.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DetayViewModel _detayModel =
        Provider.of<DetayViewModel>(context, listen: true);
    Color textColor = const Color.fromARGB(255, 25, 41, 73);
    Color textColor2 = const Color.fromARGB(255, 111, 139, 176);
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.centerRight,
            stops: [0.1, 0.4],
            colors: [
              Color.fromARGB(255, 205, 221, 242),
              Color.fromARGB(255, 216, 233, 243),
            ],
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Atahan HALICI",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 27,
                      color: textColor,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  "Mobile Developer",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 17,
                    color: textColor2,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(child: Center(child: Image.asset("assets/bm3.png"))),
              Container(
                padding: const EdgeInsets.all(25),
                height: MediaQuery.of(context).size.height / 2.7,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 244, 248, 252),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50))),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Size nasıl yardımcı olabilirim?",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 14,
                                color: textColor,
                              ),
                            ),
                            Text(
                              "Çalışmaya var mısın?",
                              style: TextStyle(
                                fontFamily: "Poppins",
                                fontSize: 12,
                                color: textColor2,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          height: 35,
                          width: 105,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 188, 130, 255),
                              borderRadius: BorderRadius.circular(20)),
                          child: const Center(
                            child: Text(
                              "Bana Ulaş",
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 12,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            _detayModel.deneyimgetir();
                            Navigator.pushNamed(context, "/detay");
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height / 5.5,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 241, 151, 188),
                                borderRadius: BorderRadius.circular(20)),
                            width:
                                (MediaQuery.of(context).size.width - 50 - 60) /
                                    3,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset("assets/icons/myworks.png"),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text(
                                  "Deneyimlerim",
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontSize: 12,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        GestureDetector(
                          onTap: () {
                            _detayModel.hakkimdagetir();
                            Navigator.pushNamed(context, "/detay");
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height / 5.5,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 124, 200, 210),
                                borderRadius: BorderRadius.circular(20)),
                            width:
                                (MediaQuery.of(context).size.width - 50 - 60) /
                                    3,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset("assets/icons/person2.png"),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text(
                                  "Hakkımda",
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontSize: 12,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        GestureDetector(
                          onTap: () {
                            _detayModel.nitelikgetir();
                            Navigator.pushNamed(context, "/detay");
                          },
                          child: Container(
                            height: MediaQuery.of(context).size.height / 5.5,
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 150, 176, 238),
                                borderRadius: BorderRadius.circular(20)),
                            width:
                                (MediaQuery.of(context).size.width - 50 - 60) /
                                    3,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset("assets/icons/skill.png"),
                                const SizedBox(
                                  height: 5,
                                ),
                                const Text(
                                  "Niteliklerim",
                                  style: TextStyle(
                                    fontFamily: "Poppins",
                                    fontSize: 12,
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

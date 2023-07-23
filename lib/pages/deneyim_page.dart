import 'dart:async';

import 'package:flutter/material.dart';
import 'package:portfolio_app/viewmodels/detay_viewmodel.dart';
import 'package:provider/provider.dart';

class DeneyimPage extends StatefulWidget {
  const DeneyimPage({Key? key}) : super(key: key);

  @override
  State<DeneyimPage> createState() => _DeneyimPageState();
}

class _DeneyimPageState extends State<DeneyimPage> {
  late Timer _timer;
  int _start = 5;
  bool _gizli = true;
  final ScrollController _scrollController = ScrollController();
  void startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (_start == 0) {
          if (_gizli == false) {
            _start = 5;
          } else {
            _start = 40;
          }

          _gizli = !_gizli;
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }

  @override
  void initState() {
    startTimer();
    super.initState();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    DetayViewModel _detayModel =
        Provider.of<DetayViewModel>(context, listen: true);
    return SafeArea(
        child: Container(
            decoration: BoxDecoration(color: _detayModel.backgroundColor),
            child: Scaffold(
                appBar: AppBar(
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                ),
                backgroundColor: Colors.transparent,
                body: Stack(
                  children: [
                    Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 20.0),
                            child: Text(
                              _detayModel.title,
                              style: const TextStyle(
                                  fontFamily: "Poppins",
                                  fontSize: 27,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          butonlar(_detayModel),
                          const SizedBox(
                            height: 20,
                          ),
                          detayKutu(_scrollController, _detayModel)
                        ]),
                    SizedBox(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width),
                    Visibility(
                      visible: _gizli,
                      child: TweenAnimationBuilder<double>(
                        tween: Tween<double>(begin: -300, end: 0),
                        duration: const Duration(seconds: 2),
                        builder:
                            (BuildContext context, double size, Widget? child) {
                          return Positioned(
                            right: 0,
                            bottom: size,
                            child: SizedBox(
                                height: MediaQuery.of(context).size.height / 3,
                                width: MediaQuery.of(context).size.width / 3,
                                child: Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Image.asset("assets/bm3.png"))),
                          );
                        },
                        child: const Icon(Icons.aspect_ratio),
                      ),
                    ),
                    Visibility(
                      visible: !_gizli,
                      child: TweenAnimationBuilder<double>(
                        tween: Tween<double>(begin: 0, end: -300),
                        duration: const Duration(seconds: 2),
                        builder:
                            (BuildContext context, double size, Widget? child) {
                          return Positioned(
                            right: 0,
                            bottom: size,
                            child: SizedBox(
                                height: MediaQuery.of(context).size.height / 3,
                                width: MediaQuery.of(context).size.width / 3,
                                child: Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Image.asset("assets/bm3.png"))),
                          );
                        },
                        child: const Icon(Icons.aspect_ratio),
                      ),
                    ),
                  ],
                ))));
  }

  Widget butonlar(DetayViewModel detayModel) {
    if (detayModel.title == "Hakkımda") {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
            onTap: () {
              if (detayModel.menuAdi != "Ben Kimim") {
                detayModel.menuDegis("Ben Kimim");
                _scrollController
                    .jumpTo(_scrollController.position.minScrollExtent);
              }
            },
            child: Column(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                      color: detayModel.menuAdi == "Ben Kimim"
                          ? Colors.white
                          : const Color.fromARGB(255, 150, 211, 219),
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                    child: Image.asset(detayModel.menuAdi == "Ben Kimim"
                        ? "assets/icons/usergreen.png"
                        : "assets/icons/user.png"),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "Ben Kimim",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 12,
                      color: detayModel.menuAdi == "Ben Kimim"
                          ? Colors.white
                          : const Color.fromARGB(169, 255, 255, 255),
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              if (detayModel.menuAdi != "Sosyal") {
                detayModel.menuDegis("Sosyal");
                _scrollController
                    .jumpTo(_scrollController.position.minScrollExtent);
              }
            },
            child: Column(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                      color: detayModel.menuAdi == "Sosyal"
                          ? Colors.white
                          : const Color.fromARGB(255, 150, 211, 219),
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    children: [
                      Center(
                        child: Image.asset(detayModel.menuAdi == "Sosyal"
                            ? "assets/icons/gdscgreen.png"
                            : "assets/icons/gdsc.png"),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "Sosyal",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 12,
                      color: detayModel.menuAdi == "Sosyal"
                          ? Colors.white
                          : const Color.fromARGB(169, 255, 255, 255),
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              if (detayModel.menuAdi != "Eğitim") {
                detayModel.menuDegis("Eğitim");
                _scrollController
                    .jumpTo(_scrollController.position.minScrollExtent);
              }
            },
            child: Column(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                      color: detayModel.menuAdi == "Eğitim"
                          ? Colors.white
                          : const Color.fromARGB(255, 150, 211, 219),
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                    child: Image.asset(detayModel.menuAdi == "Eğitim"
                        ? "assets/icons/schoolsgreen.png"
                        : "assets/icons/schools.png"),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "Eğitim",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 12,
                      color: detayModel.menuAdi == "Eğitim"
                          ? Colors.white
                          : const Color.fromARGB(169, 255, 255, 255),
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ],
      );
    } else if (detayModel.title == "Deneyimlerim") {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
            onTap: () {
              if (detayModel.menuAdi != "Projelerim") {
                detayModel.menuDegis("Projelerim");
                _scrollController
                    .jumpTo(_scrollController.position.minScrollExtent);
              }
            },
            child: Column(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                      color: detayModel.menuAdi == "Projelerim"
                          ? Colors.white
                          : const Color.fromARGB(197, 250, 191, 216),
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                    child: Image.asset(detayModel.menuAdi == "Projelerim"
                        ? "assets/icons/projelerpembe.png"
                        : "assets/icons/projeler.png"),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "Projelerim",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 12,
                      color: detayModel.menuAdi == "Projelerim"
                          ? Colors.white
                          : const Color.fromARGB(169, 255, 255, 255),
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              if (detayModel.menuAdi != "Deneyimlerim") {
                detayModel.menuDegis("Deneyimlerim");
                _scrollController
                    .jumpTo(_scrollController.position.minScrollExtent);
              }
            },
            child: Column(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                      color: detayModel.menuAdi == "Deneyimlerim"
                          ? Colors.white
                          : const Color.fromARGB(197, 250, 191, 216),
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                    child: Image.asset(detayModel.menuAdi == "Deneyimlerim"
                        ? "assets/icons/deneyimpembe.png"
                        : "assets/icons/deneyim.png"),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "Deneyimlerim",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 12,
                      color: detayModel.menuAdi == "Deneyimlerim"
                          ? Colors.white
                          : const Color.fromARGB(169, 255, 255, 255),
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ],
      );
    } else {
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          GestureDetector(
            onTap: () {
              if (detayModel.menuAdi != "Niteliklerim") {
                detayModel.menuDegis("Niteliklerim");
                _scrollController
                    .jumpTo(_scrollController.position.minScrollExtent);
              }
            },
            child: Column(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                      color: detayModel.menuAdi == "Niteliklerim"
                          ? Colors.white
                          : const Color.fromARGB(255, 183, 198, 235),
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                    child: Image.asset(detayModel.menuAdi == "Niteliklerim"
                        ? "assets/icons/nitelikmor.png"
                        : "assets/icons/nitelik.png"),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "Niteliklerim",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 12,
                      color: detayModel.menuAdi == "Niteliklerim"
                          ? Colors.white
                          : const Color.fromARGB(169, 255, 255, 255),
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              if (detayModel.menuAdi != "Yeteneklerim") {
                detayModel.menuDegis("Yeteneklerim");
                _scrollController
                    .jumpTo(_scrollController.position.minScrollExtent);
              }
            },
            child: Column(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                      color: detayModel.menuAdi == "Yeteneklerim"
                          ? Colors.white
                          : const Color.fromARGB(255, 183, 198, 235),
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                    child: Image.asset(detayModel.menuAdi == "Yeteneklerim"
                        ? "assets/icons/yetenekmor.png"
                        : "assets/icons/yetenek.png"),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "Yeteneklerim",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 12,
                      color: detayModel.menuAdi == "Yeteneklerim"
                          ? Colors.white
                          : const Color.fromARGB(169, 255, 255, 255),
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              if (detayModel.menuAdi != "Hobilerim") {
                detayModel.menuDegis("Hobilerim");
                _scrollController
                    .jumpTo(_scrollController.position.minScrollExtent);
              }
            },
            child: Column(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                      color: detayModel.menuAdi == "Hobilerim"
                          ? Colors.white
                          : const Color.fromARGB(255, 183, 198, 235),
                      borderRadius: BorderRadius.circular(20)),
                  child: Center(
                    child: Image.asset(detayModel.menuAdi == "Hobilerim"
                        ? "assets/icons/hobimor.png"
                        : "assets/icons/hobi.png"),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  "Hobilerim",
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 12,
                      color: detayModel.menuAdi == "Hobilerim"
                          ? Colors.white
                          : const Color.fromARGB(169, 255, 255, 255),
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ],
      );
    }
  }
}

Expanded detayKutu(ScrollController controller, DetayViewModel detayModel) {
  return Expanded(
    child: Container(
      padding: const EdgeInsets.only(top: 20, left: 25, right: 25),
      decoration: const BoxDecoration(
          color: Color.fromARGB(255, 242, 250, 251),
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50), topRight: Radius.circular(50))),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            detayModel.menuAdi,
            style: const TextStyle(
                fontFamily: "Poppins",
                fontSize: 20,
                color: Color.fromARGB(255, 54, 72, 100),
                fontWeight: FontWeight.bold),
          ),
          Expanded(
            child: SingleChildScrollView(
              controller: controller,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "What is Lorem Ipsum?",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 18,
                        color: Color.fromARGB(255, 54, 72, 100),
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 12,
                      color: Color.fromARGB(255, 160, 175, 196),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "What is Lorem Ipsum?",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 18,
                        color: Color.fromARGB(255, 54, 72, 100),
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 12,
                      color: Color.fromARGB(255, 160, 175, 196),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "What is Lorem Ipsum?",
                    style: TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 18,
                        color: Color.fromARGB(255, 54, 72, 100),
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                    style: TextStyle(
                      fontFamily: "Poppins",
                      fontSize: 12,
                      color: Color.fromARGB(255, 160, 175, 196),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

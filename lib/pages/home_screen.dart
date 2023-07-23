import 'package:flutter/material.dart';
import 'package:portfolio_app/viewmodels/detay_viewmodel.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: no_leading_underscores_for_local_identifiers
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
                        InkWell(
                          onTap: () {
                            banaUlas(context);
                          },
                          child: Container(
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

  banaUlas(BuildContext context) {
    return showDialog<void>(
      context: context,
      barrierDismissible: true, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "Bana Ulaş",
                style: TextStyle(
                  fontFamily: "Poppins",
                  color: Colors.black,
                ),
              ),
            ],
          ),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(25.0))),
          contentPadding: const EdgeInsets.all(20.0),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () async {
                    await launchUrlString(
                      "https://www.instagram.com/atahanhalici/",
                      mode: LaunchMode.externalNonBrowserApplication,
                    );

                    // ignore: use_build_context_synchronously
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 35,
                    width: 105,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 150, 47, 191),
                        borderRadius: BorderRadius.circular(15)),
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 25,
                          height: 25,
                          child: Image.asset("assets/instalogo.png"),
                        ),
                        const Text(
                          "İnstagram",
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 12,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Opacity(
                            opacity: 0,
                            child: SizedBox(
                              width: 25,
                              height: 25,
                              child: Image.asset("assets/instalogo.png"),
                            )),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () async {
                    await launchUrlString(
                      "https://twitter.com/atahanhalici",
                      mode: LaunchMode.externalNonBrowserApplication,
                    );

                    // ignore: use_build_context_synchronously
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 35,
                    width: 105,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 29, 161, 242),
                        borderRadius: BorderRadius.circular(15)),
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 25,
                          height: 25,
                          child: Image.asset("assets/twitterlogo.png"),
                        ),
                        const Text(
                          "Twitter",
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 12,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Opacity(
                            opacity: 0,
                            child: SizedBox(
                              width: 25,
                              height: 25,
                              child: Image.asset("assets/twitterlogo.png"),
                            )),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () async {
                    await launchUrlString(
                      "https://www.threads.net/@atahanhalici",
                      mode: LaunchMode.externalNonBrowserApplication,
                    );

                    // ignore: use_build_context_synchronously
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 35,
                    width: 105,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 20, 23, 26),
                        borderRadius: BorderRadius.circular(15)),
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 25,
                          height: 25,
                          child: Image.asset("assets/threadslogo.png"),
                        ),
                        const Text(
                          "Threads",
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 12,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Opacity(
                            opacity: 0,
                            child: SizedBox(
                              width: 25,
                              height: 25,
                              child: Image.asset("assets/threadslogo.png"),
                            )),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () async {
                    await launchUrlString(
                      "https://www.linkedin.com/in/atahan-hal%C4%B1c%C4%B1-698194228/",
                      mode: LaunchMode.externalNonBrowserApplication,
                    );

                    // ignore: use_build_context_synchronously
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 35,
                    width: 105,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 0, 119, 181),
                        borderRadius: BorderRadius.circular(15)),
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 25,
                          height: 25,
                          child: Image.asset("assets/linkedinlogo.png"),
                        ),
                        const Text(
                          "Linkedin",
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 12,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Opacity(
                            opacity: 0,
                            child: SizedBox(
                              width: 25,
                              height: 25,
                              child: Image.asset("assets/linkedinlogo.png"),
                            )),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () async {
                    await launchUrlString(
                      "https://github.com/atahanhalici",
                      mode: LaunchMode.externalNonBrowserApplication,
                    );

                    // ignore: use_build_context_synchronously
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 35,
                    width: 105,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 23, 21, 21),
                        borderRadius: BorderRadius.circular(15)),
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 25,
                          height: 25,
                          child: Image.asset("assets/githublogo.png"),
                        ),
                        const Text(
                          "Github",
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 12,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Opacity(
                            opacity: 0,
                            child: SizedBox(
                              width: 25,
                              height: 25,
                              child: Image.asset("assets/githublogo.png"),
                            )),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () async {
                    Uri mail = Uri.parse("mailto:atahanhalici@gmail.com");
                    await launchUrl(mail);

                    // ignore: use_build_context_synchronously
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 35,
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 0, 114, 198),
                        borderRadius: BorderRadius.circular(15)),
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: 25,
                          height: 25,
                          child: Image.asset("assets/maillogo.png"),
                        ),
                        const Text(
                          "E-Mail",
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontSize: 12,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        Opacity(
                            opacity: 0,
                            child: SizedBox(
                              width: 25,
                              height: 25,
                              child: Image.asset("assets/maillogo.png"),
                            )),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text(
                "Kapat",
                style: TextStyle(
                  fontFamily: "Poppins",
                  color: Colors.black,
                ),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}

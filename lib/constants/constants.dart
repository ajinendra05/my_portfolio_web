// import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_portfolio_web/screens/home_screen.dart';
import 'package:my_portfolio_web/screens/projects.dart';
import 'package:my_portfolio_web/widgets/drawer.dart';
import 'package:url_launcher/url_launcher.dart';

import '../data/data.dart';

Color kGrey = const Color(0xFF334055);
Color kPrimaryColor = const Color(0xFF334055);
Color kWhite = Colors.white;
Color kBlack = Colors.black;

TextStyle kTitleText = GoogleFonts.merriweather(
  color: Colors.white,
  fontSize: 35.0,
  fontWeight: FontWeight.bold,
);

TextStyle kUserName = GoogleFonts.pacifico(
  color: Colors.black,
  fontSize: 20,
  // fontWeight: FontWeight.bold,
);
TextStyle kTabBar = GoogleFonts.gothicA1(
  color: Colors.black,
  fontSize: 12,
  fontWeight: FontWeight.bold,
);

TextStyle kSubTitleText = GoogleFonts.montserrat(
  color: const Color.fromARGB(174, 238, 232, 232),
  fontWeight: FontWeight.bold,
  fontSize: 12.0,
);
TextStyle kNormalText = GoogleFonts.inconsolata(
  color: const Color.fromARGB(174, 238, 232, 232),
  fontWeight: FontWeight.bold,
  fontSize: 22.0,
);
TextStyle kNormalText2 = GoogleFonts.inconsolata(
  color: const Color.fromARGB(225, 246, 243, 243),
  // fontWeight: FontWeight.bold,
  fontSize: 18,
);

TextStyle kSectionTitleText = GoogleFonts.crimsonPro(
  color: Colors.white,
  fontWeight: FontWeight.w500,
  fontSize: 30.0,
);

ElevatedButtonThemeData elevatedButtonThemeData = ElevatedButtonThemeData(
  style: ButtonStyle(
    backgroundColor: MaterialStateColor.resolveWith((states) => kGrey),
    foregroundColor: MaterialStateColor.resolveWith(
      (Set<MaterialState> states) {
        if (states.contains(MaterialState.hovered)) return Colors.black;
        if (states.contains(MaterialState.focused) ||
            states.contains(MaterialState.pressed)) return Colors.white;
        return kGrey; // Defer to the widget's default.
      },
    ),
  ),
);

Widget getHeader(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 400,
    decoration: BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          kGradient1,
          kGradient2,
        ],
      ),
    ),
    child: MediaQuery.of(context).size.width > 500
        ? Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 35,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Text('@$username', style: kUserName),
                    ),
                    MediaQuery.of(context).size.width > 1200
                        ? Row(
                            children: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const HomeScreen()));
                                  },
                                  child: Text(
                                    "HOME",
                                    style: kTabBar.copyWith(fontSize: 15),
                                  )),
                              TextButton(
                                  onPressed: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Project_Screen()));
                                  },
                                  child: Text(
                                    "PROJECTS",
                                    style: kTabBar.copyWith(fontSize: 15),
                                  )),
                              TextButton(
                                  onPressed: () async {
                                    final Uri linktree =
                                        Uri.parse(contactLinktree);
                                    await launchUrl(linktree);
                                  },
                                  child: Text(
                                    "CONTACTS",
                                    style: kTabBar.copyWith(fontSize: 15),
                                  )),
                              const SizedBox(
                                width: 20,
                              )
                            ],
                          )
                        : Row(
                            children: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const HomeScreen()));
                                  },
                                  child: Text(
                                    "HOME",
                                    style: kTabBar,
                                  )),
                              TextButton(
                                  onPressed: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Project_Screen()));
                                  },
                                  child: Text(
                                    "PROJECTS",
                                    style: kTabBar,
                                  )),
                              TextButton(
                                  onPressed: () async {
                                    final Uri _linktree =
                                        Uri.parse(contactLinktree);
                                    await launchUrl(_linktree);
                                  },
                                  child: Text(
                                    "CONTACTS",
                                    style: kTabBar,
                                  ))
                            ],
                          ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: CircleAvatar(
                        radius: 60,
                        backgroundImage: AssetImage(imagePath),
                      ),
                    ),
                    Center(
                        child: Text(
                      name,
                      style: kTitleText.copyWith(color: Colors.white),
                    )),
                    const SizedBox(
                      height: 10,
                    ),
                    const Divider(),
                    const Center(
                        child: Text(
                      'Empatheic, Communicative & Enthusiastic.',
                      style: TextStyle(fontSize: 15),
                    )),
                    const SizedBox(
                      height: 6,
                    )
                  ],
                ),
              ),
            ],
          )
        : Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: CircleAvatar(
                        radius: 60,
                        backgroundImage: AssetImage(imagePath),
                      ),
                    ),
                    Center(
                        child: Text(
                      name,
                      style: kTitleText.copyWith(
                          color: Colors.white,
                          fontSize: MediaQuery.of(context).size.width * 0.07),
                    )),
                    const SizedBox(
                      height: 10,
                    ),
                    const Divider(),
                    const Center(
                        child: Text(
                      'Empatheic, Communicative & Enthusiastic.',
                      style: TextStyle(fontSize: 15),
                    )),
                    const SizedBox(
                      height: 6,
                    )
                  ],
                ),
              ),
            ],
          ),
  );
}

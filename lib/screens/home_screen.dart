import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constants/constants.dart';
import '../data/data.dart';
import '../widgets/drawer.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/Home';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 22, 20, 20),
      appBar: screenSize.width > 500
          ? null
          : AppBar(
              backgroundColor: kGradient2,
            ),
      drawer: screenSize.width > 500
          ? null
          : const Drawer(
              child: MyDrawer(),
            ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            getHeader(context),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: screenSize.width > 1200
                    ? Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Flexible(
                            flex: 3,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // const Divider(),
                                Text("About Me", style: kSectionTitleText),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  aboutMeSummary,
                                  style: kNormalText,
                                ),
                                Text(
                                  aboutMeSummary2,
                                  style: kNormalText2.copyWith(
                                      wordSpacing: 2, fontSize: 20),
                                ),
                                Text(
                                  "Experience",
                                  style: kSectionTitleText,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  aboutWorkExperience,
                                  style: kNormalText2.copyWith(
                                      wordSpacing: 2, fontSize: 20),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 30,
                          ),
                          Flexible(
                            flex: 1,
                            child: Column(
                              children: [
                                Card(
                                  // color: Colors.white,
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 20, horizontal: 40),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Location",
                                          style: kSubTitleText,
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            const Icon(
                                              Icons.location_pin,
                                              size: 16,
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              location,
                                              style: const TextStyle(
                                                  color: Colors.white),
                                            )
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        OutlinedButton(
                                            onPressed: () async {
                                              //Call to launch email
                                              final Uri emailLaunchUri = Uri(
                                                scheme: 'mailto',
                                                path: contactEmail,
                                              );
                                              await launchUrl(emailLaunchUri);
                                            },
                                            child: Text(
                                              "Email",
                                              style: kSubTitleText,
                                            )),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        OutlinedButton(
                                            onPressed: () async {
                                              final Uri linktree =
                                                  Uri.parse(contactLinktree);
                                              await launchUrl(linktree);
                                            },
                                            child: SizedBox(
                                              width: 80,
                                              child: Row(
                                                children: [
                                                  const Icon(
                                                    Icons.launch,
                                                    size: 16,
                                                    color: Colors.white,
                                                  ),
                                                  const SizedBox(
                                                    width: 5,
                                                  ),
                                                  Text(
                                                    "Contact's",
                                                    style: kSubTitleText,
                                                  )
                                                ],
                                              ),
                                            )),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    : Column(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // const Divider(),
                              const SizedBox(
                                height: 10,
                              ),
                              Text("About Me", style: kSectionTitleText),
                              // const SizedBox(
                              //   height: 5,
                              // ),
                              Text(aboutMeSummary, style: kNormalText),
                              Text(
                                aboutMeSummary2,
                                style: kNormalText2,
                              ),
                              Text(
                                "Experience",
                                style: kSectionTitleText,
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                aboutWorkExperience,
                                style: kNormalText2,
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Card(
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 20, horizontal: 40),
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Location",
                                          style: kSubTitleText,
                                        ),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            const Icon(
                                              Icons.location_pin,
                                              size: 16,
                                            ),
                                            const SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              location,
                                              style: const TextStyle(
                                                  color: Colors.white),
                                            )
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        OutlinedButton(
                                            onPressed: () async {
                                              //Call to launch email
                                              final Uri emailLaunchUri = Uri(
                                                scheme: 'mailto',
                                                path: contactEmail,
                                              );
                                              await launchUrl(emailLaunchUri);
                                            },
                                            child: SizedBox(
                                              width: 80,
                                              child: Center(
                                                child: Text(
                                                  "Email",
                                                  style: kSubTitleText,
                                                ),
                                              ),
                                            )),
                                        const SizedBox(
                                          height: 20,
                                        ),
                                        OutlinedButton(
                                            onPressed: () async {
                                              final Uri _linktree =
                                                  Uri(path: contactLinktree);
                                              await launchUrl(_linktree);
                                            },
                                            child: SizedBox(
                                              width: 80,
                                              child: Row(
                                                children: [
                                                  const Icon(
                                                    Icons.launch,
                                                    size: 16,
                                                    color: Colors.white,
                                                  ),
                                                  const SizedBox(
                                                    width: 5,
                                                  ),
                                                  Text(
                                                    "Contact's",
                                                    style: kSubTitleText,
                                                  )
                                                ],
                                              ),
                                            )),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                      ]),
                                ),
                              )
                            ],
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
}

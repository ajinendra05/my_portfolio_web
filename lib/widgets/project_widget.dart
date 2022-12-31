import 'package:flutter/material.dart';
import 'package:my_portfolio_web/data/data.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constants/constants.dart';
import '../models/project_model.dart';

class ProjectWidget extends StatelessWidget {
  final Project projectData;
  final int index;
  const ProjectWidget(
      {Key? key, required this.projectData, required this.index})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (ctx, constrain) {
        return SizedBox(
            width: MediaQuery.of(context).size.width * 0.4,
            // height: MediaQuery.of(context).size.width < 500
            //     ? MediaQuery.of(context).size.height * 0.6
            //     : MediaQuery.of(context).size.height * 0.4,
            child: Card(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(constrain.maxWidth * 0.03),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.android,
                            // color: kGrey,
                            size: 18,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: constrain.maxHeight * 0.17,
                            width: constrain.maxWidth * 0.8,
                            alignment: Alignment.centerLeft,
                            child: FittedBox(
                              child: Text(
                                projectData.name,
                                style: kSectionTitleText.copyWith(
                                    // backgroundColor: Colors.amber,
                                    fontSize: constrain.maxHeight * 0.17),
                                // overflow: TextOverflow.clip,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        projectData.description,
                      ),
                    ),
                    Spacer(flex: (constrain.maxHeight * 0.2).toInt()),
                    const Divider(),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: EdgeInsets.all(constrain.maxHeight * 0.04),
                        child: ButtonTheme(
                          height: constrain.maxHeight * 0.1,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: kGradient2,
                            ),
                            // maximumSize:
                            //     Size.fromHeight(constrain.maxHeight * 0.1)),
                            onPressed: () async {
                              //Launch project on GitHub
                              if (index == 2) {
                                showDialog(
                                  barrierColor: Color.fromARGB(182, 24, 23, 23),
                                  context: context,
                                  builder: (context) {
                                    return const SimpleDialog(
                                      titlePadding: EdgeInsets.symmetric(
                                          horizontal: 30, vertical: 50),
                                      title: Text(
                                          "you are already on that  ;)   \n  THANKS!!"),
                                    );
                                  },
                                );
                              } else {
                                final Uri _url = Uri.parse(projectData.link);
                                await launchUrl(_url);
                              }
                            },
                            child: Text(
                              "View Project",
                              style: kSubTitleText.copyWith(
                                  color: Colors.white,
                                  fontSize: constrain.maxHeight * 0.08),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ]),
            ));
      },
    );
  }
}

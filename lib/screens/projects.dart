import 'package:flutter/material.dart';

import '../constants/constants.dart';
import '../data/data.dart';
import '../widgets/drawer.dart';
import '../widgets/project_widget.dart';

class Project_Screen extends StatelessWidget {
  const Project_Screen({super.key});
  static const routeName = '/ProjectScreen';
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
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
      // appBar: appBarForBigScreen,
      body: SingleChildScrollView(
        child: Column(
          children: [
            getHeader(context),
            Center(
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: screenSize.width > 1000
                    ? GridView.builder(
                        shrinkWrap: true,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2, childAspectRatio: 3),
                        itemCount: projectList.length,
                        itemBuilder: (BuildContext context, int index) {
                          return ProjectWidget(
                            projectData: projectList[index],
                            index: index,
                          );
                        })
                    : GridView.builder(
                        shrinkWrap: true,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 1, childAspectRatio: 1.5),
                        itemCount: projectList.length,
                        itemBuilder: (BuildContext context, int index) {
                          return ProjectWidget(
                            projectData: projectList[index],
                            index: index,
                          );
                        }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

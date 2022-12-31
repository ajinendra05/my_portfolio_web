import 'package:flutter/material.dart';
import '../models/project_model.dart';

//Update with colors of your choice for dp background gradient
Color kGradient2 = const Color.fromARGB(255, 58, 14, 72);
Color kGradient1 = const Color.fromARGB(255, 220, 17, 115);

String imagePath = "images/proff.jpg";

//String data to modify
String name = "AJINENDRA RAJPOOT";
String username = "ajinendra05";

//Link to resume on Google Drive
// String resumeLink =
//     "https://drive.google.com/file/d/1uZPqMWva6pZxzQxsR_ILLZ_FxJr24QeY/view?usp=sharing";

//Contact Email
String contactEmail = "ajinendra05@gmail.com";

String contactLinktree = "https://linktr.ee/ajinendra05";

String aboutWorkExperience = '''
I’m completed my secondary and higher secondary’s education from JNV Mandla. 
Starting my tech development path from unity game engine to a flutter developer, I enjoyed learning new techs to solve problems and to developing new products every time. I have knowledge and work on both cross (Flutter Framework), confined on native (Android Studio). 
 
''';

String aboutMeSummary = '''

Hello!  I'm Meticulous and creative Mobile App Developer with good knowledge of flutter framework and Android Studio.
''';
String aboutMeSummary2 = '''
Currently I'm pursuing my B.Tech in Computer Science Engineering from Madhav Institute of Technology and Science(MITS) Gwalior. Technology is great passion of mine and I'm very interested in things like engineering, programming, network communication and technology. Writing code and creating new products is one of my favourite things to do, I really like the creativity and problem-solving that comes with it. I’m not only technical but also have a good practice of playing basketball. I’m always in to explore new things. Looking To leverage my skills and expertise for the position as an Android Developer in flutter. 
''';

String location = "Jabalpur, India";
String website = "adityathakur.in";
String portfolio = "adityathakurxd";
String email = "ajinendra05@gmail.com";

List<Project> projectList = [
  Project(
      name: "PlaceMentor",
      description:
          "A platform that bridges the gap between Training & Placement Cell and Students of college \n \n FLutter, Firebase, Provider",
      link: "https://placementor-ajinendra05.webflow.io/"),
  Project(
      name: "Customised Search Engine",
      description:
          "Created a custom search engine with the help of flutter which is responsive on both desktop as well as mobile. \n \n Google custom Search API,flutter,pagination",
      link: "https://github.com/ajinendra05/custom-google-search-"),
  // Project(
  //     name: "Fiasco",
  //     description:
  //         "Fiasco is one stop solution to help you manage Family expenses in one place!",
  //     link: "https://github.com/adityathakurxd/fiasco"),
  Project(
      name: "Portfolio Website",
      description:
          "A portfolio website with flutter framwork, responsive on both mobile and desktop",
      link: "https://github.com/ajinendra05/my_portfolio_web")
];

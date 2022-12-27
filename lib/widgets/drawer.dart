import 'package:flutter/material.dart';
import 'package:my_portfolio_web/data/data.dart';
import 'package:my_portfolio_web/screens/home_screen.dart';
import 'package:my_portfolio_web/screens/projects.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  Widget buildListTile(thistitle, thisicon, funcionHandler) {
    return ListTile(
      // tileColor: Color.fromARGB(143, 177, 140, 137),
      leading: Icon(
        thisicon,
        size: 25,
      ),
      title: Text(
        thistitle,
        style: const TextStyle(
            // backgroundColor: Color.fromARGB(143, 177, 140, 137),
            fontFamily: "Neuton",
            fontSize: 20),
      ),
      onTap: funcionHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          // color: Colors.pink,
          decoration: const BoxDecoration(
              color: Color.fromARGB(255, 220, 17, 115),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15))),
          height: 80,
          width: double.infinity,
          padding: const EdgeInsets.all(10),
          alignment: Alignment.center,
          child: Text(
            '@$username',
            style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: "Neuton",
                fontSize: 23),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        buildListTile("Home", Icons.home, () {
          Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => const HomeScreen(),
          ));
        }),
        buildListTile("Projects", Icons.work, () {
          Navigator.of(context).pushReplacementNamed(Project_Screen.routeName);
        }),
      ],
    );
  }
}

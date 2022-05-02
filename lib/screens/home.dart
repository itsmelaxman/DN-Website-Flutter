import 'package:flutter/material.dart';
import 'package:website/constants/colors.dart';
import 'package:website/screens/nab-bar/navbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                gradient1,
                gradient2,
              ]),
        ),
        child: Column(
          children: const [
            NavBar(),
          ],
        ),
      ),
    );
  }
}

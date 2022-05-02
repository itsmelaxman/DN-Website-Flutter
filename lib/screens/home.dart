import 'package:flutter/material.dart';
import 'package:website/constants/colors.dart';
import 'package:website/screens/nab-bar/navbar.dart';

import 'landing-page/landing_screen.dart';

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
        child: SingleChildScrollView(
          child: Column(
            children: const [
              NavBar(),
              Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 20.0,
                  horizontal: 40.0,
                ),
                child: LandingPage(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

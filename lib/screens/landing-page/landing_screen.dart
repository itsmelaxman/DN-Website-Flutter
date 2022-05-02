import 'package:flutter/material.dart';

import '../../widgets/custom_button.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  List<Widget> pageChildren(double width) {
    return <Widget>[
      Container(
        width: width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Do you want to',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.2,
                  color: Colors.white),
            ),
            const SizedBox(height: 10),
            const Text(
              'Digitalize your school ?',
              style: TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.w900,
                color: Color(0xffffefb8),
                letterSpacing: 1.2,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Great, you are at the right place. We offer you the best Management Software for your school. Digital Nepal SMS Software is Complete, Easy, and Flexible',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 1.2,
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              'Version: v2022.4.7 ',
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 1.2,
              ),
            ),
            const SizedBox(height: 30),
            Row(
              children: [
                CustomButton(
                  label: 'Request a Demo',
                  onTap: () {},
                  fillButton: true,
                  radius: 15,
                  height: 48,
                  width: 150,
                ),
                const SizedBox(width: 20),
                CustomButton(
                  label: 'Demo Login',
                  onTap: () {},
                  fillButton: true,
                  radius: 15,
                  height: 48,
                  width: 150,
                ),
              ],
            ),
          ],
        ),
      ),
      const SizedBox(
        width: 100,
      ),
      Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 30.0,
        ),
        child: Image.asset(
          'assets/images/hero-image.png',
          fit: BoxFit.contain,
          width: 400,
          height: 400,
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: pageChildren(constraints.biggest.width / 2),
          );
        } else {
          return Column(
            children: pageChildren(constraints.biggest.width),
          );
        }
      },
    );
  }
}

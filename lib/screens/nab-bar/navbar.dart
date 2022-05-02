import 'package:flutter/material.dart';
import 'package:website/constants/colors.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return const DesktopNavBar();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return const DesktopNavBar();
        } else {
          return const MobileNavBar();
        }
      },
    );
  }
}

class DesktopNavBar extends StatelessWidget {
  const DesktopNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 20,
        horizontal: 40,
      ),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'assets/images/logo.png',
              height: 100,
              width: 150,
            ),
            Row(
              children: [
                const Text(
                  'Home',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                const SizedBox(width: 30),
                const Text(
                  'About Us',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                const SizedBox(width: 30),
                const Text(
                  'Products',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                const SizedBox(width: 30),
                const Text(
                  'Blog',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                const SizedBox(width: 30),
                const Text(
                  'FAQ',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                const SizedBox(width: 30),
                const Text(
                  'Contact Us',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                const SizedBox(width: 30),
                Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        gradient1,
                        gradient2,
                      ],
                    ),
                  ),
                  child: MaterialButton(
                    onPressed: () {},
                    highlightColor: Colors.transparent,
                    child: const Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                      side: const BorderSide(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MobileNavBar extends StatelessWidget {
  const MobileNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Image.asset(
          'assets/images/logo.png',
          height: 100,
          width: 150,
        ),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'Home',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              SizedBox(width: 30),
              Text(
                'About Us',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              SizedBox(width: 30),
              Text(
                'Products',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              SizedBox(width: 30),
              Text(
                'Blog',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              SizedBox(width: 30),
              Text(
                'FAQ',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              SizedBox(width: 30),
              Text(
                'Contact Us',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}

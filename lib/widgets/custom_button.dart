import 'package:flutter/material.dart';

import '../constants/colors.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final Function onTap;
  final bool fillButton;
  final double radius;
  final double height;
  final double width;
  const CustomButton(
      {Key? key,
      required this.label,
      required this.onTap,
      this.fillButton = false,
      this.radius = 25,
      this.height = 48,
      this.width = 36})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap();
      },
      child: Container(
          height: height,
          width: width,
          decoration: fillButton
              ? BoxDecoration(
                  borderRadius: BorderRadius.circular(radius),
                  border: Border.all(width: 1, color: Colors.white),
                  gradient: const LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      gradient2,
                      gradient1,
                    ],
                  ),
                )
              : BoxDecoration(
                  borderRadius: BorderRadius.circular(radius),
                  border: Border.all(width: 1, color: gradient2),
                  color: Colors.transparent),
          child: Center(
            child: Text(label,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: fillButton ? kLightGrey : gradient2,
                )),
          )),
    );
  }
}

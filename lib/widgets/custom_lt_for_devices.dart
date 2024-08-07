import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../constants/constants.dart';

class LTDevices extends StatelessWidget {
  const LTDevices(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.function,
      required this.icon,
      required this.endText});
  final String title;
  final String subTitle;
  final VoidCallback function;
  final String icon;
  final String endText;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {},
      color: Colors.white,
      hoverColor: Colors.white,
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8),
        borderSide: BorderSide.none,
      ),

      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 18,
                      fontFamily: 'Dexef',
                      color: Color(0xff274268)),
                ),
                SvgPicture.asset(
                  icon,
                  height: 36,
                  width: 36,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(right:65.0),
              child: Text(
                subTitle,
                style: const TextStyle(
                  height: 2,
                    fontSize: 12, fontFamily: 'Dexef', color: Color(0xff5D718D)),
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            Text(
              endText,
              style: const TextStyle(
                  fontSize: 14, fontFamily: 'Dexef', color: Color(0xff274268)),
            ),
          ],
        ),
      ),
    );
  }
}

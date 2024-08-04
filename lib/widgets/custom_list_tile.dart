import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile(
      {super.key,
        required this.page,
        required this.image,
        required this.title});
  final Widget page;
  final String image;
  final String title;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      focusColor: const Color(0xffDAEAFD),
      leading: SvgPicture.asset(image),
      title: Text(
        title,
        style: const TextStyle(
          color: Color(0xff5D718D),
          fontFamily: 'Dexef',
        ),
      ),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => page));
      },
      contentPadding: const EdgeInsets.only(left: 40, top: 8),
    );
  }
}
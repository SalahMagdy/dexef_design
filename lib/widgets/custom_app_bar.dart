import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'custom_text_field.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.function});
  final VoidCallback function;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: function,
          icon: const Icon(Icons.menu),
        ),
        const SizedBox(
          width: 10,
        ),
        SvgPicture.asset(
          'assets/images/dexef_logo_body.svg',
        ),
        // const SizedBox(
        //   width: 346,
        // ),
        const Spacer(),
        const CustomTextField(
          width: 400,
          elevation: 10,
          borderRadius: 25,
          hint: 'Search',
          color: Colors.white,
        ),
        // const SizedBox(width: 295,),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.help_outline_rounded),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.language_rounded),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.notifications_none_rounded),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.person_outline_rounded),
        ),
      ],
    );
  }
}
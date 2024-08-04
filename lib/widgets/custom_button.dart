import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.backGroundColor, required this.textColor, required this.text, required this.radius, required this.padding, required this.borderColor, required this.function});
  final Color backGroundColor ;
  final Color textColor ;
  final Color borderColor ;
  final String text ;
  final double radius;
  final double padding ;
  final VoidCallback  function ;

  @override
  Widget build(BuildContext context) {
    return  MaterialButton(
      shape: OutlineInputBorder(borderRadius: BorderRadius.circular(radius),borderSide: BorderSide(color:borderColor),),
      padding:  EdgeInsets.symmetric(horizontal: padding,vertical: 15),
      color: backGroundColor,
      onPressed: function,
      child:  Text(text,
        style: TextStyle(
          color: textColor,
          fontSize: 14,
          fontFamily: 'Dexef',
        ),),
    );
  }
}
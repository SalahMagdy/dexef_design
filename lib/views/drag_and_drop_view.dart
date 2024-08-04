import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import '../widgets/custom_button.dart';

class DragAndDropView extends StatelessWidget {
  const DragAndDropView({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      titlePadding: const EdgeInsets.only(top: 10, right: 30, left: 10),
      shape: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.transparent),
        borderRadius: BorderRadius.all(
          Radius.circular(16),
        ),
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(
              Icons.close,
              color: Color(0xff707070),
            ),

          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: DottedBorder(
              radius: const Radius.circular(24),
              color: const Color(0xff3F97F6),
              child: Container(
                width: 440,
                height: 230,
                decoration: const BoxDecoration(color: Color(0xffF5F9FE)),
                child:  Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.cloud_upload,
                      size: 40,
                      color: Color(0xff5D718D),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Drag & Drop Photo Here',
                      style: TextStyle(
                          color: Color(0xff274268),
                          fontFamily: 'Dexef',
                          fontSize: 20),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    const Text(
                      'or',
                      style: TextStyle(
                          color: Color(0xff274268),
                          fontFamily: 'Dexef',
                          fontSize: 20),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    CustomButton(
                      function: (){},
                        backGroundColor: const Color(0xffC4DEFC),
                        textColor: Colors.black,
                        text: 'Browse Photos',
                        radius: 8,
                        padding: 25,
                        borderColor: Colors.transparent)
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      content:  Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomButton(
            function: (){},
              backGroundColor: Colors.blue,
              textColor: Colors.white,
              text: 'Upload',
              radius: 8,
              padding: 50,
              borderColor: Colors.transparent),
          const SizedBox(
            width: 12,
          ),
          CustomButton(
            function: ()
            {
              Navigator.pop(context);
            },
              backGroundColor: Colors.white,
              textColor: Colors.blue,
              text: 'Cancel',
              radius: 8,
              padding: 50,
              borderColor: Colors.blue),
        ],
      ),
      contentPadding: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
    );
  }
}

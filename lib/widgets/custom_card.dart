import 'package:flutter/material.dart';
import 'package:second_design/widgets/triangle_paint.dart';

import 'free_trial_button.dart';
// import 'package:flutter_svg/svg.dart';

class CustomCard extends StatelessWidget {
  const  CustomCard(
      {super.key, required this.title,
        required this.description,
        required this.function,
        this.data,
        required this.color,
        required this.crossAxisAlignment
      });
  final String title;
  final String description;
  final VoidCallback function ;
  final Widget? data;
  final Color color ;
  final CrossAxisAlignment crossAxisAlignment ;

  @override
  Widget build(BuildContext context) {
    return Stack(


      children: [


        Card(

          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(left: 30, top: 70),
            child: Column(
              crossAxisAlignment: crossAxisAlignment,
              children: [

                Text(
                  title,
                  style: const TextStyle(
                    fontFamily: 'Dexef',
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  description,
                  style: const TextStyle(
                    fontSize: 12,
                    height: 2,
                    fontFamily: 'Dexef',
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                const Text(
                  'Starting :',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: 'Dexef',
                    color: Color(0xff929FB2),
                  ),
                ),
                const Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '15000',
                      style: TextStyle(
                          fontSize: 18,
                          color: Color(0xff274268),
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'EGP',
                      style: TextStyle(
                          fontSize: 12,
                          color: Color(0xff274268),
                          fontFamily: 'Dexef'),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),

        FreeTrailButton(function: function),
        Positioned(
          top: 3,
          right: 3,
          child: Container(
            width:110,
            height: 115,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(topRight: Radius.circular(16)),
              color: Colors.transparent,
            ),
            child:  CustomPaint(
              painter: TrianglePaint(color: color),

              child: Padding(
                padding: const EdgeInsets.only(left: 50.0,top: 25),
                child: data == null? const Text('') : data!,
                ),
              ),


            ),
          ),

      ],
    );
  }
}




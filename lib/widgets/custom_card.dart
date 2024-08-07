import 'package:flutter/material.dart';
import 'package:second_design/widgets/triangle_paint.dart';

class CustomCard extends StatelessWidget {
  const  CustomCard(
      {super.key, required this.title,
        required this.description,
        this.data,
        required this.color,
        required this.crossAxisAlignment,
        required this.content,
        this.freeTrialButton,
        this.textButton
      });
  final String title;
  final String description;
  final Widget? data;
  final Color color ;
  final CrossAxisAlignment crossAxisAlignment ;
  final Widget content ;
  final Widget? freeTrialButton ;
  final Widget? textButton ;

  @override
  Widget build(BuildContext context) {
    return Stack(


      children: [


        Card(
          clipBehavior: Clip.hardEdge,

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
                    color: Color(0xff274268)
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                content,
              ],
            ),
          ),
        ),
        freeTrialButton==null? const Text('') : freeTrialButton!,
        textButton==null? const Text('') : textButton!,
        // FreeTrailButton(function: function),
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




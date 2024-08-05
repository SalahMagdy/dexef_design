import 'package:flutter/material.dart';
import 'package:second_design/views/dexef_one.dart';


void main() {
  runApp(const DexefApp());
}

class DexefApp extends StatelessWidget {
  const DexefApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
     debugShowCheckedModeBanner: false,
      home:DexefOne(),
    );
  }
}


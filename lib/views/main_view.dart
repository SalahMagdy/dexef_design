import 'package:flutter/material.dart';
import 'package:second_design/views/drag_and_drop_view.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/custom_card.dart';
import '../widgets/custom_switch.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF5F7FA),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 24, left: 30),
          child: Stack(
            children: [
              Column(
                children: [
                   CustomAppBar(function: () {},),
                  Column(
                    children: [
                      const SizedBox(
                        height: 64,
                      ),
                      const Text(
                        'DEXEF , The Best Way To Buy The Products You Love.',
                        style: TextStyle(
                          fontFamily: 'Dexef',
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff5D718D),
                        ),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Applications',
                            style: TextStyle(
                              fontFamily: 'Dexef',
                              color: Color(0xff274268),
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          CustomSwitch(
                            status: false,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Addons',
                            style: TextStyle(
                              fontFamily: 'Dexef',
                              fontSize: 20,
                              color: Color(0xff929FB2),
                            ),
                          ),
                        ],
                      ),
                      GridView(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 3,
                                mainAxisSpacing: 30,
                                crossAxisSpacing: 30),
                        padding: const EdgeInsets.only(
                            right: 140, left: 110, top: 48, bottom: 48),
                        children: [
                          CustomCard(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            color: const Color(0xff2E8B57),
                            data: const Text('50%',style: TextStyle(color: Colors.white,fontSize: 20),),
                            title: 'Super Market',
                            description:
                                'Supports invoices, orders, quotations, expenses and revenues, commission rates',

                            function: () {
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return const DragAndDropView() ;
                                  });
                            },
                          ),
                          CustomCard(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            color: const Color(0xffFF8000),
                            data: const Text('50%',style: TextStyle(color: Colors.white,fontSize: 20),),
                            title: 'Super Market',
                            description:
                                'Supports invoices, orders, quotations, expenses and revenues, commission rates',

                            function: () {},
                          ),
                          CustomCard(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            color: Colors.transparent,
                            title: 'Super Market',
                            description:
                                'Supports invoices, orders, quotations, expenses and revenues, commission rates',
                            function: () {},
                          ),
                          CustomCard(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            color: Colors.transparent,
                            title: 'Super Market',
                            description:
                                'Supports invoices, orders, quotations, expenses and revenues, commission rates',
                            function: () {},
                          ),
                          CustomCard(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            color: Colors.transparent,
                            title: 'Super Market',
                            description:
                                'Supports invoices, orders, quotations, expenses and revenues, commission rates',
                            function: () {},
                          ),
                          CustomCard(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            color: const Color(0xff2E8B57),
                            data: const Text('50%',style: TextStyle(color: Colors.white,fontSize: 20),),
                            title: 'Super Market',
                            description:
                                'Supports invoices, orders, quotations, expenses and revenues, commission rates',

                            function: () {},
                          ),
                          CustomCard(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            color: Colors.transparent,
                            title: 'Super Market',
                            description:
                                'Supports invoices, orders, quotations, expenses and revenues, commission rates',
                            function: () {},
                          ),
                          CustomCard(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            color: const Color(0xff274268),
                            data: const Text('50%',style: TextStyle(color: Colors.white,fontSize: 20),),
                            title: 'Super Market',
                            description:
                                'Supports invoices, orders, quotations, expenses and revenues, commission rates',

                            function: () {},
                          ),
                          CustomCard(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            color: Colors.transparent,
                            title: 'Super Market',
                            description:
                                'Supports invoices, orders, quotations, expenses and revenues, commission rates',
                            function: () {},
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}



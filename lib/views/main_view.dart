import 'package:flutter/material.dart';
import 'package:second_design/constants/constants.dart';
import 'package:second_design/views/drag_and_drop_view.dart';
import 'package:second_design/widgets/free_trial_button.dart';
import '../widgets/custom_app_bar.dart';
import '../widgets/custom_card.dart';
import '../widgets/custom_switch.dart';
import '../widgets/drawer_list_view.dart';

class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  // final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: kPrimaryColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 24, left: 30,right: 30),
          child: Stack(
            children: [
              Column(
                children: [
                  CustomAppBar(
                    function: () {
                      scaffoldKey.currentState?.openDrawer();
                    },
                  ),
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
                            freeTrialButton: FreeTrailButton(function: () {
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return const DragAndDropView();
                                  });
                            }),
                            content: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Starting :',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Dexef',
                                    color: Color(0xff929FB2),
                                  ),
                                ),
                                Row(
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            color: const Color(0xff2E8B57),
                            data: const Text(
                              '50%',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            title: 'Super Market',
                            description:
                                'Supports invoices, orders, quotations, expenses and revenues, commission rates',
                          ),
                          CustomCard(
                            freeTrialButton: FreeTrailButton(function: () {}),
                            content: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Starting :',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Dexef',
                                    color: Color(0xff929FB2),
                                  ),
                                ),
                                Row(
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            color: const Color(0xffFF8000),
                            data: const Text(
                              '50%',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            title: 'Super Market',
                            description:
                                'Supports invoices, orders, quotations, expenses and revenues, commission rates',
                          ),
                          CustomCard(
                            freeTrialButton: FreeTrailButton(function: () {}),
                            content: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Starting :',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Dexef',
                                    color: Color(0xff929FB2),
                                  ),
                                ),
                                Row(
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            color: Colors.transparent,
                            title: 'Super Market',
                            description:
                                'Supports invoices, orders, quotations, expenses and revenues, commission rates',
                          ),
                          CustomCard(
                            freeTrialButton: FreeTrailButton(function: () {}),
                            content: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Starting :',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Dexef',
                                    color: Color(0xff929FB2),
                                  ),
                                ),
                                Row(
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            color: Colors.transparent,
                            title: 'Super Market',
                            description:
                                'Supports invoices, orders, quotations, expenses and revenues, commission rates',
                          ),
                          CustomCard(
                            freeTrialButton: FreeTrailButton(function: () {}),
                            content: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Starting :',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Dexef',
                                    color: Color(0xff929FB2),
                                  ),
                                ),
                                Row(
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            color: Colors.transparent,
                            title: 'Super Market',
                            description:
                                'Supports invoices, orders, quotations, expenses and revenues, commission rates',
                          ),
                          CustomCard(
                            freeTrialButton: FreeTrailButton(function: () {}),
                            content: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Starting :',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Dexef',
                                    color: Color(0xff929FB2),
                                  ),
                                ),
                                Row(
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            color: const Color(0xff2E8B57),
                            data: const Text(
                              '50%',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            title: 'Super Market',
                            description:
                                'Supports invoices, orders, quotations, expenses and revenues, commission rates',
                          ),
                          CustomCard(
                            freeTrialButton: FreeTrailButton(function: () {}),
                            content: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Starting :',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Dexef',
                                    color: Color(0xff929FB2),
                                  ),
                                ),
                                Row(
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            color: Colors.transparent,
                            title: 'Super Market',
                            description:
                                'Supports invoices, orders, quotations, expenses and revenues, commission rates',
                          ),
                          CustomCard(
                            freeTrialButton: FreeTrailButton(function: () {}),
                            content: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Starting :',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Dexef',
                                    color: Color(0xff929FB2),
                                  ),
                                ),
                                Row(
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            color: const Color(0xff274268),
                            data: const Text(
                              '50%',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            title: 'Super Market',
                            description:
                                'Supports invoices, orders, quotations, expenses and revenues, commission rates',
                          ),
                          CustomCard(
                            freeTrialButton: FreeTrailButton(function: () {}),
                            content: const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Starting :',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Dexef',
                                    color: Color(0xff929FB2),
                                  ),
                                ),
                                Row(
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            color: Colors.transparent,
                            title: 'Super Market',
                            description:
                                'Supports invoices, orders, quotations, expenses and revenues, commission rates',
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
      drawer: const Drawer(
        child: DrawerListView(),
      ),
    );
  }
}

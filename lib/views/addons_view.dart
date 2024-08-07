import 'package:flutter/material.dart';
import 'package:second_design/constants/constants.dart';
import 'package:second_design/widgets/custom_card.dart';
import 'package:second_design/widgets/free_trial_button.dart';

import '../widgets/custom_app_bar.dart';
import '../widgets/custom_switch.dart';
import '../widgets/drawer_list_view.dart';

class AddonsView extends StatefulWidget {
  const AddonsView({super.key});
  final List<Color>colors =const
  [
    Color(0xff2E8B57),
    Color(0xffFF8000),
    Color(0xff3F97F6),
    Color(0xff630F2E),
    Color(0xff274268),
    Color(0xff2E8B57),
    Color(0xff630F2E),
    Color(0xff274268),
    Color(0xff2E8B57),
  ];

  @override
  State<AddonsView> createState() => _AddonsViewState();
}

class _AddonsViewState extends State<AddonsView> {
  // GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: kPrimaryColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 24, left: 30,right: 30),
          child: Column(children: [
            CustomAppBar(function: (){
              scaffoldKey.currentState?.openDrawer();
            },),
            const Column(children: [
              SizedBox(
                height: 64,
              ),
              Text(
                'DEXEF , The Best Way To Buy The Products You Love.',
                style: TextStyle(
                  fontFamily: 'Dexef',
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff5D718D),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Applications',
                    style: TextStyle(
                      fontFamily: 'Dexef',
                      color: Color(0xff929FB2),
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CustomSwitch(
                    status: true,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Addons',
                    style: TextStyle(
                      fontFamily: 'Dexef',
                      fontSize: 20,
                      color: Color(0xff274268),
                    ),
                  ),
                ],
              ),
            ]),
            GridView.builder(
              padding:
                  const EdgeInsets.only(left: 110,right: 140, top: 48,bottom: 48),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 30,
                mainAxisSpacing: 30,
              ),
              itemBuilder: (context, index) =>  CustomCard(
                freeTrialButton: FreeTrailButton(function: (){}),
                content:const Column(
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
                color: widget.colors[index],
                  data: const Text('50%',style: TextStyle(color: Colors.white,fontSize: 20),),
                  title: 'Super Market',
                  description:
                      'Supports invoices, orders, quotations, expenses and revenues, commission rates',

              ),
              itemCount: 9,
            )
          ]),
        ),
      ),
      drawer: const Drawer(
        child: DrawerListView(),
      ),
    );
  }
}

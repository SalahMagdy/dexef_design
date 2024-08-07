import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:second_design/constants/constants.dart';
import 'package:second_design/widgets/custom_app_bar.dart';
import 'package:second_design/widgets/custom_lt_for_devices.dart';

import '../widgets/drawer_list_view.dart';

class DevicesView extends StatelessWidget {
  DevicesView({super.key});
  // final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: kPrimaryColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: CustomAppBar(
                function: () {
                  scaffoldKey.currentState?.openDrawer();
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 48.0, bottom: 32),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SvgPicture.asset('assets/images/icon_dexef_one/back.svg'),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    'Devices',
                    style: TextStyle(
                        color: Color(0xff274268),
                        fontFamily: 'Dexef',
                        fontSize: 18),
                  )
                ],
              ),
            ),
            GridView(
              physics: const NeverScrollableScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 50,vertical: 30),
              shrinkWrap: true,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 20,
                  childAspectRatio: (330 / 200),
                  mainAxisSpacing: 20,
              ),
              children: [
                LTDevices(
                  title: 'Windows',
                  subTitle:
                      'Is Simply Dummy Text Of The Printing Typesetting Industry. Lorem Ipsum Has',
                  function: () {},
                  icon: 'assets/images/icon_devices/windows.svg',
                  endText: '24 DEVICES',
                ),
                LTDevices(
                  title: 'Android',
                  subTitle:
                      'Is Simply Dummy Text Of The Printing Typesetting Industry. Lorem Ipsum Has',
                  function: () {},
                  icon: 'assets/images/icon_devices/android.svg',
                  endText: '10 DEVICES',
                ),
                LTDevices(
                  title: 'IOS',
                  subTitle:
                      'Is Simply Dummy Text Of The Printing Typesetting Industry. Lorem Ipsum Has',
                  function: () {},
                  icon: 'assets/images/icon_devices/ios.svg',
                  endText: '20 DEVICES',
                ),
                LTDevices(
                  title: 'Website',
                  subTitle:
                      'Is Simply Dummy Text Of The Printing Typesetting Industry. Lorem Ipsum Has',
                  function: () {},
                  icon: 'assets/images/icon_devices/website.svg',
                  endText: '24 DEVICES',
                ),
              ],
            ),
          ],
        ),
      ),
      drawer: const Drawer(
        child: DrawerListView(),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:second_design/constants/constants.dart';
import 'package:second_design/widgets/custom_app_bar.dart';

import '../widgets/drawer_list_view.dart';

class WorkspaceView extends StatelessWidget {
  const WorkspaceView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: kPrimaryColor,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: CustomAppBar(function: () {
              scaffoldKey.currentState?.openDrawer();
            }),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 100.0, vertical: 30,),
            child: Row(

              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SvgPicture.asset('assets/images/icon_dexef_one/back.svg'),
                const SizedBox(
                  width: 10,
                ),
                const Text(
                  ' Workspace',
                  style: TextStyle(
                      color: Color(0xff274268),
                      fontFamily: 'Dexef',
                      fontSize: 18),
                ),
                Spacer(),
                MaterialButton(
                  padding: const EdgeInsets.all(20),
                  shape: OutlineInputBorder(borderRadius: BorderRadius.circular(32),borderSide: BorderSide.none),
                  onPressed: () {},
                  color: Colors.blue,
                  child: const Text(
                    'Create Workspace',
                    style: TextStyle(
                        color: Colors.white, fontFamily: 'Dexef', fontSize: 16),
                  ),
                )
              ],
            ),
          ),
          GridView(
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 30),
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 20,
              childAspectRatio: (330 / 80),
              mainAxisSpacing: 20,
            ),
            children: [
              Expanded(
                child: MaterialButton(
                  padding: EdgeInsets.symmetric(horizontal: 35),
                  shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none),
                  color: Colors.white,
                  hoverColor: Colors.white,
                  onPressed: () {},
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        'assets/images/workspace_icons/on_cloud.svg',
                        width: 36,
                        height: 36,
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Safwa Super Market',
                            style: TextStyle(
                                color: kTextColor,
                                fontFamily: 'Dexef',
                                fontSize: 20),
                          ),
                          Text(
                            'On Cloud',
                            style: TextStyle(
                                color: Color(0xff929FB2),
                                fontFamily: 'Dexef',
                                fontSize: 14),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  padding: const EdgeInsets.symmetric(horizontal: 35),
                  shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none),
                  color: Colors.white,
                  hoverColor: Colors.white,
                  onPressed: () {},
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        'assets/images/workspace_icons/on_cloud.svg',
                        width: 36,
                        height: 36,
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Safwa Super Market',
                            style: TextStyle(
                                color: kTextColor,
                                fontFamily: 'Dexef',
                                fontSize: 20),
                          ),
                          Text(
                            'On Cloud',
                            style: TextStyle(
                                color: Color(0xff929FB2),
                                fontFamily: 'Dexef',
                                fontSize: 14),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  padding: EdgeInsets.symmetric(horizontal: 35),
                  shape: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8),
                      borderSide: BorderSide.none),
                  color: Colors.white,
                  hoverColor: Colors.white,
                  onPressed: () {},
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        'assets/images/workspace_icons/local.svg',
                        width: 36,
                        height: 36,
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Safwa Super Market',
                            style: TextStyle(
                                color: kTextColor,
                                fontFamily: 'Dexef',
                                fontSize: 20),
                          ),
                          Text(
                            'On Cloud',
                            style: TextStyle(
                                color: Color(0xff929FB2),
                                fontFamily: 'Dexef',
                                fontSize: 14),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
      drawer: const Drawer(
        child: DrawerListView(),
      ),
    );
  }
}

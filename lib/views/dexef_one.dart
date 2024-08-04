import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:second_design/widgets/custom_app_bar.dart';
import 'package:second_design/widgets/custom_card.dart';
import '../widgets/drawer_list_view.dart';

class DexefOne extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  DexefOne({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: const Color(0xffF5F7FA),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            CustomAppBar(
              function: () {
                scaffoldKey.currentState?.openDrawer();
              },
            ),
            const SizedBox(height: 35,),
            Padding(
              padding: const EdgeInsets.only(left: 60),
              child: Row(

                children: [
                  SvgPicture.asset('assets/images/icon_dexef_one/back.svg',width: 27,height: 27,),
                  const SizedBox(width: 12,),
                  const Text('DEXEF ONE.',
                  style: TextStyle(
                    color: Color(0xff274268),
                    fontFamily: 'Dexef',
                    fontSize: 20
                  ),)
                ],
              ),
            ),

            const SizedBox(height: 35,),
            Padding(
              padding: const EdgeInsets.only(left: 60,right: 30),
              child: GridView(
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,crossAxisSpacing: 30),
                children: [
                  SizedBox(
                    height: 430,
                    width:MediaQuery.of(context).size.width/4.toDouble(),
                    child: CustomCard(
                      title: 'Green',
                      description:
                          'Manage Your Billing and Subscriptions and view your invoices or update your payment methods',
                      function: () {},
                      color: const Color(0xff2E8B57),
                      crossAxisAlignment: CrossAxisAlignment.center,
                      data: Column(
                        children: [
                          SvgPicture.asset(
                              'assets/images/icon_dexef_one/purshased.svg'),
                          const Text(
                            'Purshased',
                            style: TextStyle(color: Colors.white, fontFamily: 'Dexef',fontSize: 8),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 430,
                    width: MediaQuery.of(context).size.width/4.toDouble(),
                    child: CustomCard(
                      title: 'Green',
                      description:
                          'Manage Your Billing and Subscriptions and view your invoices or update your payment methods',
                      function: () {},
                      color: const Color(0xff2E8B57),
                      crossAxisAlignment: CrossAxisAlignment.center,
                      data: Column(
                        children: [
                          SvgPicture.asset(
                              'assets/images/icon_dexef_one/purshased.svg'),
                          const Text(
                            'Purshased',
                            style: TextStyle(color: Colors.white, fontFamily: 'Dexef',fontSize: 8),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 430,
                    width:MediaQuery.of(context).size.width/4.toDouble(),
                    child: CustomCard(
                      title: 'Green',
                      description:
                          'Manage Your Billing and Subscriptions and view your invoices or update your payment methods',
                      function: () {},
                      color: const Color(0xff2E8B57),
                      crossAxisAlignment: CrossAxisAlignment.center,
                      data: Column(
                        children: [
                          SvgPicture.asset(
                              'assets/images/icon_dexef_one/purshased.svg'),
                          const Text(
                            'Purshased',
                            style: TextStyle(color: Colors.white, fontFamily: 'Dexef',fontSize: 8),
                          )
                        ],
                      ),
                    ),
                  ),

                ],
              ),
            )
          ],
        ),
      ),
      drawer: const Drawer(
        child: DrawerListView(),
      ),
    );
  }
}

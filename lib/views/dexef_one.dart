import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:second_design/constants/constants.dart';
import 'package:second_design/widgets/custom_app_bar.dart';
import 'package:second_design/widgets/custom_card.dart';
import '../widgets/drawer_list_view.dart';

class DexefOne extends StatelessWidget {


  DexefOne({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: kPrimaryColor,
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            CustomAppBar(
              function: () {
                scaffoldKey.currentState?.openDrawer();
              },
            ),
            const SizedBox(
              height: 35,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 60),
              child: Row(
                children: [
                  SvgPicture.asset(
                    'assets/images/icon_dexef_one/back.svg',
                    width: 27,
                    height: 27,
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  const Text(
                    'DEXEF ONE.',
                    style: TextStyle(
                        color: Color(0xff274268),
                        fontFamily: 'Dexef',
                        fontSize: 20),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 60, right: 30),
              child: GridView(
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3, crossAxisSpacing: 30),
                children: [
                  SizedBox(
                    height: 430,
                    width: MediaQuery.of(context).size.width / 4.toDouble(),
                    child: CustomCard(
                      content: Column(
                        children: [
                          Row(
                            children: [
                              SvgPicture.asset(
                                  'assets/images/icon_dexef_one/licenses.svg'),
                              const Text(
                                ' Licenses 7/10',
                                style: TextStyle(color: Color(0xff2E8B57)),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              SvgPicture.asset(
                                  'assets/images/icon_dexef_one/subscription.svg'),
                              const Text(
                                ' Subscription Date 20/10/2022',
                                style: TextStyle(color: Color(0xff2E8B57)),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              SvgPicture.asset(
                                  'assets/images/icon_dexef_one/subscription.svg'),
                              const Text(
                                ' Renewal Date 20/10/2023',
                                style: TextStyle(color: Color(0xff2E8B57)),
                              ),
                            ],
                          ),
                          const SizedBox(height: 100),
                          Row(
                            children: [
                              TextButton(
                                child: const Text(
                                  'Cancel Plan',
                                  style: TextStyle(
                                      color: Colors.blue,
                                      decoration: TextDecoration.underline,
                                      decorationColor: Colors.blue,
                                      fontFamily: 'Dexef',
                                      fontSize: 16),
                                ),
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ],
                      ),
                      // textButton: TextButton(child:const Text('Cancel Plan') ,onPressed: (){},),
                      title: 'Green',
                      description:
                          'Manage Your Billing and Subscriptions and view your invoices or update your payment methods',
                      color: const Color(0xff2E8B57),
                      crossAxisAlignment: CrossAxisAlignment.center,
                      data: Column(
                        children: [
                          SvgPicture.asset(
                              'assets/images/icon_dexef_one/purshased.svg'),
                          const Text(
                            'Purshased',
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Dexef',
                                fontSize: 8),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 430,
                    width: MediaQuery.of(context).size.width / 4.toDouble(),
                    child:  CustomCard(
                      content: Column(
                        children: [
                          const Row(
                            children: [
                              Column(
                                children: [
                                  Text(
                                    'Starting ',
                                    style: TextStyle(
                                        color: Color(0xff929FB2),
                                        fontFamily: 'Dexef',
                                        fontSize: 12),
                                  )
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          const Row(
                            children: [
                              Text(
                                '\$12',
                                style: TextStyle(
                                    color: Color(0xff2E8B57),
                                    fontSize: 16,
                                    fontFamily: 'Dexef'
                                ),
                              ),
                              Text(
                                ' /user/month',
                                style: TextStyle(
                                    color: Color(0xff929FB2),
                                    fontSize: 12,
                                    fontFamily: 'Dexef'
                                ),
                              )
                            ],
                          ),
                          const SizedBox(height: 15,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              TextButton(
                                child: const Text(
                                  'Buy Now',
                                  style: TextStyle(
                                      color: Colors.blue,
                                      decoration: TextDecoration.underline,
                                      decorationColor: Colors.blue,
                                      fontFamily: 'Dexef',
                                      fontSize: 16),
                                ),
                                onPressed: () {},
                              ),
                            ],
                          ),
                        ],
                      ),
                      title: 'Blue',
                      description:
                          'Manage Your Billing and Subscriptions and view your invoices or update your payment methods ,Manage Your Billing and Subscriptions and view your invoices or update your payment methods, Manage Your Billing and Subscriptions and view your invoices or update your payment methods',
                      color: Colors.transparent,
                      crossAxisAlignment: CrossAxisAlignment.center,
                    ),
                  ),
                  SizedBox(
                    height: 430,
                    width: MediaQuery.of(context).size.width / 4.toDouble(),
                    child:  CustomCard(
                      content: Column(
                        children: [
                          const Row(
                            children: [
                              Column(
                                children: [
                                  Text(
                                    'Starting ',
                                    style: TextStyle(
                                        color: Color(0xff929FB2),
                                        fontFamily: 'Dexef',
                                        fontSize: 12),
                                  )
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          const Row(
                            children: [
                              Text(
                                '\$12',
                                style: TextStyle(
                                    color: Color(0xff2E8B57),
                                    fontSize: 16,
                                    fontFamily: 'Dexef'
                                ),
                              ),
                              Text(
                                ' /user/month',
                                style: TextStyle(
                                    color: Color(0xff929FB2),
                                    fontSize: 12,
                                    fontFamily: 'Dexef'
                                ),
                              )
                            ],
                          ),
                          const SizedBox(height: 15,),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              TextButton(
                                child: const Text(
                                  'Buy Now',
                                  style: TextStyle(
                                      color: Colors.blue,
                                      decoration: TextDecoration.underline,
                                      decorationColor: Colors.blue,
                                      fontFamily: 'Dexef',
                                      fontSize: 16),
                                ),
                                onPressed: () {},
                              ),
                            ],
                          ),

                        ],
                      ),
                      title: 'Red',
                      description:
                          'Manage Your Billing and Subscriptions and view your invoices or update your payment methods ,Manage Your Billing and Subscriptions and view your invoices or update your payment methods, Manage Your Billing and Subscriptions and view your invoices or update your payment methods',
                      color: Colors.transparent,
                      crossAxisAlignment: CrossAxisAlignment.center,
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

import 'package:flutter/material.dart';

import '../views/main_view.dart';
import 'custom_list_tile.dart';

class DrawerListView extends StatelessWidget {
  const DrawerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        CustomListTile(
            page: MainView(),
            image: 'assets/images/icon_dexef_one/home.svg',
            title: 'Home'),
        CustomListTile(
            page: MainView(),
            image: 'assets/images/icon_dexef_one/device.svg',
            title: 'Devices'),
        CustomListTile(
            page: MainView(),
            image: 'assets/images/icon_dexef_one/workspace.svg',
            title: 'Workspace'),
        CustomListTile(
            page: MainView(),
            image: 'assets/images/icon_dexef_one/apps.svg',
            title: 'Apps'),
        CustomListTile(
            page: MainView(),
            image: 'assets/images/icon_dexef_one/billing.svg',
            title: 'Billing'),
        CustomListTile(
            page: MainView(),
            image: 'assets/images/icon_dexef_one/account.svg',
            title: 'Account'),
        CustomListTile(
            page: MainView(),
            image: 'assets/images/icon_dexef_one/directory.svg',
            title: 'Directory'),
        CustomListTile(
            page: MainView(),
            image: 'assets/images/icon_dexef_one/security.svg',
            title: 'Security'),
        CustomListTile(
            page: MainView(),
            image: 'assets/images/icon_dexef_one/reporting.svg',
            title: 'Reporting'),
      ],
    );
  }
}

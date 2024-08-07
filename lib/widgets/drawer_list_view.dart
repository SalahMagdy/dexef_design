import 'package:flutter/material.dart';

import '../views/devices_view.dart';
import '../views/dexef_one.dart';
import '../views/main_view.dart';
import '../views/workspace_view.dart';
import 'custom_list_tile.dart';

class DrawerListView extends StatelessWidget {
  const DrawerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children:   [
        const CustomListTile(

            page: MainView(),
            image: 'assets/images/icon_dexef_one/home.svg',
            title: 'Home'),
         CustomListTile(
            page: DevicesView(),
            image: 'assets/images/icon_dexef_one/device.svg',
            title: 'Devices'),
        const CustomListTile(
            page: WorkspaceView(),
            image: 'assets/images/icon_dexef_one/workspace.svg',
            title: 'Workspace'),
        const CustomListTile(
            page: MainView(),
            image: 'assets/images/icon_dexef_one/apps.svg',
            title: 'Apps'),
        CustomListTile(
            page: DexefOne(),
            image: 'assets/images/icon_dexef_one/billing.svg',
            title: 'Billing'),
        const CustomListTile(
            page: MainView(),
            image: 'assets/images/icon_dexef_one/account.svg',
            title: 'Account'),
        const CustomListTile(
            page: MainView(),
            image: 'assets/images/icon_dexef_one/directory.svg',
            title: 'Directory'),
        const CustomListTile(
            page: MainView(),
            image: 'assets/images/icon_dexef_one/security.svg',
            title: 'Security'),
        const CustomListTile(
            page: MainView(),
            image: 'assets/images/icon_dexef_one/reporting.svg',
            title: 'Reporting'),
      ],
    );
  }
}

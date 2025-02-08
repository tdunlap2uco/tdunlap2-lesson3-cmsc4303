// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:lesson2/controller/startscreen_controller.dart';

class StartScreen extends StatelessWidget {
  StartScreen({super.key});

  static const String routeName = '/startScreen';
  final _con = StartScreenController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Start Menu'),
        actions: [
          IconButton(
            onPressed: () => _con.onPressedAlarm(context),
            icon: const Icon(Icons.alarm),
          ),
          IconButton(
            onPressed: () => _con.onPressedMessage(context),
            icon: const Icon(Icons.message),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: Icon(
                Icons.account_circle_rounded,
                size: 80.0,
              ),
              accountName: Text('Taylor Dunlap'),
              accountEmail: Text('tdunlap2@uco.edu'),
            ),
            ListTile(
              leading: const Icon(Icons.people),
              title: const Text('Friends'),
              onTap: () => _con.onTapFriend(context),
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Logout'),
              onTap: () => _con.onTapLogout(context),
            ),
          ],
        ),
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Choose a menu to navigate',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          ElevatedButton(
            onPressed: () => _con.onPressedMaterialDesign(context),
            child: Text('Material Design',
                style: Theme.of(context).textTheme.labelLarge),
          ),
          ElevatedButton(
            onPressed: () => _con.onPressedImageDemo(context),
            child: Text(
              'Image Demo',
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ),
          ElevatedButton(
            onPressed: () => _con.onPressedButtonDemo(context),
            child: Text(
              'Button Demo',
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ),
          FilledButton.tonal(
            onPressed: () => _con.onPressedFontDemo(context),
            child: Text(
              'Font Demo',
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ),
          FilledButton.tonal(
            onPressed: () => _con.onPressedRowColDemo(context),
            child: Text(
              'Row/Column Demo',
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ),
          OutlinedButton(
            onPressed: () => _con.onPressedBusinessCard(context),
            child: Text(
              'Business Card',
              style: Theme.of(context).textTheme.labelLarge,
            ),
          ),
        ],
      ),
    ),
  );
  }
}

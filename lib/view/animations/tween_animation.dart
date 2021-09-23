import 'package:animations_demo/settings/settings_view.dart';
import 'package:animations_demo/utils/colors.dart';
import 'package:flutter/material.dart';

class TweenAnimations extends StatelessWidget {
  const TweenAnimations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,
        elevation: 5,
        backgroundColor: primaryDark,
        title: const Text('Animations App'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {
              // Navigate to the settings page. If the user leaves and returns
              // to the app after it has been killed while running in the
              // background, the navigation stack is restored.
              Navigator.restorablePushNamed(context, SettingsView.routeName);
            },
          ),
        ],
      ),
      body: SafeArea(
        child: Center(
          child: Container(
              alignment: Alignment.center,
              width: 150,
              height: 150,
              color: Colors.red,
              child: const Text('Tween Animations')),
        ),
      ),
    );
  }
}

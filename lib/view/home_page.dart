import 'package:animations_demo/settings/settings_view.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
        child: Column(
          children: [
            Card(
              elevation: 5.0,
              child: Container(
                margin: const EdgeInsets.all(5),
                padding: const EdgeInsets.all(3.0),
                child: const Text('Click on any to view animations'),
              ),
            ),
            const SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  child: Card(
                    elevation: 5.0,
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.all(10),
                      child: const Text('Stateless Animations'),
                    ),
                  ),
                  onTap: () => {print('Tapped')},
                ),
                GestureDetector(
                  child: Card(
                    elevation: 5.0,
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.all(10),
                      child: const Text('Tween Animations'),
                    ),
                  ),
                  onTap: () => {print('Tapped')},
                ),
              ],
            ),
            const SizedBox(height: 10.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  child: Card(
                    elevation: 5.0,
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      margin: const EdgeInsets.all(10),
                      child: const Text('Anicoto Animations'),
                    ),
                  ),
                  onTap: () => {print('Tapped')},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

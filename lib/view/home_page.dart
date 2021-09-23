import 'package:animations_demo/settings/settings_view.dart';
import 'package:animations_demo/utils/colors.dart';
import 'package:animations_demo/utils/transitions.dart';
import 'package:flutter/material.dart';

import 'animations/anicoto_animation.dart';
import 'animations/stateless_animation.dart';
import 'animations/tween_animation.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
      body: Container(
        color: bodyLight,
        child: SafeArea(
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
                    child: Transitions(
                      axis: Axis.vertical,
                      duration: const Duration(milliseconds: 2000),
                      child: Card(
                        // color: primaryDark,
                        elevation: 5.0,
                        shadowColor: Colors.black38,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(
                              height: 10.0,
                            ),
                            const Icon(Icons.money_outlined),
                            Container(
                              padding: const EdgeInsets.all(10),
                              margin: const EdgeInsets.all(10),
                              child: const Text(
                                'Stateless Animations',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    onTap: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const StatelessAnimations(),
                        ),
                      )
                    },
                  ),
                  GestureDetector(
                    child: Transitions(
                      axis: Axis.vertical,
                      duration: const Duration(milliseconds: 2000),
                      child: Card(
                        elevation: 5.0,
                        shadowColor: Colors.black38,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          margin: const EdgeInsets.all(10),
                          child: Column(
                            children: const [
                              Icon(Icons.money_outlined),
                              Text('Tween Animations'),
                            ],
                          ),
                        ),
                      ),
                    ),
                    onTap: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const TweenAnimations(),
                        ),
                      )
                    },
                  ),
                ],
              ),
              const SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                    child: Transitions(
                      axis: Axis.vertical,
                      duration: const Duration(milliseconds: 2000),
                      child: Card(
                        elevation: 5.0,
                        shadowColor: Colors.black38,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          margin: const EdgeInsets.all(10),
                          child: Column(
                            children: const [
                              Icon(Icons.money_outlined),
                              Text('Anicoto Animations'),
                            ],
                          ),
                        ),
                      ),
                    ),
                    onTap: () => {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Anicoto(),
                        ),
                      )
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

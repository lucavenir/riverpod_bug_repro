import 'package:flutter/material.dart';

import '../router/route.dart';

class SplashPage extends MyAppPage {
  const SplashPage({super.key});

  @override
  String get pageName => 'home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: const Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 48),
          child: Text("Loading..."),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../router/route.dart';

class HomePage extends MyAppPage {
  const HomePage({super.key});

  @override
  String get pageName => 'home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: const Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 48),
          child: Text("Home"),
        ),
      ),
    );
  }
}

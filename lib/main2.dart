import 'package:flutter/material.dart';

import 'router/router.dart';

void main(List<String> args) {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: "Is this a bug, or...?",
      debugShowCheckedModeBanner: true,
      routerConfig: globalRouter,
      themeMode: ThemeMode.light,
    );
  }
}

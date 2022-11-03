import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';

abstract class MyAppPage extends StatelessWidget {
  const MyAppPage({super.key});

  String get pageName;
  String get routeLocation => '/$pageName';

  List<DeviceOrientation> get allowedOrientations =>
      const [DeviceOrientation.portraitUp];

  List<MyAppPage> get children => const [];

  FutureOr<String?> Function(BuildContext, GoRouterState)? get redirect => null;

  Color get systemNavigationBarColor => Colors.black;
  Color get statusBarColor => Colors.black;
}

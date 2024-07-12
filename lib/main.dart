import 'package:asyncstate/asyncstate.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';

import 'src/src/core/bindings/application_binding.dart';
import 'src/src/feature/home/home_module.dart';
import 'src/src/feature/splash/splash_module.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterGetIt(
      bindings: ApplicationBinding(),
      modules: [
        SplashModule(),
        HomeModule(),
      ],
      builder: (context, routes, getitNavigator) => AsyncStateBuilder(
        builder: (asyncNavigator) => MaterialApp(
          debugShowCheckedModeBanner: false,
          routes: routes,
          navigatorObservers: [getitNavigator, asyncNavigator],
        ),
      ),
    );
  }
}

import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_getit/flutter_getit.dart';

import 'cubit/splash_cubit.dart';
import 'splash_page.dart';

class SplashModule extends FlutterGetItModule {
  @override
  List<Bind<Object>> get bindings => [
        Bind.lazySingleton((i) => SplashCubit(service: i())),
      ];

  @override
  String get moduleRouteName => '/';

  @override
  Map<String, WidgetBuilder> get pages => {
        '/': (context) => SplashPage(),
      };
}

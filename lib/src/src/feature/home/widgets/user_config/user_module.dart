import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_getit/flutter_getit.dart';

import '../../../../services/auth/auth_service.dart';
import 'cubit/user_cubit_cubit.dart';
import 'user_config.dart';

class UserModule extends FlutterGetItModulePageRouter {
  const UserModule({super.key});

  @override
  List<Bind<Object>> get bindings => [
        Bind.lazySingleton(
            (i) => UserCubitCubit(repository: i(), service: i())),
      ];
  @override
  WidgetBuilder get view => (context) => UserConfig(
        user: context.get<AuthService>().user!,
      );
}

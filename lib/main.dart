import 'package:core_package/domain/core/utils/app_environment.dart';
import 'package:core_package/injection.dart';
import 'package:core_package/src/app.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await configureInjection(AppEnvironment.dev);

  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('en')],
      path: 'assets/translations',
      fallbackLocale: const Locale('en'),
      child: const App(),
    ),
  );
}

import 'package:flutter/material.dart';

import '../../injector.dart';
import '../../main.dart';
import 'app_config.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Config.appFlavor = Flavor.RELEASE;
  await initDI();
  runApp(MyApp());
}

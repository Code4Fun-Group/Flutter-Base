import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/route/app_routes.dart';
import 'injector.dart';
import 'presentation/bloc/remote/example_bloc.dart';
import 'presentation/example_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initDI();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Example Base",
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRoutes.onGenerateRoutes,
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Example Demo"),
          ),
          body: BlocProvider<ExampleBloc>(
            create: (context) => injector(),
            child: const ExampleScreen(),
          )),
    );
  }
}

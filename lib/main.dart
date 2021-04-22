import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/route/app_routes.dart';
import 'features/example/presentation/bloc/remote/example_bloc.dart';
import 'features/example/presentation/example_screen.dart';
import 'injector.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initDI();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
            child: ExampleScreen(),
          )),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/remote/example_bloc.dart';

class ExampleScreen extends StatefulWidget {
  const ExampleScreen({Key? key}) : super(key: key);

  static const routeName = '/';

  @override
  ExampleScreenState createState() => ExampleScreenState();
}

class ExampleScreenState extends State<ExampleScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _MySearchView(),
        _MyResultView(),
      ],
    );
  }
}

class _MySearchView extends StatefulWidget {
  @override
  _MySearchViewState createState() => _MySearchViewState();
}

class _MySearchViewState extends State<_MySearchView> {
  final _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextFormField(
              controller: _controller,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: "Input Username"),
            ),
          ),
          const SizedBox(height: 10),
          TextButton(
            onPressed: () => {
              context.read<ExampleBloc>()
                ..add(GetUserFromRemote(_controller.text.isEmpty
                    ? "JakeWharton"
                    : _controller.text))
            },
            child: const Text("Get Info"),
          ),
        ],
      ),
    );
  }
}

class _MyResultView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ExampleBloc, ExampleState>(
      bloc: BlocProvider.of<ExampleBloc>(context),
      builder: (BuildContext context, ExampleState state) {
        if (state is Initial) {
          return const Text("Please input username");
        } else if (state is Loading) {
          return const Text("Loading...");
        } else if (state is Done) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Image.network(state.user.avatarUrl),
              ),
              const SizedBox(height: 10),
              Text(state.user.repoUrl)
            ],
          );
        } else {
          return const Text("No found");
        }
      },
    );
  }
}

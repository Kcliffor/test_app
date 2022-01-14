import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/features/first/domain/entities/user_data.dart';
import 'package:test_app/features/first/presentation/bloc/first_bloc.dart';
import 'package:test_app/features/first/presentation/bloc/first_event.dart';
import 'package:test_app/features/first/presentation/bloc/first_state.dart';

import '../../../../injection_container.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  List<UserData> userData = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'User List',
        ),
      ),
      body: BlocProvider<FirstBloc>(
        create: (_) => appInstance<FirstBloc>()..add(GetDataEvent()),
        child: BlocBuilder<FirstBloc, FirstState>(
          buildWhen: (prevState, nextState) {
            if (nextState is GetDataState) {
              userData = nextState.data;
            }
            return nextState is GetDataState;
          },
          builder: (context, state) {
            return ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  title: Text(userData[index].username),
                  subtitle: Text(userData[index].name),
                  leading: const Icon(
                    Icons.account_circle_outlined,
                    size: 55,
                  ),
                );
              },
              itemCount: userData.length,
            );
          },
        ),
      ),
    );
  }
}

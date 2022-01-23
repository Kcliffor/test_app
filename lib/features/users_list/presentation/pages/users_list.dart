import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/features/user_page/presentation/pages/user_page.dart';
import 'package:test_app/features/users_list/domain/entities/user_data.dart';
import 'package:test_app/features/users_list/presentation/bloc/users_list_bloc.dart';
import 'package:test_app/features/users_list/presentation/bloc/users_list_event.dart';
import 'package:test_app/features/users_list/presentation/bloc/users_list_state.dart';

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
        title: const Center(
          child: Text(
            'List of Users',
          ),
        ),
      ),
      body: BlocProvider<UsersListBloc>(
        create: (_) => appInstance<UsersListBloc>()..add(GetDataEvent()),
        child: BlocBuilder<UsersListBloc, FirstState>(
          buildWhen: (prevState, nextState) {
            if (nextState is GetDataState) {
              userData = nextState.data;
            } else if (nextState is UserInfoState) {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => UserPage(id: nextState.id)),
              );
            }
            return nextState is GetDataState;
          },
          builder: (context, state) {
            return ListView.builder(
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                  onTap: () {
                    BlocProvider.of<UsersListBloc>(context).add(
                      GetUserInfo(
                        id: index,
                      ),
                    );
                  },
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

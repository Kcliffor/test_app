import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/injection_container.dart';
import 'package:test_app/start/domain/entities/data.dart';
import 'package:test_app/start/presentation/bloc/main_bloc.dart';
import 'package:test_app/start/presentation/bloc/main_event.dart';
import 'package:test_app/start/presentation/bloc/main_state.dart';

class StartPage extends StatefulWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  List<Data> items = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider<MainBloc>(
        create: (_) => appInstance<MainBloc>()..add(GetDataEvent()),
        child: BlocBuilder<MainBloc, MainState>(
          buildWhen: (prevState, nextState) {
            if (nextState is GetDataState) {
              items = nextState.data;
            }
            return false;
          },
          builder: (context, state) => Padding(
            padding: const EdgeInsets.all(20.0),
            child: ReorderableListView(
              onReorder: (int oldIndex, int newIndex) {
                setState(() {
                  if (oldIndex < newIndex) {
                    newIndex--;
                  }
                  final Data item = items.removeAt(oldIndex);
                  items.insert(newIndex, item);
                });
              },
              children: _buildTiles(),
            ),
          ),
        ),
      ),
    );
  }

  List<Widget> _buildTiles() {
    List<Widget> list = [];
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final Color oddItemColor = colorScheme.primary.withOpacity(0.05);
    final Color evenItemColor = colorScheme.primary.withOpacity(0.15);

    for (var item in items) {
      if (item.id % 2 == 0) {
        list.add(
          Card(
            key: Key('${item.id}'),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: ListTile(
              // key: Key('$item'),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              tileColor: item.id.isOdd ? oddItemColor : evenItemColor,
              title: Text('Упражнение ${item.id}'),
            ),
          ),
        );
      } else {
        list.add(
          Padding(
            key: Key('${item.id}'),
            padding: const EdgeInsets.only(
              left: 40.0,
            ),
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                tileColor: item.id.isOdd ? oddItemColor : evenItemColor,
                title: Text('Упражнение ${item.id}'),
              ),
            ),
          ),
        );
      }
    }
    return list;
  }
}

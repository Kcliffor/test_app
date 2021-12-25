import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/injection_container.dart';
import 'package:test_app/start/domain/entities/data.dart';
import 'package:test_app/start/presentation/bloc/main_bloc.dart';
import 'package:test_app/start/presentation/bloc/main_event.dart';
import 'package:test_app/start/presentation/bloc/main_state.dart';
import 'package:test_app/start/presentation/widgets/reorderable.dart';

class StartPage extends StatefulWidget {
  const StartPage({Key? key}) : super(key: key);

  @override
  _StartPageState createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    List<Data> items = [];
    List<Widget> tiles = [];
    return Scaffold(
      body: BlocProvider<MainBloc>(
        create: (_) => appInstance<MainBloc>()..add(GetDataEvent()),
        child: BlocBuilder<MainBloc, MainState>(
          buildWhen: (prevState, nextState) {
            if (nextState is GetDataState) {
              items = nextState.data;
              tiles = _buildTiles(items);
            }
            return true;
          },
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Expanded(
                    child: ReorderList(
                      tiles: tiles,
                      items: items,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  List<Widget> _buildTiles(List<Data> items) {
    List<Widget> list = [];
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final Color itemColor = colorScheme.primary.withOpacity(0.05);
    final Color underItemColor = colorScheme.primary.withOpacity(0.15);

    for (var item in items) {
      if (item.orderPrefix == "") {
        list.add(
          Card(
            key: Key('${item.id - 1}'),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: ListTile(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              trailing: ReorderableDragStartListener(
                index: item.id - 1,
                child: const Icon(Icons.drag_handle),
              ),
              tileColor: item.orderPrefix == "" ? itemColor : underItemColor,
              title: Text('Упражнение ${item.id}'),
            ),
          ),
        );
      } else {
        list.add(
          Padding(
            key: Key('${item.id - 1}'),
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
                trailing: ReorderableDragStartListener(
                  index: item.id - 1,
                  child: const Icon(Icons.drag_handle),
                ),
                tileColor: item.orderPrefix == "" ? itemColor : underItemColor,
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

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/start/domain/entities/data.dart';
import 'package:test_app/start/presentation/bloc/main_bloc.dart';
import 'package:test_app/start/presentation/bloc/main_event.dart';

class ReorderList extends StatefulWidget {
  final List<Widget> tiles;
  final List<Data> items;

  const ReorderList({Key? key, required this.tiles, required this.items})
      : super(key: key);

  @override
  _ReorderListState createState() => _ReorderListState();
}

class _ReorderListState extends State<ReorderList> {
  @override
  Widget build(BuildContext context) {
    return ReorderableListView(
      buildDefaultDragHandles: true,
      dragStartBehavior: DragStartBehavior.down,
      onReorder: (int oldIndex, int newIndex) {
        setState(() {
          if (oldIndex < newIndex) {
            newIndex--;
          }
          final Widget tile = widget.tiles.removeAt(oldIndex);
          widget.tiles.insert(newIndex, tile);
          final Data item = widget.items.removeAt(oldIndex);
          widget.items.insert(newIndex, item);
          BlocProvider.of<MainBloc>(context)
              .add(SendDataEvent(data: widget.items));
        });
      },
      children: widget.tiles,
    );
  }
}

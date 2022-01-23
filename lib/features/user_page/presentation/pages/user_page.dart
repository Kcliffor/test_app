import 'package:flutter/material.dart';

class UserPage extends StatefulWidget {
  final int id;
  const UserPage({Key? key, required this.id}) : super(key: key);

  @override
  _UserPageState createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Username'),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            const Icon(
              Icons.account_circle_outlined,
              size: 200,
              color: Colors.red,
            ),
            Text("${widget.id}"),
          ],
        ),
      ),
    );
  }
}

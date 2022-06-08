import 'package:flutter/material.dart';
import 'griddb.dart';
// import 'package:flutter_grid_button/flutter_grid_button.dart';

//tab row widget to hold the tabs
class TabBox extends StatelessWidget {
  TabBox();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TabBar(
        indicatorColor: Colors.amberAccent,
        tabs: const [Text('All'), Text('Room'), Text('Studio F(x)')],
      ),
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
      margin: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 20),
      color: const Color.fromARGB(255, 119, 119, 119),
    );
  }
}

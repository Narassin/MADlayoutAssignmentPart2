import 'package:flutter/material.dart';
import 'griddb.dart';
import 'home.dart';

class TabSon extends StatelessWidget {
  TabSon();

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: TabBarView(
      children: [GridBox(), Text('text'), Text('text')],
    ));
  }
}

class GridBox extends StatefulWidget {
  const GridBox({Key? key}) : super(key: key);

  @override
  State<GridBox> createState() => _GridBox();
}

class _GridBox extends State<GridBox> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
        shrinkWrap: true,
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        childAspectRatio: 2.0,
        children: List.generate(iotDB.length, (index) {
          return Card(
              margin: const EdgeInsets.all(0),
              elevation: 5.0,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() =>
                          iotDB.elementAt(index)['status'] as bool != true
                              ? iotDB.elementAt(index)['status'] = true
                              : iotDB.elementAt(index)['status'] = false);
                    },
                    icon: Icon(iotDB[index]['icon'] as IconData, size: 40),
                  ),
                  Text(iotDB[index]['deviceName'] as String),
                  Icon(iotDB[index]['status'] as bool
                      ? Icons.toggle_off
                      : Icons.toggle_on)
                ],
              ));
        }));
  }
}

import 'package:flutter/material.dart';
import 'griddb.dart';
import 'home.dart';

class TabSon extends StatelessWidget {
  TabSon();

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: TabBarView(
      children: [AllBox(), RoomBox(), FxBox()],
    ));
  }
}

class AllBox extends StatefulWidget {
  const AllBox({Key? key}) : super(key: key);

  @override
  State<AllBox> createState() => _AllBox();
}

class _AllBox extends State<AllBox> {
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

class RoomBox extends StatefulWidget {
  const RoomBox({Key? key}) : super(key: key);

  @override
  State<RoomBox> createState() => _RoomBox();
}

class _RoomBox extends State<RoomBox> {
  final _roomList = iotDB.getRange(0, 3);
  @override
  Widget build(BuildContext context) {
    return GridView.count(
        shrinkWrap: true,
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        childAspectRatio: 2.0,
        children: List.generate(_roomList.length, (index) {
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
                          _roomList.elementAt(index)['status'] as bool != true
                              ? _roomList.elementAt(index)['status'] = true
                              : _roomList.elementAt(index)['status'] = false);
                    },
                    icon: Icon(_roomList.elementAt(index)['icon'] as IconData,
                        size: 40),
                  ),
                  Text(_roomList.elementAt(index)['deviceName'] as String),
                  Icon(_roomList.elementAt(index)['status'] as bool
                      ? Icons.toggle_off
                      : Icons.toggle_on)
                ],
              ));
        }));
  }
}

class FxBox extends StatefulWidget {
  const FxBox({Key? key}) : super(key: key);

  @override
  State<FxBox> createState() => _FxBox();
}

class _FxBox extends State<FxBox> {
  final _fxList = iotDB.getRange(3, 6);
  @override
  Widget build(BuildContext context) {
    return GridView.count(
        shrinkWrap: true,
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        childAspectRatio: 2.0,
        children: List.generate(_fxList.length, (index) {
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
                          _fxList.elementAt(index)['status'] as bool != true
                              ? _fxList.elementAt(index)['status'] = true
                              : _fxList.elementAt(index)['status'] = false);
                    },
                    icon: Icon(_fxList.elementAt(index)['icon'] as IconData,
                        size: 40),
                  ),
                  Text(_fxList.elementAt(index)['deviceName'] as String),
                  Icon(_fxList.elementAt(index)['status'] as bool
                      ? Icons.toggle_off
                      : Icons.toggle_on)
                ],
              ));
        }));
  }
}

import 'package:flutter/material.dart';
import 'griddb.dart';
// import 'package:flutter_grid_button/flutter_grid_button.dart';

//tab row widget to hold the tabs
class TabBox extends StatelessWidget {
  TabBox();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text('All',
              style: TextStyle(
                fontSize: 21,
                color: Colors.white,
              )),
          IconButton(
              onPressed: null,
              icon: Icon(Icons.more_horiz),
              tooltip: 'More Option'),
        ],
      ),
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
      margin: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 20),
      color: const Color.fromARGB(255, 119, 119, 119),
    );
  }
}

//the gridbox container as a stateless widget
class GridBox extends StatefulWidget {
  const GridBox({Key? key}) : super(key: key);

  @override
  State<GridBox> createState() => _GridBox();
}

class _GridBox extends State<GridBox> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: GridView.count(
            shrinkWrap: true,
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            childAspectRatio: 2.0,
            children: List.generate(iotDB.length, (index) {
              return OutlinedButton(
                  onPressed: () {
                    setState(() =>
                        iotDB.elementAt(index)['status'] as bool != true
                            ? iotDB.elementAt(index)['status'] = true
                            : iotDB.elementAt(index)['status'] = false);
                    print(iotDB.elementAt(index)['status']);
                    print(iotDB.elementAt(index)['deviceName']);
                  },
                  child: Card(
                      margin: const EdgeInsets.all(0),
                      elevation: 5.0,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(iotDB[index]['icon'] as IconData, size: 40),
                          Text(iotDB[index]['deviceName'] as String),
                          Icon(iotDB[index]['status'] as bool
                              ? Icons.toggle_off
                              : Icons.toggle_on)
                        ],
                      )));
            })));
  }
}





//fail attempt
// //the gridbox container as a stateless widget
// class GridBox extends StatelessWidget {
//   const GridBox();

//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//         child: GridView.count(
//             shrinkWrap: true,
//             crossAxisCount: 2,
//             crossAxisSpacing: 10,
//             childAspectRatio: 2.0,
//             children: List.generate(iotDB.length, (index) {
//               return GridItem(key: key, index: index);
//             })));
//   }
// }

// class GridItem extends StatefulWidget {
//   const GridItem({Key? key, required this.index}) : super(key: key);
//   final int index;

//   @override
//   State<GridItem> createState() => _GridItem();
// }

// class _GridItem extends State<GridItem> {
//   //function for when button is pressed

//   // _toggleStatus(bool _powerStatus) {
//   //   setState(() {
//   //     if (_powerStatus) {
//   //       _powerStatus = true;
//   //     } else {
//   //       _powerStatus = false;
//   //     }
//   //     print(_powerStatus);
//   //   });
//   // }

//   @override
//   Widget build(BuildContext context) {
//     bool _powerStatus = iotDB[widget.index]['status'] as bool;
//     return GestureDetector(
//         behavior: HitTestBehavior.translucent,
//         onTap: () {
//           _powerStatus = !_powerStatus;
//         },
//         child: Card(
//             elevation: 5.0,
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Icon(iotDB[widget.index]['icon'] as IconData, size: 40),
//                 Text(iotDB[widget.index]['deviceName'] as String),
//                 Icon(_powerStatus ? Icons.toggle_off : Icons.toggle_on)
//               ],
//             )));
//   }
// }

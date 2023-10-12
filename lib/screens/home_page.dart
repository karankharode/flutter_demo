import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_demo/screens/widgets_screens/buttons_screen.dart';
import 'package:flutter_demo/screens/widgets_screens/container_screen.dart';
import 'package:flutter_demo/screens/widgets_screens/icons_screen.dart';
import 'package:flutter_demo/screens/widgets_screens/listview_screen.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Map> widgets = [
    {"title": "Container", "screen": const ContainerScreen()},
    {"title": "ListView", "screen": const ListViewScreen()},
    {"title": "Icons", "screen": const IconScreen()},
    {"title": "Buttons", "screen": const ButtonsScreen()},
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(
          widget.title,
          style: const TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 4),
            ListView.builder(
              itemCount: widgets.length,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, int index) {
                Map widgetData = widgets[index];
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          CupertinoPageRoute(
                            builder: (context) => widgetData['screen'],
                          ));
                    },
                    title: Text(widgetData['title'], style: const TextStyle(fontWeight: FontWeight.w600),),
                    shape: const RoundedRectangleBorder(
                        side: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.all(Radius.circular(12))),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                    trailing: const Icon(
                      Icons.arrow_forward_ios,
                      size: 15
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

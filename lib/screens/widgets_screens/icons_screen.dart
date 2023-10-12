import 'package:flutter/material.dart';

class IconScreen extends StatelessWidget {
  const IconScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
        title: const Text(
          "Icons",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.all(25.0),
              child: Wrap(
                runSpacing: 40,
                spacing: 40,
                children: [
                  Icon(
                    Icons.person,
                    color: Colors.lightBlueAccent,
                    size: 40,
                  ),
                  Icon(
                    Icons.car_crash,
                    color: Colors.redAccent,
                    size: 80,
                  ),
                  Icon(
                    Icons.check,
                    size: 40,
                    color: Colors.green,
                  ),
                  Icon(
                    Icons.location_city,
                    color: Colors.amber,
                    size: 50,
                  ),
                  Icon(
                    Icons.abc_outlined,
                    color: Colors.amber,
                    size: 60,
                  ),
                  Icon(
                    Icons.access_alarms_sharp,
                    color: Colors.lightBlueAccent,
                    size: 40,
                  ),
                  Icon(
                    Icons.add_to_home_screen,
                    color: Colors.redAccent,
                    size: 40,
                  ),
                  Icon(
                    Icons.play_for_work_sharp,
                    size: 90,
                    color: Colors.green,
                  ),
                  Icon(
                    Icons.notification_important,
                    color: Colors.deepPurpleAccent,
                    size: 40,
                  ),
                  Icon(
                    Icons.shopping_basket_rounded,
                    color: Colors.orangeAccent,
                    size: 50,
                  ),
                  Icon(
                    Icons.menu,
                    size: 60,
                    color: Colors.green,
                  ),
                  Icon(
                    Icons.air,
                    color: Colors.pink,
                    size: 40,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

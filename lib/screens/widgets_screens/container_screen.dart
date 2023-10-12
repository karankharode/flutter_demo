import 'package:flutter/material.dart';

class ContainerScreen extends StatelessWidget {
  const ContainerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
        title: const Text(
          "Containers",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 4),
            Container(
              margin: const EdgeInsets.
              symmetric(horizontal: 12, vertical: 4),
              decoration: const BoxDecoration(
                  color: Colors.lightBlue, 
                  borderRadius: BorderRadius
                  .all(Radius.circular(10))),
              height: 100,
            ),
            Container(
              margin: const EdgeInsets.
              symmetric(horizontal: 18, vertical: 4),
              decoration: const BoxDecoration(
                  color: Colors.redAccent, 
                  borderRadius: BorderRadius.all(
                    Radius.circular(10))),
              height: 100,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 4),
              decoration: const BoxDecoration(
                  color: Colors.amber, borderRadius: BorderRadius.all(Radius.circular(10))),
              height: 100,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 4),
              decoration: const BoxDecoration(
                  color: Colors.lightGreen, borderRadius: BorderRadius.all(Radius.circular(10))),
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ListViewScreen extends StatelessWidget {
  const ListViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Colors.white,
        title: const Text(
          "ListView",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body:  ListView.builder(
           itemBuilder: (BuildContext, index) {
             return const Padding(
               padding: EdgeInsets.all(2.0),
               child: Card(
                
                 child: ListTile(
                   leading: CircleAvatar(
                     
                   ),
                   title: Text("This is title"),
                   subtitle: Text("This is subtitle"),
                 ),
               ),
             );
           },

           itemCount: 20,
           shrinkWrap: true,
           padding: const EdgeInsets.symmetric(vertical:15, horizontal: 8),
           scrollDirection: Axis.vertical,
         ),
     
    );
  }
}

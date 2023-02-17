import 'package:flutter/material.dart';

void main() => runApp(ContactProfilePage());

class ContactProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      // Scaffold form home property
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber.shade600,

          leading: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),

          actions: <Widget>[
            IconButton(
              onPressed: () => print("Contact is starred"), 
              icon: Icon(Icons.star_border),
              color: Colors.white
            )
          ],
        ),

        body: Container(
          color: Colors.black87
        )
      ),
    );
  }
}
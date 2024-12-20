import 'package:flutter/material.dart';

import 'Email_sent.dart';
import 'datasent.dart';

class Screen_page extends StatelessWidget {
  const Screen_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(foregroundColor: Colors.white,
        actions: [Padding(
          padding: const EdgeInsets.only(right: 10),
          child: Icon(Icons.location_city),
        )],
        title: Text(
          "Where you want to Go",
          style: TextStyle(fontSize: 22),
        ),
        backgroundColor: Colors.teal,
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Datasent()));
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey.shade700,
                  foregroundColor: Colors.white),
              child: Text(
                "Data sent page",
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => email_Sent()));
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey.shade700,
                  foregroundColor: Colors.white),
              child: Text(
                "Email sent page",
                style: TextStyle(fontSize: 16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

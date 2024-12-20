import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Datasent extends StatefulWidget {
  const Datasent({super.key});

  @override
  State<Datasent> createState() => _DatasentState();
}

class _DatasentState extends State<Datasent> {
  TextEditingController nameController = TextEditingController();
  TextEditingController fatherController = TextEditingController();
  TextEditingController motherController = TextEditingController();
  TextEditingController villageController = TextEditingController();

  Future dataa() async {
    CollectionReference dataStore =
        FirebaseFirestore.instance.collection("Information");
    dataStore.add(
      {
        'name': nameController.text.toString(),
        'Father name': fatherController.text.toString(),
        'Mother name': motherController.text.toString(),
        'Village name': villageController.text.toString(),
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(title: Text("Data sent to Database firebase "),),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              controller: nameController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  focusColor: Colors.amber,
                  hintText: "Enter your Name",
                  prefixIcon: Icon(Icons.document_scanner),
                  fillColor: Colors.blueGrey,
                  filled: true,
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black))),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              controller: fatherController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  focusColor: Colors.amber,
                  hintText: "Enter your father name",
                  prefixIcon: Icon(Icons.document_scanner),
                  fillColor: Colors.blueGrey,
                  filled: true,
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black))),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              controller: motherController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  focusColor: Colors.amber,
                  hintText: "Enter your mother name",
                  prefixIcon: Icon(Icons.document_scanner),
                  fillColor: Colors.blueGrey,
                  filled: true,
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black))),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              
              controller: villageController,
              
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  focusColor: Colors.amber,
                  hintText: "Enter your village name",
                  prefixIcon: Icon(Icons.document_scanner),
                  fillColor: Colors.blueGrey,
                  filled: true,
                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black))), 
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {
              dataa();
              nameController.clear();
                 fatherController.clear();
                    motherController.clear();
                       villageController.clear();
            },
            style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.blueGrey.shade900),
            child: Text("Sent data to firebase"),
          ),




        ],
      ),
    );
  }
}

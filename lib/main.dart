import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'pages/Email_sent.dart';
import 'pages/Screen_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
 await Firebase.initializeApp();
  
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: ThemeData(brightness: Brightness.dark,),
      debugShowCheckedModeBanner: false,
   home: Screen_page(),
  


    );
  }    
}






import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

class email_Sent extends StatefulWidget {
  const email_Sent({super.key});

  @override
  State<email_Sent> createState() => _email_SentState();
}

class _email_SentState extends State<email_Sent> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
   sendMail()async{

     await FirebaseAuth.instance.createUserWithEmailAndPassword(
                  email: emailController.text.toString(),
                  password: passwordController.text.toString());


   }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        title: Text("Email sent  to Firebase "),
        backgroundColor: Colors.teal.shade800,
        foregroundColor: Colors.white,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  focusColor: Colors.amber,
                  hintText: "Enter your Email",
                  prefixIcon: Icon(Icons.email_outlined),
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
              autofocus: true,
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                  hintText: "Enter your Password",
                  prefixIcon: Icon(Icons.security_update_rounded),
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
            onPressed: ()  {
             sendMail();
             emailController.clear();
             passwordController.clear();

            },
            style: ElevatedButton.styleFrom(
                backgroundColor: Colors.brown.shade600,
                foregroundColor: Colors.white),
            child: Text("Sent your Data"),
          )
        ],
      ),
    );
  }
}

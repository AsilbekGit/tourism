
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'Home page.dart';
import 'RegisterPage.dart';


class LoginPage extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Login',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/assets/login.jpg'), // Replace with your image
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center, // This will center the widgets along the vertical axis
              children: <Widget>[
                SizedBox(height: 20), // Add space for better readability
                TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    labelText: 'Email',
                    fillColor: Colors.white, // This will make the background color white
                    filled: true, // Don't forget to set filled to true
                    border: OutlineInputBorder(), // Add borders to the input fields
                  ),
                ),
                SizedBox(height: 10), // Add space between input fields
                TextField(
                  controller: passwordController,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: OutlineInputBorder(),
                    fillColor: Colors.white, // This will make the background color white
                    filled: true, // Don't forget to set filled to true
                  ),
                  obscureText: true,
                ),
                SizedBox(height: 10), // Add space between input fields and the button
                ElevatedButton(
                  child: Text('Login', style: TextStyle(color: Colors.white),),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.deepOrangeAccent, // Add a color theme for the button
                  ),
              onPressed: () async {
                try {
                  UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
                    email: emailController.text,
                    password: passwordController.text,
                  );
                  // Navigate to home page...
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                } on FirebaseAuthException catch (e) {
                   String message='Wrong email or password';
                  if (e.code == 'user-not-found') {
                    message = 'No user found for that email.';
                  } else if (e.code == 'wrong-password') {
                    message = 'Wrong password provided for that user.';
                  }
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text('Error'),
                        content: Text(message),
                        actions: <Widget>[
                          TextButton(
                            child: Text('OK'),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                }
              },
            ),
            TextButton(
              child: Text('Register' ,style: TextStyle(color: Colors.white), ),

              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegisterPage()),
                );
              },
            ),
          ],
        ),
        ),
      ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import 'Home page.dart';

class RegisterPage extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController ageController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Register',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/assets/register.jpg'), // Replace with your image
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center, // This will center the widgets along the vertical axis
              children: <Widget>[
                TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                    labelText: 'Name',
                    fillColor: Colors.white, // This will make the background color white
                    filled: true, // Don't forget to set filled to true
                    border: OutlineInputBorder(), // Add borders to the input fields
                  ),
                ),
                SizedBox(height: 10), // Add space between input fields
                TextField(
                  controller: ageController,
                  decoration: InputDecoration(
                    labelText: 'Age',
                    fillColor: Colors.white, // This will make the background color white
                    filled: true, // Don't forget to set filled to true
                    border: OutlineInputBorder(), // Add borders to the input fields
                  ),
                ),
                SizedBox(height: 10), // Add space between input fields
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
                    fillColor: Colors.white, // This will make the background color white
                    filled: true, // Don't forget to set filled to true
                    border: OutlineInputBorder(), // Add borders to the input fields
                  ),
                  obscureText: true,
                ),
                SizedBox(height: 10), // Add space between input fields and the button
                ElevatedButton(
                  child: Text('Register', style: TextStyle(color: Colors.white),),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.deepOrangeAccent, // Add a color theme for the button
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ),
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

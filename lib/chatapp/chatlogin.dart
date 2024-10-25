import 'package:flutter/material.dart';

import 'chat_page.dart';

class Chatlogin extends StatefulWidget {
  const Chatlogin({super.key});

  @override
  State<Chatlogin> createState() => _ChatloginState();
}

class _ChatloginState extends State<Chatlogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Stack(
                children: [
                  Center(
                    child: Container(
                      height: 400,
                      width: 350,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Colors.pinkAccent.shade100, Colors.pinkAccent.shade200],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                        borderRadius: BorderRadius.circular(20), // Rounded corners
                      ),
                      child: Icon(
                        Icons.people_rounded,
                        size: 150,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 50),

            // Name input field
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.pinkAccent, width: 2),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  hintText: "Enter your name",
                  filled: true,
                  fillColor: Colors.pink[50], // Light pink background for the field
                  hintStyle: TextStyle(color: Colors.pinkAccent),
                ),
              ),
            ),

            SizedBox(height: 20),

            // Email input field
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.pinkAccent, width: 2),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  hintText: "Enter your email",
                  filled: true,
                  fillColor: Colors.pink[50], // Light pink background for the field
                  hintStyle: TextStyle(color: Colors.pinkAccent),
                ),
              ),
            ),

            SizedBox(height: 80),

            // Continue button
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>ChatPage()));
                // Add your onPressed logic here
              },
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 80, vertical: 20),
                backgroundColor: Colors.pinkAccent, // Light pink button color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: Text(
                "Continue",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 18,
                  color: Colors.white, // White text for contrast
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

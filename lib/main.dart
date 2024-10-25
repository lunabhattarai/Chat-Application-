import 'package:flutter/material.dart';
import 'package:lab1/pages/dashboard.dart';
import 'package:lab1/pages/loginpage.dart';
import 'package:lab1/pages/mapsclass.dart';

import 'chatapp/Conversationpage.dart';
import 'chatapp/chat_page.dart';
import 'chatapp/chatlogin.dart';
// import 'package:lab1/pages/dashboardpage.dart';
// import 'package:lab1/pages/loginpage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() {
  Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      // home:  loginPage(),
      // home:  loginPage(),
      // home: const ChatPage(),
      // home: const MyApp(),
      // home: const Chatlogin(),
      home: const ConversationPage(),
      // home: const MapSample(),
    );
  }
}


import 'package:flutter/material.dart';

class ConversationPage extends StatefulWidget {
  const ConversationPage({super.key});

  @override
  State<ConversationPage> createState() => _ConversationPageState();
}

class _ConversationPageState extends State<ConversationPage> {
  final TextEditingController textController = TextEditingController();

  // Widget for the left side message bubble
  Widget leftSideDataItem(Size size) {
    return Container(
      width: size.width,
      padding: const EdgeInsets.only(left: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.lightBlue,
              borderRadius: BorderRadius.circular(20),
            ),
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            width: size.width / 1.2,
            child: const Text(
              "Left Side Item",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }

  // Widget for the right side message bubble
  Widget rightSideDataItem(Size size) {
    return Container(
      width: size.width,
      padding: const EdgeInsets.only(left: 15, top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.lightBlue,
              borderRadius: BorderRadius.circular(20),
            ),
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            width: size.width / 1.2,
            child: const Text(
              "Right Side Item",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }

  // Widget for text input field with a send button
  Widget buttonWithText(Size size) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.lightBlue,
        borderRadius: BorderRadius.circular(15),
      ),
      width: size.width,
      child: Row(
        children: [
          Container(
            width: size.width / 1.5,
            child: TextField(
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.normal,
                color: Colors.black87,
              ),
              maxLines: 1,
              textAlign: TextAlign.center,
              controller: textController,
              onEditingComplete: () {
                // Add functionality for sending message
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 15, left: 5, bottom: 5),
            child: IconButton(
              icon: const Icon(Icons.send, color: Colors.white, size: 22),
              onPressed: () {
                // Add send message functionality here
              },
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // Get the size of the screen
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Conversation Page'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Message bubbles area
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              leftSideDataItem(size), // Display left-side message
              rightSideDataItem(size), // Display right-side message
            ],
          ),
          // Text input with send button
          buttonWithText(size),
        ],
      ),
    );
  }
}

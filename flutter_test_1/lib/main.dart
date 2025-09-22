import 'package:flutter/material.dart';

void main() {
  runApp(TheSecondSourceApp());
}

class TheSecondSourceApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'The Second Source',
      home: WelcomePage(),
    );
  }
}

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  final nameController = TextEditingController();
  String welcomeText = '';

  void showWelcome() {
    setState(() {
      welcomeText = 'Welcome to The Second Source!';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('The Second Source'),
        backgroundColor: const Color.fromARGB(255, 243, 139, 139),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Card(
              color: const Color.fromARGB(255, 207, 228, 243),
              elevation: 3,
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextField(
                  controller: nameController,
                  decoration: const InputDecoration(
                    labelText: 'Enter your name',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(onPressed: showWelcome, child: const Text('Submit')),
            const SizedBox(height: 20),
            if (welcomeText.isNotEmpty)
              Text(
                welcomeText,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
          ],
        ),
      ),
    );
  }
}

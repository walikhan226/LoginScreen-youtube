import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const LoginScreen(),
    );
  }
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text("Login Screen"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Center(
              child: Text(
                "Welcome to my app",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 40, right: 40, top: 20, bottom: 10),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text("Username or Email")),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 40, right: 40, top: 20, bottom: 10),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(), label: Text("Password")),
            ),
          ),
          ElevatedButton(onPressed: () {}, child: Text("Login"))
        ],
      ),
    );
  }
}

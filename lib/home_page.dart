import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
      ),
      body: Container(
        child: Column(
          children: [
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: 'Enter a number'),
            ),
            TextFormField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: 'Enter a number'),
            )
          ],
        ),
      ),
    );
  }
}

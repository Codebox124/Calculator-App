import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var num1 = 0, num2 = 0, sum = 0;

  final TextEditingController t1 = TextEditingController(text: '0');
  final TextEditingController t2 = TextEditingController(text: '0');
  void doaddition() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 + num2;
    });
  }

  void dosub() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 - num2;
    });
  }

  void domul() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 * num2;
    });
  }

  void dodiv() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 ~/ num2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Output : $sum",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.purple,
                    fontWeight: FontWeight.bold),
              ),
              TextFormField(
                controller: t1,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(hintText: 'Enter a number'),
              ),
              TextFormField(
                controller: t2,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(hintText: 'Enter a number'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  new ElevatedButton(
                    onPressed: () {
                      doaddition();
                    },
                    child: Text("+"),
                  ),
                  new ElevatedButton(
                    onPressed: () {
                      dosub();
                    },
                    child: Text("-"),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  new ElevatedButton(
                    onPressed: () {
                      domul();
                    },
                    child: Text("*"),
                  ),
                  new ElevatedButton(
                    onPressed: () {
                      dodiv();
                    },
                    child: Text("/"),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

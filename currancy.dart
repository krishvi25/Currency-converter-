import 'package:flutter/material.dart';

class Currancyy extends StatefulWidget {
  const Currancyy({super.key});
  @override
  State<Currancyy> createState() => Currancystate();
}

class Currancystate extends State<Currancyy> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();

  void convert() {
    result = double.parse(textEditingController.text) * 81;
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderSide: BorderSide(color: Colors.red, width: 2.0),
      borderRadius: BorderRadius.all(Radius.circular(100)),
    );
    return Scaffold(
      backgroundColor: Colors.limeAccent,
      appBar: AppBar(
        backgroundColor: Colors.limeAccent,
        elevation: 0,
        centerTitle: true,
        title: const Text('currency converter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(10),
              color: Colors.lightGreenAccent,
              child: Text(
                'INR ${result.toStringAsFixed(2)}',
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 0, 100, 83),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextField(
                controller: textEditingController,

                style: const TextStyle(color: Colors.brown),
                decoration: InputDecoration(
                  hintText: 'enter amount',
                  hintStyle: TextStyle(color: Colors.red),
                  prefixIcon: Icon(Icons.monetization_on),
                  prefixIconColor: Colors.brown,
                  filled: true,
                  fillColor: Colors.white,
                  focusedBorder: border,

                  enabledBorder: border,
                ),
                keyboardType: TextInputType.numberWithOptions(decimal: true),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: ElevatedButton(
                onPressed: convert,

                style: TextButton.styleFrom(
                  backgroundColor: Colors.deepOrangeAccent,
                  foregroundColor: Colors.yellowAccent,
                  minimumSize: Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: const Text('convert'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}




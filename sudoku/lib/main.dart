import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  final myControlloer = TextEditingController();
// int randomNumber = Random().nextInt(10);

  @override
  void initState() {
    super.initState();

    // Start listening to changes.
    myControlloer.addListener(_printLatestValue);
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the
    // widget tree.
    myControlloer.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    var rng = Random();
    // for (var i = 1; i < 10; i++) {
    //   // print(rng.nextInt(9));
    // }
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
              onPressed: () {
                setState(() {
                  rng;
                });
              },
              icon: const Icon(Icons.restart_alt_sharp),
            ),
          ],
        ),

        // floatingActionButton: FloatingActionButton.small(onPressed: (){}),

        body: Column(
          children: [
            Container(
              child: Expanded(
                child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                    ),
                    itemCount: 9,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        child: GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 3,
                          ),
                          itemCount: 9,
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              // color: Color.fromARGB(255, 188, 189, 165),

                              child: TextField(
                                onChanged: (text) {
                                  print('$text');
                                },
                                textAlign: TextAlign.center,
                                decoration: InputDecoration(
                                  // hintText: "${rng.nextInt(9) + 1}"
                                  enabledBorder: const OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.black, width: 1),
                                  ),
                                ),
                                controller: TextEditingController(
                                    text: "${rng.nextInt(9) + 1}"),
                              ),
                            );
                          },
                        ),
                      );
                    }),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Run"),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                clearText();
              },
              child: const Text("clear"),
            ),
            SizedBox(
              height: 170,
            ),
          ],
        ),
      ),
    );
  }

  void clearText() {
    myControlloer.clear();
  }

  void _printLatestValue() {
    print('Second text field: ${myControlloer.text}');
  }
}
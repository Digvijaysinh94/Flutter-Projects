import 'package:flutter/material.dart';

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
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // backgroundColor: Colors.teal,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    child: const CircleAvatar(
                  radius: 40,
                  backgroundImage: AssetImage('images/download.jpg'),
                )),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Digvijaysinh Vaghela",
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                // ignore: prefer_const_constructors
                Text(
                  "FLUTTER DEVLOPER",
                  // ignore: prefer_const_constructors
                  style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w100,
                      color: Colors.black.withOpacity(0.6)),
                ),
                const SizedBox(
                  height: 20,
                ),
                const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25.00))),
                    labelText: "phone number",
                    icon: Icon(Icons.call),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(25.00))),
                    labelText: "Email",
                    icon: Icon(Icons.mail),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const Homepage(),
    );
  }
}

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurpleAccent,
          title: const Text(
            "Elevated Buttons",
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: SizedBox(
            width: double.infinity,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // Rounded Button
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 40.0, vertical: 20.0),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        primary: Colors.purple),
                    child: const Text(
                      "ROUNDED",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),

                  // Spacing
                  Container(height: 20.0),

                  // Bevelled Button
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 40.0, vertical: 20.0),
                        shape: BeveledRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)),
                        primary: Colors.deepPurple),
                    child: const Text(
                      "BEVELLED",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),

                  // Spacing
                  Container(height: 20.0),

                  // Pill shaped
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 40.0, vertical: 20.0),
                      primary: Colors.deepPurpleAccent,
                      shape: const StadiumBorder(),
                    ),
                    child: const Text(
                      "PILL SHAPED",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),

                  // Spacing
                  Container(height: 20.0),

                  // Using clipper
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 40.0, vertical: 20.0),
                        primary: Colors.green,
                      ),
                      child: const Text(
                        "USING CLIPPER",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ),
                ])));
  }
}

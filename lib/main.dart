import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "Names Route Demo ", initialRoute: "/", routes: {
      "/": (context) => Homepage(),
      "/secondpage": (context) => SecondPage(),
      "/thirdpage": (context) => ThirdPage(),
    });
  }
}

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.red, title: Text("Home Page")),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
              icon: Icon(Icons.home),
            ),
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/secondpage');
              },
              icon: Icon(Icons.settings),
            ),
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/thirdpage');
              },
              icon: Icon(Icons.search),
            )
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue, title: Text("Second Page")),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
              icon: Icon(Icons.home),
            ),
            IconButton(
              onPressed: () {
                //Navigator.push(context,
                //MaterialPageRoute(builder: (context) => SecondPage()));
              },
              icon: Icon(Icons.settings),
            ),
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/thirdpage');
              },
              icon: Icon(Icons.search),
            )
          ],
        ),
      ),
    );
  }
}

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.green, title: Text("Third Page")),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/');
              },
              icon: Icon(Icons.home),
            ),
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/secondpage');
              },
              icon: Icon(Icons.settings),
            ),
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/thirdpage');
              },
              icon: Icon(Icons.search),
            )
          ],
        ),
      ),
    );
  }
}

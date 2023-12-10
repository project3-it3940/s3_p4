import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // toolbarHeight: 0,
          ),
      body: const Center(),
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(
            label: "Home",
            icon: Column(
              children: [Icon(Icons.home)],
            )),
        BottomNavigationBarItem(
            label: "Search",
            icon: Column(
              children: [Icon(Icons.search)],
            )),
        BottomNavigationBarItem(
            label: "Take Photo",
            icon: Column(
              children: [Icon(Icons.camera)],
            ))
      ]),
      drawer: const Drawer(
          child: Column(
        children: [
          UserAccountsDrawerHeader(
              accountName: Text("accountName"),
              accountEmail: Text("accountEmail")),
          ListTile(
            title: Text("Socical"),
            leading: Icon(Icons.people),
          ),
          ListTile(
            title: Text("Inbox"),
            leading: Icon(Icons.mail),
          ),
          ListTile(
            title: Text("Primary"),
            leading: Icon(Icons.inbox),
          ),
          ListTile(title: Text("Promotions"), leading: Icon(Icons.local_offer)),
        ],
      )),
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(eccentricity: 1.0),
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}

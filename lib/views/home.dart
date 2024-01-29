import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({super.key, required this.title});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return Card(
            color: Color.fromARGB(255, 187, 10, 10),
            child: ListTile(
              title: Text("Username:$index"),
              subtitle: Text("Mark Zuckerberg:$index"),
              leading:  CircleAvatar(
                radius: 20.0,
                child: Text(("An").toString().toUpperCase()),
              ),
              trailing: Container(
                width: 150.0,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.edit, color: Colors.teal),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.delete, color: Colors.red),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.list_alt_outlined,
                          color: Colors.blueAccent),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

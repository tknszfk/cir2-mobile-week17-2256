import 'package:flutter/material.dart';
import 'package:flutter_project/views/about.dart';
import 'package:flutter_project/views/home.dart';
import 'package:flutter_project/views/profile.dart';

class DashboardPage extends StatefulWidget {
  final String title;
  const DashboardPage({super.key, required this.title});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  late final String titleMenu;
  late final GestureTapCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: Text(widget.title),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text("Elon Musk"),
              accountEmail: Text("elonmusklnwza007@gmail.com"),
              currentAccountPicture: CircleAvatar(
                child: Icon(Icons.android),
              ),
            ),
          ],
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: GridView.count(
          crossAxisCount: 3,
          mainAxisSpacing: 20.0,
          crossAxisSpacing: 20.0,
          children: [
            CardWidget(
              titleMenu: 'RESTful API',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(title: "RESTful API"),
                  ),
                );
              },
            ),
            CardWidget(
              titleMenu: 'About Page',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AboutPage(title: "About Page"),
                  ),
                );
              },
            ),
            CardWidget(
              titleMenu: 'Profile Page',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        const ProfilePage(title: "Profile Page"),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget CardWidget(
      {required String titleMenu, required GestureTapCallback onTap}) {
    return Card(
      elevation: 20.0,
      color: Colors.red,
      child: InkWell(
        onTap: onTap,
        child: Center(
          child: Text(
            titleMenu,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}

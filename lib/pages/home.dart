import 'package:flutter/material.dart';
import 'package:pinterest/pages/messages.dart';
import 'package:pinterest/pages/profile.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Pinterest",
          style: TextStyle(color: Color.fromRGBO(230, 0, 35, 1), shadows: [
            Shadow(
              blurRadius: 5,
              color: Colors.grey,
            )
          ]),
        ),
        backgroundColor: Color.fromARGB(255, 206, 201, 201),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Color.fromARGB(255, 206, 201, 201),
          items: [
            BottomNavigationBarItem(
                icon: IconButton(
                  icon: Icon(Icons.home),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Homepage()));
                  },
                ),
                label: 'Home'),
            BottomNavigationBarItem(
                icon: IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Homepage()));
                  },
                ),
                label: 'Search'),
            BottomNavigationBarItem(
                icon: IconButton(
                  icon: Icon(Icons.post_add),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Homepage()));
                  },
                ),
                label: 'Post'),
            BottomNavigationBarItem(
                icon: IconButton(
                  icon: Icon(Icons.message),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => messages()));
                  },
                ),
                label: 'Messages'),
            BottomNavigationBarItem(
              icon: IconButton(
                icon: Icon(Icons.circle),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => profile()),
                  );
                },
              ),
              label: 'Profile',
            ),
          ]),
    );
  }
}

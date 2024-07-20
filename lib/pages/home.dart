import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pinterest",
        style: TextStyle(
          color: Color.fromRGBO(230, 0, 35,1),
          shadows: [
            Shadow(
              blurRadius: 5,
              color: Colors.grey,
            )
          ]
        ),
        ),
        backgroundColor: Color.fromARGB(255, 206, 201, 201),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color.fromARGB(255, 206, 201, 201),
        items:[
          BottomNavigationBarItem(icon: Icon(Icons.home),
          label: 'Home'
          ),
          BottomNavigationBarItem(icon: Icon(Icons.search),
          label: 'Search'
          ),
          
          BottomNavigationBarItem(icon: Icon(Icons.add),
          label: 'Post'
          ),
          BottomNavigationBarItem(icon: Icon(Icons.chat),
          label: 'Messages'
          ),
          BottomNavigationBarItem(icon: Icon(Icons.circle),
          label: 'Profile'
          ),
          
          
        ]
        ),
    );
  }
}
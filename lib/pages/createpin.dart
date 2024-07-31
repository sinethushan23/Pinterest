import 'package:flutter/material.dart';

class createPin extends StatelessWidget {
  const createPin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Create a new Pin',
          style: TextStyle(
            color: const Color.fromRGBO(230, 0, 35, 1),
          ),
        ),
      ),
      //Other Body parts
      body: Column(
        children: [
          Center(
            child: Image.asset('lib/images/IMG-20220827-WA0178.jpg'),
          ),
          Row(
            children: [
              ElevatedButton(
                child: Text("Select Image"),
                onPressed: () {
                  Navigator.pushNamed(context, '/home');
                },
              ),
              SizedBox(
                width: 125,
                height: 20,
              ),
              ElevatedButton(
                child: Text(
                  "Post ",
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/createaccount');
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

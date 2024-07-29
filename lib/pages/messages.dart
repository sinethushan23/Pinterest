import 'package:flutter/material.dart';

class messages extends StatelessWidget {
  const messages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appbar
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Messages',
          style: TextStyle(
            color: const Color.fromRGBO(230, 0, 35, 1),
          ),
        ),
      ),

      //Other Body parts
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Form(
          //Form
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  labelText: "person 1",
                  border: InputBorder.none,
                  fillColor: Colors.transparent,
                ),
              ),
              SizedBox(height: 0),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "person 2",
                  border: InputBorder.none,
                  fillColor: Colors.transparent,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

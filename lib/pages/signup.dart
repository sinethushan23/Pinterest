import 'package:flutter/material.dart';

class signup extends StatelessWidget {
  const signup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appbar
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Welcome to Pinterest',
          style: TextStyle(
            color: const Color.fromRGBO(230, 0, 35, 1),
          ),
        ),
      ),

      //Other Body parts
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Form(
          //Form
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Enter your gmail",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Enter your password",
                  border: OutlineInputBorder(),
                ),
              ),

              //elevated buttons

              Row(
                children: [
                  ElevatedButton(
                    child: Text("Log in"),
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
                      "Create account",
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/createaccount');
                    },
                  ),
                ],
              ),

              Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        child: Center(),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            onPrimary: Color.fromARGB(255, 46, 3, 175)),
                        child: Text("Forget password"),
                        onPressed: () {
                          Navigator.pushNamed(context, '/home');
                        },
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

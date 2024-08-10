import 'package:flutter/material.dart';

class createAccount extends StatelessWidget {
  const createAccount({super.key});

  @override
  Widget build(BuildContext context) {
    final _emailController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Create a new account',
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
                SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Enter your name",
                    border: OutlineInputBorder(),
                  ),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your name';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Enter your nick name",
                    border: OutlineInputBorder(),
                  ),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your nick name';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),
                TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    labelText: "Enter your email",
                    border: OutlineInputBorder(),
                  ),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your email';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Enter your password",
                    border: OutlineInputBorder(),
                  ),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your password';
                    }
                    return null;
                  },
                ),

                //elevated buttons

                Row(
                  children: [
                    SizedBox(
                      width: 120,
                      height: 20,
                    ),
                    ElevatedButton(
                      child: Text("Create account"),
                      onPressed: () async {
                        final email = _emailController.text;
                        final subject = 'Welcome to Pinterest!';
                        final body = 'Confirm your email account';
                      },
                    )
                  ],
                )
              ],
            ),
          )),
    );
  }
}

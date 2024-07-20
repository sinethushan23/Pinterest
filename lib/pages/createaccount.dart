import 'package:flutter/material.dart';

class createAccount extends StatelessWidget {
  const createAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      
      appBar: AppBar( centerTitle: true,
        title: Text('Create a new account',
      style: TextStyle(color: const Color.fromRGBO(230, 0, 35,1
      ),
      ),
      ),

      ),
      //Other Body parts
      body: 
      Padding(padding: const EdgeInsets.all(15.0),
      child: Form(
          //Form
          child: Column(
            children: 
             [
              
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
                
            SizedBox(width: 120, height: 20,),
            ElevatedButton(
              child: Text("Create account"),
              onPressed: (){
                Navigator.pushNamed(context, '/home');
              },
              

            )
            ],
            )
            ],
          ),)
          
      ),
    );
  }
}
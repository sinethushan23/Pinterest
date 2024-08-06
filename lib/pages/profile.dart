import 'package:flutter/material.dart';

class profile extends StatelessWidget {
  const profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'My Profile',
          style: TextStyle(
            color: const Color.fromRGBO(230, 0, 35, 1),
          ),
        ),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: [
                Center(
                  child: Column(children: [
                    Image.asset(
                        "lib/images/sarath-caters-high-resolution-logo.png"),
                    Align(
                      alignment: Alignment.topCenter,
                      child: CircleAvatar(
                        radius: 50,
                        backgroundImage:
                            AssetImage('lib/images/IMG-20220827-WA0178.jpg'),
                      ),
                    ),
                  ]),
                ),
                Text(
                  "Sineth Ushan",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                  ),
                ),
                Text(
                  "Sineth_ushan",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Text(
                  "Welcome!",
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Center(
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, '/createpin');
                            },
                            child: Text("Create Pin")),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                    height: 20), // space between the button and the gallery
              ],
            ),
          ),
          SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 1,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
            ),
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Image.asset(
                  'lib/images/sarath-caters-high-resolution-logo.png', //  image path
                  fit: BoxFit.cover,
                );
              },
              childCount: 99, //  number of images
            ),
          ),
        ],
      ),
    );
  }
}

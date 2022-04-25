import 'package:flutter/material.dart';

class Favourite extends StatelessWidget {
  const Favourite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white.withOpacity(0),
        leading: const Icon(Icons.arrow_back),
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'alisesmith',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 15),
                    height: 40,
                    width: 40,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage('assets/stories1.jpg'),
                          fit: BoxFit.cover),
                    ),
                  ),
                ]),
          )
        ],
      ),
    );
  }
}

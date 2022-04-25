import 'package:flutter/material.dart';

class Stories extends StatelessWidget {
  final String? photo;
  final String? text;
  const Stories({Key? key, this.photo, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        margin: const EdgeInsets.only(right: 10, left: 10),
        padding: const EdgeInsets.all(4.0),
        height: 67,
        width: 67,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xfff9B2282),
              Color(0xffEEA863),
            ],
          ),
        ),
        child: Container(
          padding: const EdgeInsets.all(0.1),
          height: 65,
          width: 65,
          decoration: const BoxDecoration(shape: BoxShape.circle, boxShadow: [
            BoxShadow(
              color: Colors.white,
              spreadRadius: 1,
              blurRadius: 1,
              offset: Offset(0.3, 0.3),
            ),
          ]),
          child: Padding(
            padding: const EdgeInsets.all(1.0),
            child: Container(
              padding: const EdgeInsets.all(8.0),
              width: 65,
              height: 65,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage('$photo'), fit: BoxFit.cover),
              ),
            ),
          ),
        ),
      ),
      const SizedBox(height: 8),
      Text('$text')
    ]);
  }
}

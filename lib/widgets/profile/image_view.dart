import 'package:flutter/material.dart';

class ImageView extends StatelessWidget {
  const ImageView({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
                        padding: const EdgeInsets.all(8.0),
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage('assets/stories1.jpg'), fit: BoxFit.cover),
                        ),
                      );
  }
}
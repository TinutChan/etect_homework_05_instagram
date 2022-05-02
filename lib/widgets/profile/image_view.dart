import 'package:flutter/material.dart';

class ImageView extends StatelessWidget {
  final String? images;
  ImageView({Key? key, this.images}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('$images'), fit: BoxFit.cover),
      ),
    );
  }
}

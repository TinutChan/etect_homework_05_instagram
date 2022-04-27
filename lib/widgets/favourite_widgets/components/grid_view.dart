import 'package:flutter/material.dart';

class GridviewWidgets extends StatelessWidget {
  final String? images;
  const GridviewWidgets({
    Key? key,
    this.images,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.count(
        primary: false,
        padding: EdgeInsets.zero,
        crossAxisSpacing: 1,
        mainAxisSpacing: 1,
        crossAxisCount: 3,
        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('$images'), fit: BoxFit.cover),
            ),
          ),
        ],
      ),
    );
  }
}

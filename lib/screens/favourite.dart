import 'package:etect_homework_05_instagram/widgets/favourite_widgets/profile_detail.dart';
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
          Detail(),
        ],
      ),
    );
  }
}

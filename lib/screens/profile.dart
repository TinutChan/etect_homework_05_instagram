import 'package:etect_homework_05_instagram/widgets/profile_widgets/profile_detail.dart';
import 'package:etect_homework_05_instagram/widgets/profile_widgets/tab_bar.dart';
import 'package:flutter/material.dart';

class Favourite extends StatelessWidget {
  const Favourite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.only(left: 15, top: 15, bottom: 10),
              child: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
            ),
            const Detail(),
            const Expanded(
              child: TabBar_Widgets(),
            ),
          ],
        ),
      ),
    );
  }
}

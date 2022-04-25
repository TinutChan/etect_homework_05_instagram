import 'package:etect_homework_05_instagram/models/new_feed_items.dart';
import 'package:etect_homework_05_instagram/widgets/new_feed.dart';
import 'package:etect_homework_05_instagram/widgets/stories_widgets.dart';
import 'package:flutter/material.dart';

import '../models/stories_items.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blue.withOpacity(0),
        leading: const Icon(
          Icons.camera_alt_outlined,
          color: Colors.black,
        ),
        title: Container(
          height: 40,
          decoration: const BoxDecoration(
            shape: BoxShape.rectangle,
            image: DecorationImage(
              image: AssetImage('assets/instagram.png'),
            ),
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(15.0),
            child: Icon(
              Icons.send,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(15),
              child: Row(
                children: const [
                  Text(
                    'Stories',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Icon(Icons.arrow_right),
                  Text(
                    'Watch all',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Wrap(
                    children: stories_list.map((e) {
                  return Stories(
                    photo: e.photo,
                    text: e.text,
                  );
                }).toList()),
              ),
            ),
            Wrap(
              children: newfeed_list.map((e) {
                return NewFeed(
                  newfeedPhoto: e.newfeedPhoto,
                  profilePhoto: e.profilePhoto,
                  username: e.username,
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}

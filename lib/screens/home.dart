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
        centerTitle: true,
        title: const Text(
          'Instagram',
          style: TextStyle(color: Colors.black),
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
            SingleChildScrollView(
              padding: const EdgeInsets.only(left: 15),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const Stories(isCheck: true,photo: 'assets/stories1.jpg',text: 'Your Story'),
                  Padding(
                    padding: const EdgeInsets.only(left: 0),
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
                ],
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

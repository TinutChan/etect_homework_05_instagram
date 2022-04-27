import 'package:flutter/material.dart';

class NewFeed extends StatelessWidget {
  final String? profilePhoto;
  final String? username;
  final String? newfeedPhoto;
  const NewFeed({Key? key, this.profilePhoto, this.username, this.newfeedPhoto})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Divider(
            color: Colors.grey,
            height: 10,
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 10, left: 10),
                  padding: const EdgeInsets.all(4.0),
                  height: 47,
                  width: 47,
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
                    height: 45,
                    width: 45,
                    decoration:
                        const BoxDecoration(shape: BoxShape.circle, boxShadow: [
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
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage('$profilePhoto'),
                              fit: BoxFit.cover),
                        ),
                      ),
                    ),
                  ),
                ),
                Text(
                  '$username',
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                const Icon(Icons.more_horiz_outlined),
              ],
            ),
          ),
          Container(
            margin:
                const EdgeInsets.only(left: 20, right: 20, top: 15, bottom: 15),
            height: 330,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                  image: AssetImage('$newfeedPhoto'), fit: BoxFit.cover),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Row(
              children: const [
                Icon(Icons.favorite_border),
                SizedBox(width: 10),
                Icon(Icons.circle_outlined),
                SizedBox(width: 10),
                Icon(Icons.send),
                Spacer(),
                Icon(Icons.bookmark_border),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15, top: 10),
            child: Text('2.875 Likes'),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 8.0, bottom: 10),
            child: Row(
              children: const [
                Text('marinadillaco'),
                SizedBox(width: 10),
                Text('Hi!'),
                SizedBox(width: 10),
                Text(
                  '#marinad',
                  style: TextStyle(color: Colors.blue),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class Stories extends StatelessWidget {
  final String? photo;
  final String? text;
  final bool? isCheck;
  const Stories({Key? key, this.photo, this.text, this.isCheck = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 90,
      child: Stack(
        children: [
          Positioned(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Container(
                  margin: const EdgeInsets.only(right: 15),
                  padding: const EdgeInsets.all(3.0),
                  height: 67,
                  width: 67,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    gradient: isCheck == true
                        ? null
                        : const LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color(0xfff9b2282),
                              Color(0xffEEA863),
                            ],
                          ),
                  ),
                  child: Container(
                    padding: const EdgeInsets.all(2),
                    height: 65,
                    width: 65,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.white,
                          spreadRadius: 0,
                          blurRadius: 0,
                          offset: Offset(0.3, 0.3),
                        ),
                      ],
                    ),
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
                SizedBox(
                  height: 7,
                ),
                Text(
                  '$text',
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          // If true diplay + Your Story
          //Text('$text'),
          isCheck == true
              ? Positioned(
                  right: 12,
                  bottom: 25,
                  child: Container(
                    height: 18,
                    width: 18,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 0,
                          spreadRadius: 3,
                          color: Colors.white,
                          offset: Offset(0.5, 0.5),
                        )
                      ],
                    ),
                    child: Container(
                      width: 18,
                      height: 18,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blue,
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.add,
                          size: 18,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                )
              : Container(),
          // Text('$text')
        ],
      ),
    );
  }
}

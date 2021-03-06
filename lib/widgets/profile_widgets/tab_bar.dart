import 'package:etect_homework_05_instagram/widgets/profile/image_view.dart';
import 'package:flutter/material.dart';

import '../../models/imageview_items.dart';

class TabBar_Widgets extends StatelessWidget {
  final String? images;
  const TabBar_Widgets({Key? key, this.images}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List _assetsList = [
      {'images': 'assets/photo1.jpg'},
      {'images': 'assets/photo2.jpg'},
      {'images': 'assets/stories1.jpg'},
      {'images': 'assets/photo1.jpg'},
      {'images': 'assets/photo2.jpg'},
      {'images': 'assets/stories1.jpg'},
      {'images': 'assets/photo1.jpg'},
      {'images': 'assets/photo2.jpg'},
      {'images': 'assets/stories1.jpg'},
      {'images': 'assets/photo1.jpg'},
      {'images': 'assets/photo2.jpg'},
      {'images': 'assets/stories1.jpg'}
    ];
    return DefaultTabController(
      length: 4,
      initialIndex: 0,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(top: 10),
              child: const TabBar(
                labelColor: Colors.blue,
                unselectedLabelColor: Colors.black,
                tabs: [
                  Tab(
                    icon: Icon(Icons.view_comfortable_sharp),
                  ),
                  Tab(
                    icon: Icon(Icons.list),
                  ),
                  Tab(
                    icon: Icon(Icons.star_border),
                  ),
                  Tab(
                    icon: Icon(Icons.contact_mail_rounded),
                  ),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.51,
              decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(color: Colors.grey, width: 0.5),
                ),
              ),
              child: TabBarView(
                children: [
                  SizedBox(
                    child: GridView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: _assetsList.length,
                      padding: EdgeInsets.zero,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 1.5,
                        mainAxisSpacing: 1.5,
                      ),
                      // ignore: non_constant_identifier_names
                      itemBuilder: (Context, int index) {
                        return ImageView(
                          images: _assetsList[index]['images'],
                        );
                      },
                    ),
                  ),
                  const Center(
                    child: Text('Display Tab 2',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold)),
                  ),
                  const Center(
                    child: Text('Display Tab 3',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold)),
                  ),
                  const Center(
                    child: Text('Display Tab 4',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

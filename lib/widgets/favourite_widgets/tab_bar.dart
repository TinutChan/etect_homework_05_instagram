import 'package:flutter/material.dart';

import '../../models/grid_view_photo_list.dart';

class TabBar_Widgets extends StatelessWidget {
  final String? images;
  const TabBar_Widgets({Key? key, this.images}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: DefaultTabController(
        length: 4,
        initialIndex: 0,
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
              height: 350,
              decoration: const BoxDecoration(
                border: Border(
                  top: BorderSide(color: Colors.grey, width: 0.5),
                ),
              ),
              child: TabBarView(children: <Widget>[
                GridView.builder(
                  primary: false,
                  shrinkWrap: true,
                  itemCount: Gridviews_Items.length,
                  padding: EdgeInsets.zero,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 1,
                      mainAxisSpacing: 1),
                  itemBuilder: (Context, int index) {
                    return Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('$images'), fit: BoxFit.cover),
                      ),
                    );
                  },
                ),
                Container(
                  child: const Center(
                    child: Text('Display Tab 2',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold)),
                  ),
                ),
                Container(
                  child: const Center(
                    child: Text('Display Tab 3',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold)),
                  ),
                ),
                Container(
                  child: const Center(
                    child: Text('Display Tab 4',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold)),
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}

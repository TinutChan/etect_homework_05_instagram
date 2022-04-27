import 'package:flutter/material.dart';

// import '../../models/grid_view_photo_list.dart';
import '../../models/grid_view_photo_list.dart';
import 'components/grid_view.dart';

class TabBar_Widgets extends StatelessWidget {
  final String? images;
  const TabBar_Widgets({Key? key, this.images}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: DefaultTabController(
        length: 4, // length of tabs
        initialIndex: 0,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 10),
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
                  height: 400,
                  decoration: const BoxDecoration(
                    border: Border(
                      top: BorderSide(color: Colors.grey, width: 0.5),
                    ),
                  ),
                  child: TabBarView(children: <Widget>[
                    Wrap(
                        children: Gridviews_Items.map((e) {
                      return GridviewWidgets(
                        images: e.images,
                      );
                    }).toList()),
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
                )
              ]),
        ),
      ),
    );
  }
}

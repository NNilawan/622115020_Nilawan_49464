// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_new

import 'package:flutter/material.dart';
import 'package:starbucks/pages/orderPage.dart';

class Sliverbar extends StatefulWidget {
  const Sliverbar({Key? key}) : super(key: key);

  @override
  _SliverbarState createState() => _SliverbarState();
}

class _SliverbarState extends State<Sliverbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 3,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                elevation: 0,
                leading: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.grey[600],
                ),
                actions: [
                  Icon(
                    Icons.search,
                    size: 30,
                    color: Colors.grey[600],
                  ),
                  Padding(padding: EdgeInsets.fromLTRB(8, 8, 8, 8)),
                ],
                pinned: true,
                floating: false,
                expandedHeight: 100.0,
                backgroundColor: Colors.grey[200],
                flexibleSpace: FlexibleSpaceBar(
                    title: Text(
                  'Mobile Order & Pay',
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                )),
                centerTitle: true,
              ),
              SliverPersistentHeader(
                delegate: MySliverPersistentHeaderDelegate(
                  TabBar(
                    indicatorColor: Colors.green[900],
                    isScrollable: true,
                    tabs: [
                      Tab(
                        child: Text(
                          "Menu",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Tab(
                        child: Text(
                          "Featured",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                      Tab(
                        child: Text(
                          "Previous",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                pinned: true,
              )
            ];
          },
          body: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              OrderPage(),
            ],
          ),
        ),
      ),
    );
  }
}

class MySliverPersistentHeaderDelegate extends SliverPersistentHeaderDelegate {
  MySliverPersistentHeaderDelegate(this._tabBar);

  final TabBar _tabBar;

  @override
  double get minExtent => _tabBar.preferredSize.height;
  @override
  double get maxExtent => _tabBar.preferredSize.height;

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new Container(
      child: _tabBar,
      color: Colors.grey[200],
    );
  }

  @override
  bool shouldRebuild(MySliverPersistentHeaderDelegate oldDelegate) {
    return false;
  }
}

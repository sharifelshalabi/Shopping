import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:thefinalproject/Drawer.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> with SingleTickerProviderStateMixin{
  TabController tabController;
  @override
  void initState() {
    tabController = TabController(length: 4, vsync: this);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Products By Categories'),
        bottom: TabBar(
          tabs: [
            Tab(
              text: 'gfnbfgb',
            ),
            Tab(
              text: 'fg nfbg fb',
            ),
            Tab(
              text: 'gb gdf',
            ),
            Tab(
              text: 'dfbg',
            ),
          ],
          controller: tabController,
        ),
      ),
      drawer: SideBar(),
      body: TabBarView(
        controller: tabController,
        children: [
          ListView(
          ),
          ListView(),
          ListView(),
          ListView(),
        ],
      ),
    );
  }
}

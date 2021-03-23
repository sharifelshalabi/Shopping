import 'package:thefinalproject/Custom_Widgets.dart';

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
        backgroundColor: Colors.redAccent,
        title: Text('Products By Categories'),
        bottom: TabBar(
          tabs: [
            Tab(
              text: '1',
            ),
            Tab(
              text: '2',
            ),
            Tab(
              text: '3',
            ),
            Tab(
              text: '4',
            ),
          ],
          controller: tabController,
        ),
      ),
      drawer: SideBar(),
      body: TabBarView(
        controller: tabController,
        children: [
          ListView(),
          ListView(),
          ListView(),
          ListView(),
        ],
      ),
    );
  }
}

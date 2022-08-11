import 'package:flutter/material.dart';

class ProfileTab extends StatefulWidget {
  const ProfileTab({Key? key}) : super(key: key);

  @override
  State<ProfileTab> createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> with SingleTickerProviderStateMixin{

// 상태가 있는 위젯은 상태값들을 보존하고 추적할수 있다.
TabController? _tabController;

@override
  void initState() {
    super.initState();
    _tabController = new TabController(length: 2, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return Column(
        children: [
            _buildTabBar(),
            Expanded(child: _buildTabBarView()) 
            
        ],
    );
  }
  Widget _buildTabBar() {
return TabBar(
  controller: _tabController,
  tabs: const [
  Tab(icon: Icon(Icons.receipt_long_rounded)),
  Tab(icon: Icon(Icons.access_alarm_rounded)),
]);
}
Widget _buildTabBarView() {
  return TabBarView(
    controller: _tabController,
    children: [ 
    GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 3,
     crossAxisSpacing: 10, 
     mainAxisSpacing: 10),
     itemCount: 42, 
     itemBuilder:(context, index){
      return Image.network("https://picsum.photos/id/${index + 1}/200/200");
     }),
     Container(
      color: Colors.orange,
     )
  ]);
}
}



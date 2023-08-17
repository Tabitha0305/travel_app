import 'package:flutter/material.dart';
import 'package:travel_app/main.dart';

class  extends StatefulWidget {
  const ({Key? key}) : super(key: key);

  @override
  State<> MainPagecreateState() => _MainPageState();
}

class _MainPageState extends MainPage> {
  List page = [
    HomePage(),
     BarItemPage(),
      SearchPage(),
       Mypage(),
];
  int currentIndex=0;
  void onTap(int index){
    setState(() {
      currentIndex = index;
    });

}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.white,
    body: pages[currentIndex],
bottomNavigationBar:BottomNavigationBar(
unselectedFontSize: 0,
selectedFontSize: 0,
type: BottomNavigationBarType.fixed,
backgroundColor: Colors.white,
onTap: onTap,
currentIndex: currentIndex,
selectedItemColor:Colors.black54,
unselectedItemColor:Colors.grey.withOpacity(0.5),
showUnselectedLabels: false,
showSelectedLabels: false,
elevation: 0,
items:[
BottomNavigationBarItem(title: Text("Home"),icon: Icon(Icons.apps)),
BottomNavigationBarItem(title: Text("Bar"),icon: Icon(Icons.bar_chart)),
BottomNavigationBarItem(title: Text("Search"),icon: Icon(Icons.search)),
BottomNavigationBarItem(title: Text("My"),icon: Icon(Icons.person)),

  }
}

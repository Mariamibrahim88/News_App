
import 'package:flutter/material.dart';
import 'package:news_app2/views/Home_View.dart';

import '../widgets/card_list_view.dart';


class Nav extends StatefulWidget {

  @override
  State<Nav> createState() => Nav_State();
}

class Nav_State extends State<Nav> {
  int _selectedIndex =0;
  List<Widget> _widgetOptions = <Widget>[
    HomeView(),
    CardListView(),

  ];
  void _onItemTap(int index){
    setState(() {
      _selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('NewsApp'),
      // ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.black,
        unselectedFontSize: 14,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home,color: Colors.black,),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category_outlined,color: Colors.black),
            label: 'Category',
          ),
        ],
        currentIndex: _selectedIndex,
        onTap:  _onItemTap,
        selectedItemColor: Colors.black,

      ),
      
    );
  }
}

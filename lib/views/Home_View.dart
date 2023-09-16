import 'package:flutter/material.dart';

import '../widgets/new_list_view_builder.dart';
import '../widgets/news_list_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white38,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black45,
        title: Center(child: Text('Home',style: TextStyle(color: Colors.black),)),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.0),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            NewListViewBuilder(
              category: 'general',
            ),
          ],
        ),
      ),
      //mainAxisAlignment: MainAxisAlignment.center,
    );
  }
}

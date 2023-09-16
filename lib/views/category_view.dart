import 'package:flutter/material.dart';
import 'package:news_app2/widgets/news_list_view.dart';

import '../widgets/new_list_view_builder.dart';


class CategoryView extends StatelessWidget {
  const CategoryView({Key? key, required this.category}) : super(key: key);
  final String category;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //backgroundColor: Colors.white38,
        appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.black45,
        leading: Icon(Icons.arrow_back,color: Colors.black,),
        title:  Text('News of Category',style: TextStyle(
          color: Colors.black
        ),)
        ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.0),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            NewListViewBuilder(
               category: category,
             ),
          ],
        ),
      ),
    );
  }
}

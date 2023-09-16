import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app2/views/category_view.dart';

import '../models/article_model.dart';
import '../services/new_service.dart';
import 'news_list_view.dart';


class NewListViewBuilder extends StatefulWidget {
  const NewListViewBuilder({super.key,required this.category});

  final String category;
  @override
  State<NewListViewBuilder> createState() => _NewListViewBuilderState();
}

class _NewListViewBuilderState extends State<NewListViewBuilder> {
  var future;
  @override

  void initState (){
    super.initState();
      future= NewService(Dio()).getTopHeadlines(category: widget.category);

  }
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
            future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NewsListView(
              articles: snapshot.data!,
            );
          } else if (snapshot.hasError) {
            return const SliverToBoxAdapter(child: Text('Oops , try later'));
          } else {
            return SliverToBoxAdapter(
              child: Container(
                height: MediaQuery.of(context).size.height,
                child: Center(
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation(Colors.greenAccent),
                  ),
                ),
              ),
            );
            // return const SliverToBoxAdapter(
            //   child: Center(
            //     child: CircularProgressIndicator(
            //       valueColor: AlwaysStoppedAnimation(Colors.greenAccent),
            //     ),),);
          }
        });
  }
}
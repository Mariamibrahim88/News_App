
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:news_app2/models/category_model.dart';
import '../app_data.dart';
import 'category_item.dart';

class CardListView extends StatelessWidget {
  CardListView({
    super.key,
  });

  // final List<CategoryModel> categories = [
  //   CategoryModel(image: "assets/sports.jpg", categoryName: "Sports"),
  //   CategoryModel(image: "assets/business-team.jpg", categoryName: "Business"),
  //   CategoryModel(image: "assets/science.avif", categoryName: "Science"),
  //   CategoryModel(image: "assets/technology.jpeg", categoryName: "Technology"),
  //   CategoryModel(
  //       image: "assets/entertaiment.avif", categoryName: "Entertaiment"),
  //   CategoryModel(image: "assets/health.avif", categoryName: "Health"),
  //   CategoryModel(image: "assets/General.jpg", categoryName: "General"),
  //
  // ];

//   // return SizedBox(
//   //   height: 85,
//   return ListView.builder(
//   itemCount: categories.length,
//   itemBuilder: (context,index){
//   return  CategoryCard(
//   category: categories[index],
//   );
//   });
// // );
// }
// }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white38,
      appBar: AppBar(
        elevation: 0,
          backgroundColor: Colors.black45,
          title: Center(child: Text('Category',style: TextStyle(color: Colors.black),))
      ),
      body: GridView(
        physics: BouncingScrollPhysics(),
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          //childAspectRatio: 3/2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        children:
          Categories_data.map((category_data) =>
              CategoryCard(category: category_data)
          ).toList(),

      ),
    );
  }

}

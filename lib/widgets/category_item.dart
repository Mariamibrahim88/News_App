import 'package:flutter/material.dart';
import 'package:news_app2/models/category_model.dart';
import 'package:news_app2/views/category_view.dart';
import 'card_list_view.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key,required this.category}) ;

  final CategoryModel category;
  //final CategoryModel image;
  //final CategoryModel categoryName ;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context){
          return CategoryView(
            category: category.categoryName,
          );
        }
        ));
      },
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(category.image,
              height: 500,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            child: Center(
              child: Text(category.categoryName,
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.6),
              borderRadius: BorderRadius.circular(15)

            ),


          )
        ],
      ),
    );
  }
}

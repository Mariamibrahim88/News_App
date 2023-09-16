import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../models/article_model.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '../views/news_datails.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({Key? key, required this.articlModel}) : super(key: key);

  final ArticleModel articlModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        GestureDetector(
          onTap: (){
       {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => articlModel.url !=null?
              Details(url: articlModel.url!):Icon(Icons.error),
          ),
        );
      }
          },
          child: ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child:
              // CachedNetworkImage(
              //   imageUrl: articlModel.image!,
              //   placeholder: (context,url)=> const CircularProgressIndicator(),
              //   errorWidget: (context,url,error)=>const Icon(Icons.error),
              // )
              articlModel.image !=null ?
              Image.network(articlModel.image!,
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ) : Icon(Icons.error),
          ),
        ),
        SizedBox(
          height: 12,
        ),
        Text(articlModel.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20,
              color: Colors.black
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Text(articlModel.subtitle??'',
          style: TextStyle(
              fontSize: 14,
              color: Colors.grey
          ),
        ),
        //Expanded(child: Details(url: articlModel.url??' ')),

      ],

    );
  }
}
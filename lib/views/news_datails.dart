import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:webview_flutter_plus/webview_flutter_plus.dart';

import '../models/article_model.dart';

class Details extends StatelessWidget {
  const Details({Key? key, required this.url}) : super(key: key);
final String url;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.black45,
        leading: Icon(Icons.arrow_back,color: Colors.black,),
        title: Text(
          'Details',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.0),
        child: WebViewPlus(
          initialUrl: url
        ),
      ),

    );
  }
}

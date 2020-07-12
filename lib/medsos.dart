import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Medsos extends StatelessWidget {
  final String url = "https://www.instagram.com/devi.sant/";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(url),
        centerTitle: true,
        bottom: PreferredSize(
          child: Container(
            color: Colors.pinkAccent,
            height: 4.0,
          ),
          preferredSize: null,
        ),
      ),
      body: WebView(
        initialUrl: url,
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}

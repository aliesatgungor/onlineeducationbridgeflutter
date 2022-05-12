import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  late  WebViewController controller;
  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Online Eğitim Köprüsü",
      color: Colors.blue,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Online Eğitim Köprüsü"),

        ),
          body: WebView(
            javascriptMode: JavascriptMode.unrestricted,
            initialUrl: "https://www.aliesatgungor.com",
            onWebViewCreated: (controller){
              this.controller = controller;
            },
          ),
      ),
    );
  }
}



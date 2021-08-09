import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  /// build is it working the hot reloade
  Widget build(BuildContext context) {
    final title = 'hex color';
  /// that is function for create all component on the screen
  Container app({Color colors, String color = ''}) {
    return Container(
      color: colors,
      width: double.infinity,
      padding: EdgeInsets.only(
        left: 20,
        top: 20,
        bottom: 20,
      ),
      child: Text(
        color,
        style: TextStyle(
          color: Colors.black,
        ),
      ),
    );
  }
/// end of fun

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      home: Scaffold(
        /// app bar
        appBar: AppBar(
          title: Text(
            title,
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        
        // SingleChildScrollView it is ScrollView
        body: SingleChildScrollView(
          child: Column(
            children: [
              /// All colors
              app(colors: Colors.red, color: 'red'),
              app(colors: Colors.pink, color: 'pink'),
              app(colors: Colors.purple, color: 'purple'),
              app(colors: Colors.deepPurple, color: 'deepPurple'),
              app(colors: Colors.indigo, color: 'indigo'),
              app(colors: Colors.blue, color: 'blue'),
              app(colors: Colors.lightBlue, color: 'lightBlue'),
              app(colors: Colors.cyan, color: 'cyan'),
              app(colors: Colors.green, color: 'green'),
              app(colors: Colors.lightGreen, color: 'lightGreen'),
              app(colors: Colors.lime, color: 'lime'),
              app(colors: Colors.yellow, color: 'yellow'),
              app(colors: Colors.orange, color: 'orange'),
            ],
          ),
        ),
      ),
    );
  }
}

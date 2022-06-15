import 'package:all_color/style/styles.dart';
import 'package:flutter/material.dart';

import 'setting_page.dart';

class ColorsPage extends StatefulWidget {
  const ColorsPage({Key? key}) : super(key: key);

  @override
  State<ColorsPage> createState() => _ColorsPageState();
}

class _ColorsPageState extends State<ColorsPage> {

 Widget cardColor({Color? color, String? title,  String? hexColor}) {
    return InkWell(
      child: Card(
        color: color,
        child: ListTile(
          textColor: Colors.white,
          title: Text(title!),
          subtitle: SelectableText('This Is $title Color , Hex: #$hexColor'),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('allColorDemo'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  SettingPage()),
              );
            },
              child: Icon(Icons.settings),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(kPadding / 2),
        child: SafeArea(
          child: ListView(
            children: [
              cardColor(color: Colors.red, title: 'Red', hexColor: 'F44336FF'),
              cardColor(color: Colors.pink, title: 'Pink', hexColor: 'E91E63FF'),
              cardColor(color: Colors.purple, title: 'Purple', hexColor: '9C27B0FF'),
              cardColor(color: Colors.deepPurple,title: 'DeepPurple', hexColor: '673AB7FF'),
              cardColor(color: Colors.indigo, title: 'Indigo', hexColor: '673AB7FF'),
              cardColor(color: Colors.blue, title: 'Blue', hexColor: '2196F3FF'),
              cardColor(color: Colors.lightBlue,title: 'LightBlue',hexColor: '03A9F4FF'),
              cardColor(color: Colors.cyan, title: 'Cyan', hexColor: '00BCD4FF'),
              cardColor(color: Colors.teal, title: 'Teal', hexColor: '009688FF'),
              cardColor(color: Colors.green, title: 'Green', hexColor: '4CAF50FF'),
              cardColor(color: Colors.lightGreen,title: 'LightGreen', hexColor: '8BC34AFF'),
              cardColor(color: Colors.lime, title: 'Lime', hexColor: 'CDDC39FF'),
              cardColor(color: Colors.yellow, title: 'Yellow', hexColor: 'FFEB3BFF'),
              cardColor(color: Colors.amber, title: 'Amber', hexColor: 'FFC107FF'),
              cardColor(color: Colors.orange, title: 'Orange', hexColor: 'FF9800FF'),
              cardColor(color: Colors.deepOrange,title: 'DeepOrange', hexColor: 'FF5722FF'),
              cardColor( color: Colors.brown, title: 'Brown', hexColor: '795548FF'),
              cardColor(color: Colors.grey, title: 'Grey', hexColor: '9E9E9EFF'),
              cardColor(color: Colors.blueGrey,title: 'BlueGrey', hexColor: '607D8BFF'),
            ],
          ),
        ),
      ),
    );
  }
}

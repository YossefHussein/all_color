import 'package:all_color/style/styles.dart';
import 'package:flutter/material.dart';

class ColorsPage extends StatefulWidget {
  const ColorsPage({Key? key}) : super(key: key);

  @override
  State<ColorsPage> createState() => _ColorsPageState();
}

class _ColorsPageState extends State<ColorsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(kPadding),
        child: SafeArea(
          child: ListView(
            children: [
              cardColor(color: Colors.red, title: 'Red', hexColor: 'f44336'),
              cardColor(color: Colors.pink, title: 'Pink', hexColor: 'e91e63'),
              cardColor(
                  color: Colors.purple, title: 'Purple', hexColor: '9c27b0'),
              cardColor(
                  color: Colors.deepPurple,
                  title: 'Purple',
                  hexColor: '673ab7'),
              cardColor(
                  color: Colors.indigo, title: 'Indigo', hexColor: '3f51b5'),
              cardColor(color: Colors.blue, title: 'Blue', hexColor: '2196f3'),
              cardColor(
                  color: Colors.lightBlue,
                  title: 'LightBlue',
                  hexColor: '03a9f4'),
              cardColor(color: Colors.cyan, title: 'Cyan', hexColor: '00bcd4'),
              cardColor(color: Colors.teal, title: 'Teal', hexColor: '009688'),
              cardColor(
                  color: Colors.green, title: 'Green', hexColor: '4caf50'),
              cardColor(
                  color: Colors.lightGreen,
                  title: 'LightGreen',
                  hexColor: '8bc34a'),
              cardColor(color: Colors.lime, title: 'Lime', hexColor: 'cddc39'),
              cardColor(
                  color: Colors.yellow, title: 'Yellow', hexColor: 'ffc107'),
              cardColor(
                  color: Colors.amber, title: 'Amber', hexColor: 'ffc107'),
              cardColor(
                  color: Colors.orange, title: 'Orange', hexColor: 'ff9800'),
              cardColor(
                  color: Colors.deepOrange,
                  title: 'DeepOrange',
                  hexColor: 'ff5722'),
              cardColor(
                  color: Colors.brown, title: 'Brown', hexColor: '795548'),
              cardColor(color: Colors.grey, title: 'Grey', hexColor: '9e9e9e'),
              cardColor(
                  color: Colors.blueGrey,
                  title: 'BlueGrey',
                  hexColor: '607d8b'),
            ],
          ),
        ),
      ),
    );
  }

  Widget cardColor({Color? color, String? title, String? hexColor}) {
    return Card(
      color: color,
      child: ListTile(
        textColor: Colors.white,
        title: Text(title!),
        subtitle: Text('This Is $title Color , Hex: #$hexColor'),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SettingPage extends StatefulWidget {
  const SettingPage({Key? key}) : super(key: key);

  @override
  State<SettingPage> createState() => _SettingPageState();
}

class _SettingPageState extends State<SettingPage> {
  final Uri _url = Uri.parse('https://www.materialpalette.com/indigo/green');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Row(
                  children: [
                    InkWell(
                      onTap: () => _launchUrl(),
                      child: Text('source of app in this website: '),
                    ),
                    SelectableText('(https://bit.ly/3Hy4Pej)')
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void _launchUrl() async {
    if (!await launchUrl(_url)) throw 'Could not launch $_url';
  }
}

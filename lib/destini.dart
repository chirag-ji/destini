import 'package:flutter/material.dart';

String appName = 'Destini';

void main() {
  runApp(MaterialApp(
    title: appName,
    theme: ThemeData.dark(),
    home: Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: StoryPage(),
        ),
      ),
    ),
  ));
}

class StoryPage extends StatefulWidget {
  const StoryPage({Key? key}) : super(key: key);

  @override
  _StoryPageState createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

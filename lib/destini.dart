import 'package:destini/story.dart';
import 'package:destini/story_brain.dart';
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
  Story? story;
  StoryBrain brain = StoryBrain();

  @override
  void initState() {
    retrieveStory();
  }

  void retrieveStory() {
    setState(() {
      story = brain.getNextStory();
    });
  }

  void onChoiceMade(int choice) {
    this.retrieveStory();
  }

  @override
  Widget build(BuildContext context) {
    TextStyle buttonTextStyle = TextStyle(color: Colors.white, fontSize: 20.0);
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 12,
            child: Center(
              child: Text(
                brain.getCurrentStoryDescription(),
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.red),
              ),
              onPressed: () => onChoiceMade(1),
              child: Text(
                brain.getCurrentStoryChoice1(),
                style: buttonTextStyle,
              ),
            ),
          ),
          SizedBox(height: 20.0),
          Expanded(
            flex: 2,
            child: TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Colors.blue),
              ),
              onPressed: () => onChoiceMade(2),
              child: Text(
                brain.getCurrentStoryChoice2(),
                style: buttonTextStyle,
              ),
            ),
          )
        ],
      ),
    );
  }
}

import 'package:destini/story.dart';

class StoryBrain {
  int _currentStory = -1;

  List<Story> _data = [
    Story(
      storyDesc:
          'Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: "Need a ride, boy?".',
      choice1: 'I\'ll hop in. Thanks for the help!',
      choice2: 'Better ask him if he\'s a murderer first.',
    ),
    Story(
      storyDesc: 'He nods slowly, unphased by the question.',
      choice1: 'At least he\'s honest. I\'ll climb in.',
      choice2: 'Wait, I know how to change a tire.',
    ),
    Story(
      storyDesc:
          'As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.',
      choice1: 'I love Elton John! Hand him the cassette tape.',
      choice2: 'It\'s him or me! You take the knife and stab him.',
    ),
    Story(
      storyDesc:
          'What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?',
      choice1: 'Restart',
      choice2: '',
    ),
    Story(
      storyDesc:
          'As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.',
      choice1: 'Restart',
      choice2: '',
    ),
    Story(
      storyDesc:
          'You bond with the murderer while crooning verses of "Can you feel the love tonight". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: "Try the pier".',
      choice1: 'Restart',
      choice2: '',
    )
  ];

  bool isLastStory() {
    return _currentStory >= _data.length - 1;
  }

  int getCurrentStoryIdx() {
    return _currentStory;
  }

  Story getNextStory() {
    if (!isLastStory()) _currentStory++;
    return _data[_currentStory];
  }

  void resetStoryBoard() {
    _currentStory = 0;
  }

  String getStoryDescription(int storyIndex) {
    return _data[storyIndex].storyDesc;
  }

  String getChoice1Text(int storyIndex) {
    return _data[storyIndex].choice1;
  }

  String getChoice2Text(int storyIndex) {
    return _data[storyIndex].choice2;
  }

  String getCurrentStoryDescription() {
    return getStoryDescription(_currentStory);
  }

  String getCurrentStoryChoice1() {
    return getChoice1Text(_currentStory);
  }

  String getCurrentStoryChoice2() {
    return getChoice2Text(_currentStory);
  }
}

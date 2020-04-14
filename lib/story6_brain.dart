import 'story.dart';

class Story6Brain {
  List<Story> _storyData = [
    //Story0
    Story(
      storyTitle:
          'Your car has blown a tire on a winding road in the middle of nowhere with no cell phone reception. You decide to hitchhike. A rusty pickup truck rumbles to a stop next to you. A man with a wide brimmed hat with soulless eyes opens the passenger door for you and asks: "Need a ride, boy?".',
      choice1: 'I\'ll hop in. Thanks for the help!',
      choice2: 'Better ask him if he\'s a murderer first.',
    ),
    //Story1
    Story(
      storyTitle: 'He nods slowly, unphased by the question.',
      choice1: 'At least he\'s honest. I\'ll climb in.',
      choice2: 'Wait, I know how to change a tire.',
    ),
    //Story2
    Story(
      storyTitle:
          'As you begin to drive, the stranger starts talking about his relationship with his mother. He gets angrier and angrier by the minute. He asks you to open the glovebox. Inside you find a bloody knife, two severed fingers, and a cassette tape of Elton John. He reaches for the glove box.',
      choice1: 'I love Elton John! Hand him the cassette tape.',
      choice2: 'It\'s him or me! You take the knife and stab him.',
    ),
    //Story3
    Story(
      storyTitle:
          'What? Such a cop out! Did you know traffic accidents are the second leading cause of accidental death for most adult age groups?',
      choice1: 'Restart',
      choice2: '',
    ),
    //Story4
    Story(
      storyTitle:
          'As you smash through the guardrail and careen towards the jagged rocks below you reflect on the dubious wisdom of stabbing someone while they are driving a car you are in.',
      choice1: 'Restart',
      choice2: '',
    ),
    //Story5
    Story(
      storyTitle:
          'You bond with the murderer while crooning verses of "Can you feel the love tonight". He drops you off at the next town. Before you go he asks you if you know any good places to dump bodies. You reply: "Try the pier".',
      choice1: 'Restart',
      choice2: '',
    ),
  ];

  //A method, called getStory(), that returns the correct storyTitle from _storyData.
  String getStory() {
    return _storyData[_storyNumber].storyTitle;
  }

  //A method, called getChoice1(), that returns the correct text for choice1 from _storyData.
  String getChoice1() {
    return _storyData[_storyNumber].choice1;
  }

  //A method, called getChoice2(), that returns the correct text for choice2 from _storyData.
  String getChoice2() {
    return _storyData[_storyNumber].choice2;
  }

  //A property called storyNumber which starts with a value of 0. This will be used to track which story the user is currently viewing.
  int _storyNumber = 0;

  int reset() {
    return _storyNumber = 0;
  }

  //A method, called nextStory(), that has 1 input (choiceNumber) which is the choice number (int) made by the user.
  void nextStory(int choiceNumber) {
    //Update nextStory() to change the storyNumber depending on the choice made by the user.
    if (_storyNumber == 0 && choiceNumber == 1) {
      _storyNumber = 2;
    } else if (_storyNumber == 0 && choiceNumber == 2) {
      _storyNumber = 1;
    } else if (_storyNumber == 2 && choiceNumber == 1) {
      _storyNumber = 5;
    } else if (_storyNumber == 2 && choiceNumber == 2) {
      _storyNumber = 4;
    } else if (_storyNumber == 1 && choiceNumber == 1) {
      _storyNumber = 2;
    } else if (_storyNumber == 1 && choiceNumber == 2) {
      _storyNumber = 3;
    }
    //If the storyNumber is equal to 3 or 4 or 5, it's the end, call the method reset() to reset the storyNumber to 0.
    else if (_storyNumber == 3 || _storyNumber == 4 || _storyNumber == 5) {
      reset();
    }
  }

  //A method, called buttonShouldBeVisible(), that checks to see if storyNumber is 0 or 1 or 2 then returns true if that's the case, else it returns false.
  bool buttonShouldBeVisible() {
    if (_storyNumber == 0 || _storyNumber == 1 || _storyNumber == 2) {
      return true;
    } else {
      return false;
    }
  }

  bool moreStoriesShouldBeVisible() {
    if (_storyNumber == 0 || _storyNumber == 1 || _storyNumber == 2) {
      return false;
    } else {
      return true;
    }
  }
}

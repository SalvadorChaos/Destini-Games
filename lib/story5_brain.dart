import 'story.dart';

class Story5Brain {
  List<Story> _storyData = [
    //Story0
    Story(
      storyTitle:
          'You wake up one moring to some upper back pain, just below the back of your neck. You start to gently rub it and it feels good, so you rub a little harder till you realize that when you push down hard enough you can feel a lump that you\'ve never felt there before.',
      choice1: 'Immediately go to the doctor.',
      choice2: 'I think I\'ll wait it out to see if it goes away.',
    ),
    //Story1
    Story(
      storyTitle:
          'After a couple of days pass by, the lump is still there but it doesn\'t hurt anymore and it feels like it\'s not growing. You\'re significantly relieved.',
      choice1: 'I\'ll go to the doctor anyways to see what it is.',
      choice2:
          'Since it\'s not growing and doesn\' hurt, I\'ll forget about it.',
    ),
    //Story2
    Story(
      storyTitle:
          'The doctor suggests surgery to take it out. You agree and ungergo surgery the very next day. After coming to, the doctor says he has some news. You sit up, egar to hear. He explains that it wasn\'t cancer but what they found was a strange small metal object shaped like a tictac.',
      choice1: 'As I drive home, freaked out, I make plans to call someone.',
      choice2: 'As I drive home I jam to music, thankful it wasn\'t cancer.',
    ),
    //Story3
    Story(
      storyTitle:
          'More days pass and the lump is still there. No pain or size difference. Late at night you start feeling strange. You start hearing a beeping noise followed by a strange sensation in the back of your neck. Moments later you vanish and appear aboard an alien ship! You\'ve been abducted by aliens! You start to think this isn\'t the first time either!',
      choice1: 'Restart',
      choice2: '',
    ),
    //Story4
    Story(
      storyTitle:
          'Once you\'re home you start to remember a dream you had the the other night. You distinctively remember lying down staring at a white ceiling while 3 tall thin beings with big heads and big eyes stood over you. You start to think to yourself, maybe that wasn\'t a dream...',
      choice1: 'Restart',
      choice2: '',
    ),
    //Story5
    Story(
      storyTitle:
          'After arriving home you can\'t decide who to call. A friend? The cops? A lawyer? Before you can decide you start to remember a dream you had the other night. You distinctively remember lying down staring at a white ceiling while 3 tall thin beings with big heads and big eyes stood over you.. or. Maybe that wasn\'t a dream...',
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

import 'story.dart';

class Story6Brain {
  List<Story> _storyData = [
    //Story0
    Story(
      storyTitle:
          'Months after the death of your wife, your 18-year-old son says, "I saw mom in the kitchen..." You wait a moment and reply with a quivering voice, "What?" He responds, "I saw her yesterday in the kitch—", you cut him off, "You\'re mom is dead!" Your son angrily goes to his room.',
      choice1: 'Ignore this situation and carry on.',
      choice2: 'Go check up on him and apologize.',
    ),
    //Story1
    Story(
      storyTitle:
          'You walk to your sons room. You open his room door to find him laying flat on his bed above the covers with his eyes closed. "I\'m sorry... Are you okay?", you ask. Billy replys, "Get out. I\'m trying to see mom again."',
      choice1: 'I understand and get out.',
      choice2: 'Get mad and stop him from doing whatever he\'s doing.',
    ),
    //Story2
    Story(
      storyTitle:
          'As you carry on about your day, you remember hearing your wife talk about her interest in using the third eye. How, once mastered, you can remote view by traveling in the astral plane or even travel to diffrent times and timelines.',
      choice1: 'Start doing some research on how to use the third eye.',
      choice2: 'Forget about it, that stuff is science fiction.',
    ),
    //Story3
    Story(
      storyTitle:
          'You get more strict with your son and he eventually moves out. You see online that he is living a happy and fulfilled life. You\'re happy for him even though you yourself have hit rock bottom. The happiest you are now is when you\'re reminiscing about the good old days with your wife and son.',
      choice1: 'Restart',
      choice2: '',
    ),
    //Story4
    Story(
      storyTitle:
          'You carry on and eventually see your son get happier and happier with each day. You ask him how he\'s so happy. He goes on to tell you that he has been using his third eye to heal his life. In using his third eye he figured out a way to shift realities to better his life. You start to believe and let him teach you. You both live happily ever after.',
      choice1: 'Restart',
      choice2: '',
    ),
    //Story5
    Story(
      storyTitle:
          'You start researching how to use your third eye. You eventally start successfuly using it. You find peace and wellness in your travels and bond with your son over this new found power. You both live on happily ever after.',
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

import 'story.dart';

class Story3Brain {
  List<Story> _storyData = [
    //Story0
    Story(
      storyTitle:
          'You\'re being responsible and walking to your apartment after a long night out drinking. As you get closer to home the streets get darker. All of a sudden you hear a strugel behind a corner. You take a peek and see a man trying to mug a woman.',
      choice1: 'Mind your own business and continue home.',
      choice2: 'Decide to do something about it.',
    ),
    //Story1
    Story(
      storyTitle:
          'You yell out "Hey, leave her alone"! The man stops and the woman runs away. The man starts power walking towards you as he holds up his knife. You get behind the corner and start thinking what to do.',
      choice1: 'Fight him!',
      choice2: 'Start running home!',
    ),
    //Story2
    Story(
      storyTitle:
          'As you walk home you start hearing extra footsteps following behind you. You stop and turn but it\'s too dark to make anyone out. You continue to walk and you hear the footsteps again. This time when you turn around there\'s a man covered in blood gripping his knife standing right in front of you!',
      choice1: 'Scream, running!',
      choice2: 'OMG! Fight him!',
    ),
    //Story3
    Story(
      storyTitle:
          'You start running home. Once you get home you\'re relieved. You\'re heart slowing down from pounding moments ago. You feel good for savng that woman and gain some confidence. The next night, on the news, you see that same man got arrested for trying to mug a man who turned out to be a cop. "Haha!"',
      choice1: 'Restart',
      choice2: '',
    ),
    //Story4
    Story(
      storyTitle:
          'You\'re pumped and ready to fight, but as soon as you throw your first punch, his knife jams right into your stomach. You look into his dark soulless eyes and then down at the knife. He slides the knife across and out your side as your blood and guts come pouring out. He watches as you bleed out on the floor.',
      choice1: 'Restart',
      choice2: '',
    ),
    //Story5
    Story(
      storyTitle:
          'You start running home, screaming. Once you get home you\'re relieved. You\'re heart slowing down from pounding moments ago. All of a sudden a crash! The man followed your screams and threw himself into your window! He grabs you before you can run and slits your throat. He watches as you bleed out on the floor.',
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
      _storyNumber = 4;
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

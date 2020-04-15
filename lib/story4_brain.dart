import 'story.dart';

class Story4Brain {
  List<Story> _storyData = [
    //Story0
    Story(
      storyTitle:
          'You find yourself nearing the end of an adventure of a lifetime. You and a smart muscular man have been on a quest to find an ancient tresure chest full of gold and rubies. You stumble upon a clue. A riddle written in hieroglyphs on a stone. You have no idea what it means. You watch as the man studies the hieroglyphs.',
      choice1: 'Patiently wait.',
      choice2: '"WELL?! WHAT DOES IT SAY?!"',
    ),
    //Story1
    Story(
      storyTitle:
          'The man slowly turns his head. "I don\'t know yet... I\'m thinking." He takes a while longer beforer leading you both to a mountainside. He moves a giant rock revealing a cave. You excitedly run in. "WAIT!", he yells. But it\'s too late. The floor opens up and you fall in, but not before grabbing onto the ledge. It\'s a booby trap!',
      choice1: 'Just hang there.',
      choice2: '"WELL, HELP ME!"',
    ),
    //Story2
    Story(
      storyTitle:
          'The man helps you out. He explains the riddle and you understand. You work together to figure out the next few clues. Finally you find the tresure chest buried beneath a giant boulder. The two of you dig it out and open it. The gold and rubies are blinding.',
      choice1: 'Hug the man, "We did it!"',
      choice2: 'Punch him and take the tresure for yourself!',
    ),
    //Story3
    Story(
      storyTitle:
          '"I won\'t help you," he says. "Earlier you rudely yelled at me for no reason whatsoever. We\'ve been cool all throughout this long journy. We\'ve been Buds! Now you do it again? It\'s so uncharacteristic of you, as if something took over you and chose for you to do that. You\'re not the person I thought you were. Goodbye." As he walks off, you loose your grip and fall to your death.',
      choice1: 'Restart',
      choice2: '',
    ),
    //Story4
    Story(
      storyTitle:
          'He\'s too big and muscular to knock out! He despises your betrayal and punches you in the face, knocking you out. You wake up to the man and the tresure nowhere to be found.',
      choice1: 'Restart',
      choice2: '',
    ),
    //Story5
    Story(
      storyTitle:
          'The two of you split the tresure 50/50 and live long and wealthy lives.',
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

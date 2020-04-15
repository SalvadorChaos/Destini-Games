import 'story.dart';

class Story2Brain {
  List<Story> _storyData = [
    //Story0
    Story(
      storyTitle:
          'You find yourself standing in the trenches of World War I. We\'ve lost at least 500 men, your best friend being among them. That same friend was killed by the same bullet that grazed your forehead leaving a deep gash. You\'ve just been ordered to attack.',
      choice1: 'Be brave and charge out of that trench!',
      choice2: 'Grasp your gun and shed some tears.',
    ),
    //Story1
    Story(
      storyTitle:
          'Your commanding officer yells at you, "Stop crying and get over that hill"! You slowly turn as you cry and start climbing. As you peek your head out you see people shooting eachother, screaming, and dying. "Now!", your commanding officer yells.',
      choice1: 'Calm down put on a brave face and charge!',
      choice2: 'Slowly walk out to start aiming for enemies.',
    ),
    //Story2
    Story(
      storyTitle:
          'You charge and start killing enemies one by one. As you continue to take out enemies you hear a very low plane about to pass by above you. You start thinking a plane this low might be this low to drop bombs!',
      choice1: 'Shoot directly above you to shoot down the plane.',
      choice2: 'Wait to see if it\'s an ememy plane.',
    ),
    //Story3
    Story(
      storyTitle:
          'What? You went slowly? Perfect for the enemies to aim and shoot you before you can even aim! You\'re dead!',
      choice1: 'Restart',
      choice2: '',
    ),
    //Story4
    Story(
      storyTitle:
          'The plane passes above and you see you\'ve made the right choice. The plane drops bombs onto the enemies, lowering their number of men immensely. Great job!',
      choice1: 'Restart',
      choice2: '',
    ),
    //Story5
    Story(
      storyTitle:
          'Direct hit! The plane stumbles to the ground and explodes killing a lot of the enemies. Bad thing is, the plane was a friendly and your commanding officer is furious.',
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

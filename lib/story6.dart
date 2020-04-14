import 'package:flutter/material.dart';

import 'more_stories_page.dart';
import 'story6_brain.dart';

Story6Brain story6Brain = Story6Brain();

class Story6 extends StatefulWidget {
  _Story6State createState() => _Story6State();
}

class _Story6State extends State<Story6> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/background6.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(0.0),
            child: AppBar(
              backgroundColor: Colors.transparent,
              brightness: Brightness.dark,
              elevation: 0.0,
            ),
          ),
          body: Container(
            color: Colors.transparent,
            padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
            constraints: BoxConstraints.expand(),
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Expanded(
                    flex: 12,
                    child: Center(
                      child: Text(
                        //Use storyBrain to get the first story title to display in this Text Widget.
                        story6Brain.getStory(),
                        style: TextStyle(
                          fontSize: 25.0,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: FlatButton(
                      onPressed: () {
                        //Choice 1 made by user.
                        //Call the nextStory() method from storyBrain and pass 1 as the choice made by the user.
                        setState(() {
                          story6Brain.nextStory(1);
                        });
                      },
                      color: Colors.red,
                      child: Text(
                        //Use storyBrain to get the text for choice 1.
                        story6Brain.getChoice1(),
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Expanded(
                    flex: 2,
                    //Set the "visible" property to equal the output from the buttonShouldBeVisible() method in storyBrain.
                    child: Visibility(
                      visible: story6Brain.buttonShouldBeVisible(),
                      child: FlatButton(
                        onPressed: () {
                          //Choice 2 made by user.
                          //Call the nextStory() method from storyBrain and pass 2 as the choice made by the user.
                          setState(() {
                            story6Brain.nextStory(2);
                          });
                        },
                        color: Colors.blue,
                        child: Text(
                          //Use storyBrain to get the text for choice 2.
                          story6Brain.getChoice2(),
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Visibility(
                    visible: story6Brain.moreStoriesShouldBeVisible(),
                    child: Container(
                      height: 90,
                      child: FloatingActionButton(
                        backgroundColor: Colors.black,
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MoreStoriesPage(),
                          ),
                        ),
                        child: Text(
                          'More',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

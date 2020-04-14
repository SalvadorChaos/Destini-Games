import 'package:flutter/material.dart';

import 'more_stories_page.dart';
import 'story2_brain.dart';

Story2Brain story2Brain = Story2Brain();

class Story2 extends StatefulWidget {
  _Story2State createState() => _Story2State();
}

class _Story2State extends State<Story2> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/background2.png"),
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
              brightness: Brightness.light,
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
                        story2Brain.getStory(),
                        style: TextStyle(
                          color: Colors.black,
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
                          story2Brain.nextStory(1);
                        });
                      },
                      color: Colors.red,
                      child: Text(
                        //Use storyBrain to get the text for choice 1.
                        story2Brain.getChoice1(),
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
                      visible: story2Brain.buttonShouldBeVisible(),
                      child: FlatButton(
                        onPressed: () {
                          //Choice 2 made by user.
                          //Call the nextStory() method from storyBrain and pass 2 as the choice made by the user.
                          setState(() {
                            story2Brain.nextStory(2);
                          });
                        },
                        color: Colors.blue,
                        child: Text(
                          //Use storyBrain to get the text for choice 2.
                          story2Brain.getChoice2(),
                          style: TextStyle(
                            fontSize: 20.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Visibility(
                    visible: story2Brain.moreStoriesShouldBeVisible(),
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

import 'package:flutter/material.dart';

import 'story1.dart';
import 'story2.dart';
import 'story3.dart';
import 'story4.dart';
import 'story5.dart';
import 'story6.dart';

class MoreStoriesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
//          leading: IconButton(
//            icon: Icon(Icons.arrow_back_ios),
//            onPressed: () => Navigator.pop(context),
//          ),
          title: Text(
            'More Stories',
            style: TextStyle(
              color: Colors.white,
              fontSize: 33.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            color: Colors.black,
            child: Card(
              color: Colors.black,
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 72.0,
                  ),
                  Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        FlatButton(
                          child: Text(
                            'Hitchhiking                              ',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 27.0,
                            ),
                          ),
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Story1(),
                            ),
                          ),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(
                          width: 1.5,
                          color: Colors.grey[850],
                        ),
                        bottom: BorderSide(
                          width: 0.75,
                          color: Colors.grey[850],
                        ),
                      ),
                    ),
                    height: 96.0,
                  ),
                  Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        FlatButton(
                          child: Text(
                            'Story 2                              ',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 27.0,
                            ),
                            textAlign: TextAlign.start,
                          ),
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Story2(),
                            ),
                          ),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(
                          width: 0.75,
                          color: Colors.grey[850],
                        ),
                        bottom: BorderSide(
                          width: 0.75,
                          color: Colors.grey[850],
                        ),
                      ),
                    ),
                    height: 96.0,
                  ),
                  Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        FlatButton(
                          child: Text(
                            'Story 3                              ',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 27.0,
                            ),
                          ),
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Story3(),
                            ),
                          ),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(
                          width: 0.75,
                          color: Colors.grey[850],
                        ),
                        bottom: BorderSide(
                          width: 0.75,
                          color: Colors.grey[850],
                        ),
                      ),
                    ),
                    height: 96.0,
                  ),
                  Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        FlatButton(
                          child: Text(
                            'Story 4                              ',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 27.0,
                            ),
                          ),
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Story4(),
                            ),
                          ),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(
                          width: 0.75,
                          color: Colors.grey[850],
                        ),
                        bottom: BorderSide(
                          width: 0.75,
                          color: Colors.grey[850],
                        ),
                      ),
                    ),
                    height: 96.0,
                  ),
                  Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        FlatButton(
                          child: Text(
                            'Story 5                              ',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 27.0,
                            ),
                          ),
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Story5(),
                            ),
                          ),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(
                          width: 0.75,
                          color: Colors.grey[850],
                        ),
                        bottom: BorderSide(
                          width: 0.75,
                          color: Colors.grey[850],
                        ),
                      ),
                    ),
                    height: 96.0,
                  ),
                  Container(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        FlatButton(
                          child: Text(
                            'Story 6                              ',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 27.0,
                            ),
                          ),
                          onPressed: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Story6(),
                            ),
                          ),
                        ),
                      ],
                    ),
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(
                          width: 0.75,
                          color: Colors.grey[850],
                        ),
                        bottom: BorderSide(
                          width: 1.5,
                          color: Colors.grey[850],
                        ),
                      ),
                    ),
                    height: 96.0,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

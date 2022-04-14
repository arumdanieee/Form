import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: Center(
          child: Text('WELCOME'),
        ),
      ),
      body: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 80)),
          Container(
            child: Text(
              'Thank you for registering!',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(padding: EdgeInsets.all(20)),
          Container(
            child: Text(
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
              style: TextStyle(fontSize: 15),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(padding: EdgeInsets.all(20)),
          Container(
            child: RaisedButton(
                textColor: Colors.white,
                padding: EdgeInsets.all(0.0),
                shape: StadiumBorder(),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25.0),
                    gradient: LinearGradient(
                      colors: <Color>[
                        Color(0xFF9C27B0),
                        Color(0xFF3F51B5),
                        Color(0xFF2196F3),
                      ],
                    ),
                  ),
                  child: Text(
                    'Continue',
                    style: TextStyle(fontSize: 15.0),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 70.0, vertical: 15.0),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                }),
          ),
        ],
      ),
    );
  }
}

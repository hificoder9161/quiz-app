import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function rep;
  final String answertext;
  Answer(this.rep, this.answertext);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      width: double.infinity,
      child: RaisedButton(
        child: Text(answertext),
        textColor: Colors.white,
        color: Color.fromARGB(255, 24, 135, 225),
        onPressed: rep,
      ),
    );
  }
}

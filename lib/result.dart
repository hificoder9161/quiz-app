import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultscore;
  final Function resetHandler;
  Result(this.resultscore, this.resetHandler);
  String get resultphrase {
    String resulttext;
    if (resultscore <= 8) {
      resulttext = 'You\'re awesome and great';
    } else if (resultscore <= 12) {
      resulttext = 'You\'re good ';
    } else if (resultscore <= 16) {
      resulttext = 'You\'re so...strange?!';
    } else {
      resulttext = 'You\'re a MYSTERY';
    }
    return resulttext;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultphrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text('Restart Quiz'),
            onPressed: resetHandler,
            textColor: Colors.blue,
          ),
        ],
      ),
    );
  }
}

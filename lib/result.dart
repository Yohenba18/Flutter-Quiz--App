import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  Result(this.resultScore);

  String get resultPhrase {
    var resultText ='you did it!!';
    if(resultScore<=8){
      resultText = "YOU ARE AWESOME AND WONDERFL!!";
    }
    else if(resultScore<=12){
      resultText = "PERTTY LIKABLE!!";
    } else if(resultScore<=16){
      resultText = "Strange r u";
    }else{
      resultText = 'bad';
    }
    return resultText;
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

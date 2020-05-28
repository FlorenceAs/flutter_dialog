import 'package:flutter/material.dart';
import 'package:auto_size_text/auto_size_text.dart';

class DialogBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16)
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: _buildChild(context),
    );
  }

  _buildChild(BuildContext context) => Container(
    height: 400,
    decoration: BoxDecoration(
      color: Colors .white,
      shape: BoxShape.rectangle,
      borderRadius: BorderRadius.all(Radius.circular(10.0))
    ),
    child: Column(
      children: <Widget>[
        Image.asset('assets/image/welldone.png',),
        Text(
            "WELLDONE",
            style: TextStyle(fontSize: 20, color: Colors.black),
        ),

        AutoSizeText(
          'You just got 30 Points for creating your first budget. Achieve your goal and get more goodies',
          maxLines: 3,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 14),
        ),
      ],
    ),

  );
}

import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  
  RoundedButton({this.colur, required this.onPress, this.txt});
  final Color ?colur;
  final Function onPress;
  final String ?txt;
  
  @override
  Widget build(BuildContext context) {


    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: Material(
        elevation: 5.0,
        color: colur,
        borderRadius: BorderRadius.circular(30.0),
        child: MaterialButton(
          onPressed: (){onPress();},
          minWidth: 200.0,
          height: 42.0,
          child: Text(
            txt!,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}

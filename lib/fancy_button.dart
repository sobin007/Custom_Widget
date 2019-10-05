import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class FancyButton extends StatelessWidget {

  FancyButton({@required this.onPressed});

  final GestureTapCallback onPressed;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RawMaterialButton(
      padding: EdgeInsets.all(8),
      fillColor: Colors.deepOrange,
        splashColor: Colors.orange,
        onPressed: onPressed,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical :8.0, horizontal: 20),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Icon(Icons.explore,
              color: Colors.amber,),
              SizedBox(width: 8.0,),
              Text("PURCHASE",style: TextStyle(color: Colors.white),),
            ],
          ),
        ),
        shape: const StadiumBorder()

    );
  }
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../config.dart';

class MyErrorWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Image.asset(
            '${asset}404-1.jpg',
            fit: BoxFit.cover,
          ),
          Container(
            padding: EdgeInsets.symmetric(
                horizontal: 20.0, vertical: 15.0),
            decoration: BoxDecoration(
              color: Colors.yellow,
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
            ),
            child: Text(
              'Reload Menu',
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 16.0),
            ),
          ),
          SizedBox(
            height: 40,
          )
        ],
      ),
    );
  }
}

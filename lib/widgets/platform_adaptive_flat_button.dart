import 'package:flutter/material.dart';
import 'dart:io';
import 'package:flutter/cupertino.dart';

class PlatformAdaptiveFlatButton extends StatelessWidget {
  final String text;
  final Function handler;

  PlatformAdaptiveFlatButton(this.text, this.handler);
  @override
  Widget build(BuildContext context) {
    return Platform.isIOS
        ? CupertinoButton(
            child: Text(
              text,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            onPressed: handler,
          )
        : FlatButton(
            child: Text(
              text,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            onPressed: handler,
            textColor: Theme.of(context).primaryColor,
          );
  }
}

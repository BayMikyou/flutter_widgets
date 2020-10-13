import 'package:flutter/material.dart';
import 'package:flutterWidgets/base/base_widget.dart';

class WidgetKey extends BaseWidget {
  final String title;

  const WidgetKey({Key key, this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutterWidgets/base/base_widget.dart';

class WidgetText extends BaseWidget {
  final String title;
  final String coverUrl;

  const WidgetText({Key key, this.title, this.coverUrl}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Container(
        color: Colors.white,
      ),
    );
  }
}
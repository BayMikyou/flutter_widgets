import 'package:flutter/material.dart';
import 'package:flutterWidgets/base/base_widget.dart';
import 'package:flutterWidgets/framework/router/annotation/router.dart';
import 'package:flutterWidgets/framework/router/pretty_router.dart';

@Router(path: "widget/stless/text")
class WidgetText extends BaseWidget {
  final String title;
  final String coverUrl;
  final String routerUrl;

  const WidgetText({Key key, this.title, this.coverUrl, this.routerUrl}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var params = PrettyRouter.getRouterParams(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(params['title']),
      ),
      body: Container(
        color: Colors.white,
      ),
    );
  }
}
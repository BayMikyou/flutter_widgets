import 'package:frouter/annotation/router.dart';
import 'package:frouter/frouter.dart';
import 'package:flutter/material.dart';
import 'package:flutterWidgets/base/base_widget.dart';

@RouterPath(path: "widget/stless/image")
class WidgetImage extends BaseWidget {
  final String title;
  final String coverUrl;
  final String routerUrl;

  const WidgetImage({Key key, this.title, this.coverUrl, this.routerUrl}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var params = FRouter.getRouterParams(context);
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

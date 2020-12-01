import 'package:flutter/material.dart';
import 'package:flutterWidgets/base/base_widget.dart';
import 'package:flutterWidgets/framework/router/annotation/router.dart';
import 'package:flutterWidgets/framework/router/pretty_router.dart';

@Router(path: "widget/stless/container")
class WidgetContainer extends BaseWidget {
  final String title;
  final String coverUrl;
  final String routerUrl;

  const WidgetContainer({Key key, this.title, this.coverUrl, this.routerUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var params = PrettyRouter.getRouterParams(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(params['title']),
      ),
      body: Container(
        color: Colors.orange,
      ),
//  body: Align(
//    child: Text(title),
//    widthFactor: 3,//widthFactor表示当前父容器宽度是child宽度的3倍, 为null父容器宽度就默认为当前父容器的父容器的宽度
//    heightFactor: 3,
//    alignment: AlignmentDirectional.topEnd,
//  ),
//      body: Container(
//        width: 200,
//        height: 200,
//        child: Container(
//          color: Colors.green,
//          child: Text(title),
//          alignment: AlignmentDirectional.center,
//          padding: EdgeInsets.all(5),
//          margin: EdgeInsets.all(20),
//        ),
//      )
    );
  }
}

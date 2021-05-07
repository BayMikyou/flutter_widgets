import 'package:flutter/material.dart';
import 'package:flutterWidgets/mcrow/mcrow_widget_list.dart';
import 'package:flutterWidgets/other/other_widget_list.dart';
import 'package:flutterWidgets/proxy/proxy_widget_list.dart';
import 'package:flutterWidgets/scrow/scrow_widget_list.dart';
import 'package:flutterWidgets/sliver/sliver_widget_list.dart';
import 'package:flutterWidgets/stful/stful_widget_list.dart';
import 'package:flutterWidgets/stless/stless_widget_list.dart';
import 'package:frouter/annotation/router_register.dart';

import 'main.router_register.g.dart';

void main() {
  runApp(MyApp());
}

@RouterRegister()
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MainPage(),
      routes: FRouterRegister.register(),
    );
  }
}

List<String> mTabs = [
  'stless',
  'stful',
  'sliver',
  'scrow',
  'mcrow',
  'proxy',
  'other'
];

List<Widget> mPages = [
  StlessWidgetList(),
  StfulWidgetList(),
  SliverWidgetList(),
  ScrowWidgetList(),
  McrowWidgetList(),
  ProxyWidgetList(),
  OtherWidgetList()
];

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: mTabs.length,
      child: Scaffold(
        appBar: AppBar(
          title: _buildTabBars(),
        ),
        body: TabBarView(children: mPages),
      ),
    );
  }

  Widget _buildTabBars() {
    return TabBar(
      isScrollable: true,
      indicator: BoxDecoration(color: Colors.transparent),
      indicatorSize: TabBarIndicatorSize.label,
      labelStyle: TextStyle(
        color: Color(0xff333333),
        fontSize: 15,
        fontFamily: 'NotoSansHans-Medium',
      ),
      unselectedLabelStyle: TextStyle(
        color: Color(0xff666666),
        fontSize: 15,
        fontFamily: 'NotoSansHans-Regular',
      ),
      tabs: mTabs
          .map(
            (tabText) => Tab(
              text: tabText,
            ),
          )
          .toList(),
    );
  }
}

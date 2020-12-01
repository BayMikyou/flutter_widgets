import 'package:flutter/material.dart';

abstract class BaseWidget extends StatelessWidget {
  final String title;
  final String coverUrl;
  final String routerUrl;

  const BaseWidget({Key key, this.title, this.coverUrl, this.routerUrl}) : super(key: key);
}
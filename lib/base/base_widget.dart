import 'package:flutter/material.dart';

abstract class BaseWidget extends StatelessWidget {
  final String title;
  final String coverUrl;

  const BaseWidget({Key key, this.title, this.coverUrl}) : super(key: key);
}
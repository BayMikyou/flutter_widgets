import 'package:flutter/material.dart';
import 'package:flutterWidgets/base/base_widget.dart';
import 'package:flutterWidgets/stless/container/stless_widget_container.dart';
import 'package:flutterWidgets/stless/image/stless_widget_image.dart';
import 'package:flutterWidgets/stless/text/stless_widget_text.dart';

class StlessWidgetList extends StatelessWidget {
  var widgetList = <BaseWidget>[
    WidgetContainer(
      title: 'Container组件',
      coverUrl: 'https://cdn.nlark.com/yuque/0/2020/png/1518230/1596553740436-ec924482-05c3-455a-9ad4-aef34610531e.png',
    ),
    WidgetText(
      title: 'Text组件',
      coverUrl: 'https://cdn.nlark.com/yuque/0/2020/png/1518230/1596553740436-ec924482-05c3-455a-9ad4-aef34610531e.png',
    ),
    WidgetText(
      title: 'RichText组件',
      coverUrl: 'https://cdn.nlark.com/yuque/0/2020/png/1518230/1596553740436-ec924482-05c3-455a-9ad4-aef34610531e.png',
    ),
    WidgetText(
      title: 'SelectableText组件',
      coverUrl: 'https://cdn.nlark.com/yuque/0/2020/png/1518230/1596553740436-ec924482-05c3-455a-9ad4-aef34610531e.png',
    ),
    WidgetImage(
      title: 'Image组件',
      coverUrl: 'https://cdn.nlark.com/yuque/0/2020/png/1518230/1596553740436-ec924482-05c3-455a-9ad4-aef34610531e.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: widgetList.map((widget) {
        return Column(
          children: [
            ListTile(
              leading: Container(
                width: 100,
                height: 100,
                decoration: ShapeDecoration(
                  image: DecorationImage(
                    image: NetworkImage(widget.coverUrl),
                    fit: BoxFit.cover,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
              title: Text(widget.title),
              contentPadding: EdgeInsets.all(10),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => widget));
              },
            ),
            Divider(
              height: 1,
            ),
          ],
        );
      }).toList(),
    );
  }
}

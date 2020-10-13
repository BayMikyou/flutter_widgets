import 'package:flutter/material.dart';
import 'package:flutterWidgets/base/base_widget.dart';
import 'package:flutterWidgets/other/key/other_key.dart';

class OtherWidgetList extends StatelessWidget {
  var widgetList = <BaseWidget>[
    WidgetKey(
      title: 'Widget Key',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: widgetList.map((widget) {
        return Column(
          children: [
            ListTile(
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://cdn.nlark.com/yuque/0/2020/png/1518230/1596553740436-ec924482-05c3-455a-9ad4-aef34610531e.png'),
              ),
              title: Text(widget.title),
              contentPadding: EdgeInsets.all(10),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => widget));
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

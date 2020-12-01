import 'package:flutter/material.dart';
import 'package:flutterWidgets/config/widget_config.dart';
import 'package:flutterWidgets/framework/router/pretty_router.dart';

class StlessWidgetList extends StatelessWidget {
  var widgetConfigList = <WidgetConfig>[
    WidgetConfig(
        name: 'Container组件',
        coverUrl:
            'https://cdn.nlark.com/yuque/0/2020/png/1518230/1596553740436-ec924482-05c3-455a-9ad4-aef34610531e.png',
        routerUrl: 'widget/stless/container'),
    WidgetConfig(
        name: 'Text组件',
        coverUrl:
            'https://cdn.nlark.com/yuque/0/2020/png/1518230/1596553740436-ec924482-05c3-455a-9ad4-aef34610531e.png',
        routerUrl: 'widget/stless/text'),
    WidgetConfig(
        name: 'RichText组件',
        coverUrl:
            'https://cdn.nlark.com/yuque/0/2020/png/1518230/1596553740436-ec924482-05c3-455a-9ad4-aef34610531e.png',
        routerUrl: 'widget/stless/text'),
    WidgetConfig(
        name: 'SelectableText组件',
        coverUrl:
            'https://cdn.nlark.com/yuque/0/2020/png/1518230/1596553740436-ec924482-05c3-455a-9ad4-aef34610531e.png',
        routerUrl: 'widget/stless/text'),
    WidgetConfig(
        name: 'Image组件',
        coverUrl:
            'https://cdn.nlark.com/yuque/0/2020/png/1518230/1596553740436-ec924482-05c3-455a-9ad4-aef34610531e.png',
        routerUrl: 'widget/stless/image')
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: widgetConfigList.map((config) {
        return Column(
          children: [
            ListTile(
              leading: Container(
                width: 100,
                height: 100,
                decoration: ShapeDecoration(
                  image: DecorationImage(
                    image: NetworkImage(config.coverUrl),
                    fit: BoxFit.cover,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
              title: Text(config.name),
              contentPadding: EdgeInsets.all(10),
              onTap: () => PrettyRouter.router(context,
                  "${config.routerUrl}?title=${config.name}&coverUrl=${config.coverUrl}"),
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

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:kartal/src/context_extension.dart';

import '../../../core/init/constants/image_constants.dart';
import '../../../product/utility/padding/padding_all.dart';
import '../../../product/utility/size/widget_size.dart';
import 'model/tab_model.dart';
class ShopTabView extends StatelessWidget {
  ShopTabView({Key? key}) : super(key: key);

  final _items = TabModels.create().tabItems;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            _messageButton(context),
            _notificationButton(),
          ],
        ),
        body: TabBarView(
            children: _items
                .map(
                  (e) => e.page,
                )
                .toList()),
        bottomNavigationBar: BottomAppBar(
          child: TabBar(
              tabs: _items
                  .map((e) => Tab(text: e.title.tr(), icon: Icon(e.icon)))
                  .toList()),
        ),
      ),
    );
  }
}

IconButton _messageButton (BuildContext context){
  return IconButton(
    onPressed: (){},
    icon: Stack(
      clipBehavior: Clip.none,
      children: [
        Image.asset(ImageConstatns.instance.iconPath.message),
        Positioned(bottom: -5,left: -5,child: CircleAvatar(
          radius: WidgetSize.circleSmallHeight / 2,
          backgroundColor: context.general.colorScheme.error,
          child: FittedBox(
            child:  Padding(
              padding: PagePaddingAll.halfNormal(),
              child: FittedBox(
                  child: Text('5',
                      style: context.general.textTheme.subtitle1?.copyWith(color: context.general.colorScheme.onSecondary))),
              ),
            ),
          )
        )),
      ],
    ),
  );
}

IconButton _notificationButton() => IconButton(
  onPressed: () {},
  icon: Image.asset(ImageConstatns.instance.iconPath.notification),
);
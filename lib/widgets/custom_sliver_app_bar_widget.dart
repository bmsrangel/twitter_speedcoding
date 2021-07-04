import 'package:flutter/material.dart';

class CustomSliverAppBarWidget extends SliverAppBar {
  final Widget title;
  final Color primaryColor;
  final List<Widget>? actions;
  final double? bottomHeight;
  final Widget? bottomWidget;

  CustomSliverAppBarWidget({
    required this.title,
    this.primaryColor = Colors.white,
    this.actions,
    this.bottomHeight,
    this.bottomWidget,
  }) : super(
            backgroundColor: Colors.black,
            floating: true,
            title: title,
            centerTitle: true,
            leading: IconButton(
              icon: Icon(
                Icons.menu,
                color: primaryColor,
                size: 28.0,
              ),
              onPressed: () {},
            ),
            actions: actions,
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(90.0),
              child: Container(
                height: bottomHeight,
                child: bottomWidget,
              ),
            ));
}

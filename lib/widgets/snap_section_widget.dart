import 'package:flutter/material.dart';

import '../models/snap_data_model.dart';
import 'story_widget.dart';

class SnapSectionWidget extends StatelessWidget {
  SnapSectionWidget({
    Key? key,
    required this.snapData,
  }) : super(key: key);
  final List<SnapDataModel> snapData;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.only(left: 10.0),
      itemCount: snapData.length + 1,
      itemBuilder: (_, index) {
        if (index == 0) {
          return StoryWidget(
            profileUrl: 'https://picsum.photos/100',
            profileName: 'Adicionar snap',
          );
        } else {
          return StoryWidget(
            profileUrl: snapData[index - 1].profileUrl,
            profileName: snapData[index - 1].profileName,
          );
        }
      },
    );
  }
}

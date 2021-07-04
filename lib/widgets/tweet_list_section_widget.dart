import 'package:flutter/material.dart';

import '../models/tweet_data_model.dart';
import 'tweet_widget.dart';

class TweetListSectionWidget extends StatelessWidget {
  TweetListSectionWidget({
    Key? key,
    required this.tweetData,
  }) : super(key: key);

  final List<TweetDataModel> tweetData;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (_, __) => Divider(
        color: Colors.grey.withAlpha(120),
      ),
      itemCount: tweetData.length,
      itemBuilder: (_, index) => TweetWidget(
        profileUrl: tweetData[index].profileUrl,
        content: tweetData[index].content,
        name: tweetData[index].name,
        profileName: tweetData[index].profileName,
        mediaUrl: tweetData[index].mediaUrl,
      ),
    );
  }
}

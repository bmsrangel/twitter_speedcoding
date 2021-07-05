import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

import 'count_button_widget.dart';

class TweetWidget extends StatelessWidget {
  TweetWidget({
    Key? key,
    required this.name,
    required this.profileName,
    required this.profileUrl,
    required this.content,
    this.mediaUrl,
  }) : super(key: key);

  final String? mediaUrl;
  final String name;
  final String profileName;
  final String profileUrl;
  final String content;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(profileUrl),
            radius: 28.0,
          ),
          const SizedBox(width: 10.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 18.0,
                      ),
                    ),
                    const SizedBox(width: 5.0),
                    Text(
                      '@$profileName',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18.0,
                      ),
                    ),
                    Text(
                      ' · 1d',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18.0,
                      ),
                    ),
                    Expanded(
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Icon(
                          Icons.more_vert,
                          color: Colors.grey,
                        ),
                      ),
                    )
                  ],
                ),
                Text(
                  content,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
                mediaUrl == null
                    ? const SizedBox.shrink()
                    : Container(
                        margin: const EdgeInsets.only(top: 10.0),
                        child: ClipRRect(
                          clipBehavior: Clip.antiAlias,
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.network(
                            mediaUrl!,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CountButtonWidget(
                      count: 0,
                      iconData: FontAwesome.comment_o,
                      onPressed: () {},
                    ),
                    CountButtonWidget(
                      count: 0,
                      iconData: FontAwesome5Solid.retweet,
                      onPressed: () {},
                    ),
                    CountButtonWidget(
                      count: 0,
                      iconData: Icons.favorite_border,
                      onPressed: () {},
                    ),
                    CountButtonWidget(
                      iconData: Icons.share_outlined,
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

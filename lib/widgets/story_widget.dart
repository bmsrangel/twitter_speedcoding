import 'package:flutter/material.dart';

class StoryWidget extends StatelessWidget {
  const StoryWidget({
    Key? key,
    required this.profileUrl,
    required this.profileName,
  }) : super(key: key);

  final String profileUrl;
  final String profileName;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10.0),
      width: 60.0,
      height: 60.0,
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Theme.of(context).primaryColor,
                width: 3.0,
              ),
              shape: BoxShape.circle,
            ),
            padding: const EdgeInsets.all(2.0),
            child: CircleAvatar(
              radius: 28.0,
              backgroundImage: NetworkImage(profileUrl),
            ),
          ),
          const SizedBox(height: 5.0),
          Expanded(
            child: Text(
              profileName,
              style: TextStyle(
                color: Colors.grey,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}

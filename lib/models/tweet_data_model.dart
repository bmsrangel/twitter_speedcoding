class TweetDataModel {
  TweetDataModel({
    required this.profileUrl,
    required this.content,
    required this.name,
    required this.profileName,
    this.mediaUrl,
  });

  final String profileUrl;
  final String content;
  final String name;
  final String profileName;
  final String? mediaUrl;
}

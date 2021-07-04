import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

import '../models/snap_data_model.dart';
import '../models/tweet_data_model.dart';
import '../sparkling_icon_icons.dart';
import '../widgets/custom_sliver_app_bar_widget.dart';
import '../widgets/snap_section_widget.dart';
import '../widgets/tweet_list_section_widget.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final Color primaryColor;

  @override
  void didChangeDependencies() {
    primaryColor = Theme.of(context).primaryColor;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: NestedScrollView(
          floatHeaderSlivers: true,
          headerSliverBuilder: (context, innerBoxIsScrolled) => [
            CustomSliverAppBarWidget(
              primaryColor: primaryColor,
              title: Icon(
                FontAwesome5Brands.twitter,
                size: 28.0,
                color: primaryColor,
              ),
              actions: [
                IconButton(
                  icon: Icon(
                    SparklingIcon.twitter_sparkle,
                    color: primaryColor,
                    size: 28.0,
                  ),
                  onPressed: () {},
                )
              ],
              bottomHeight: 90.0,
              bottomWidget: SnapSectionWidget(
                snapData: List.generate(
                  10,
                  (index) => SnapDataModel(
                    profileUrl: 'https://picsum.photos/100',
                    profileName: 'Nome do usuário',
                  ),
                ),
              ),
            ),
          ],
          body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: TweetListSectionWidget(
              tweetData: List.generate(
                10,
                (index) => TweetDataModel(
                  profileUrl: 'https://picsum.photos/100',
                  content:
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut malesuada sem id dictum hendrerit. Etiam sollicitudin bibendum elit in molestie.',
                  name: 'Nome do Usuário',
                  profileName: 'username',
                  mediaUrl: index.isEven ? 'https://picsum.photos/1000' : null,
                ),
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        backgroundColor: primaryColor,
        onPressed: () {},
      ),
    );
  }
}

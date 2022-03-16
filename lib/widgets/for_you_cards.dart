import 'package:flutter/material.dart';
import 'package:let_go_app/models/feels.dart';
import 'package:let_go_app/screens/details_page.dart';
import 'package:let_go_app/widget/session_tile.dart';

class ForYouCards extends StatelessWidget {
  Function callback;
  final selectedIndex;
  PageController pageController;
  final Feelings feel;

  ForYouCards({
    required this.pageController,
    required this.callback,
    required this.selectedIndex,
    required this.feel,
  });

  @override
  Widget build(BuildContext context) {
    final feels = feel.feelsMap.keys.toList();

    return PageView(
      controller: pageController,
      onPageChanged: (index) => callback(index),
      scrollDirection: Axis.horizontal,
      children: feels
          .map((e) => ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  width: (MediaQuery.of(context).size.width) / 2.35,
                  height: 120,
                  child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DetailsPage(feel
                                    .feelsMap[feels[selectedIndex]]![index])));
                      },
                      child: SessionTile(
                          feel.feelsMap[feels[selectedIndex]]![index])),
                );
              },
              separatorBuilder: (context, index) => SizedBox(
                    width: 20,
                  ),
              itemCount: feel.feelsMap[feels[selectedIndex]]!.length))
          .toList(),
    );
  }
}

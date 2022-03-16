import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:let_go_app/constants/colors.dart';
import 'package:let_go_app/models/feels.dart';
import 'package:let_go_app/models/session.dart';

class ListFeelings extends StatelessWidget {
  final Function callback;
  final selectedIndex;
  final Feelings feel;

  ListFeelings(
      {required this.callback,
      required this.selectedIndex,
      required this.feel});

  @override
  Widget build(BuildContext context) {
    final feels = feel.feelsMap.keys.toList();

    return Container(
      padding: EdgeInsets.only(left: 10, top: 10, bottom: 10),
      height: 62,
      child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                callback(index);
              },
              child: Padding(
                padding: const EdgeInsets.all(1.0),
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: selectedIndex == index
                          ? kTexts.withOpacity(0.9)
                          : kHomePageBackgroundGradient2.withOpacity(0.07)),
                  child: Container(
                    padding: EdgeInsets.only(right: 12, left: 12),
                    alignment: Alignment.center,
                    child: Text(
                      feels[index],
                      style: TextStyle(
                          color: selectedIndex == index ? kMenuBar : kTexts,
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Nunito'),
                    ),
                  ),
                ),
              ),
            );
          },
          separatorBuilder: (context, index) => SizedBox(
                width: 10,
              ),
          itemCount: feels.length),
    );
  }
}

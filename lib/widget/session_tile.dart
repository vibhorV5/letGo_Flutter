import 'package:flutter/material.dart';
import 'package:let_go_app/constants/colors.dart';
import 'package:let_go_app/constants/text_styles.dart';
import 'package:let_go_app/models/session.dart';

class SessionTile extends StatelessWidget {
  final Session session;

  SessionTile(this.session);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(colors: [
              kTileGradient1,
              kTileGradient2,
            ])),
        child: Stack(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20)),
                child: Image.asset(
                  session.imgUrl,
                  fit: BoxFit.fill,
                )),
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(),
                  height: 180,
                  width: 180,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 90,
                      ),
                      Container(
                        padding: EdgeInsets.only(
                            left: 12, right: 12, top: 3, bottom: 3),
                        margin: EdgeInsets.only(left: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.black12.withOpacity(0.4),
                        ),
                        child: Text(
                          session.genre,
                          style: kGenreTextStyle,
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  margin: EdgeInsets.only(left: 10),
                                  child: Text(
                                    session.title,
                                    style: kTitleTextStyle,
                                  )),
                              const SizedBox(height: 5),
                              Container(
                                  margin: EdgeInsets.only(left: 10),
                                  child: Text(
                                    session.duration,
                                    style: kDurationTextStyle,
                                  )),
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 10),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: kHomePageBackgroundGradient1
                                      .withOpacity(0.4),
                                  offset: Offset(5, 6),
                                  blurRadius: 3,
                                ),
                              ],
                            ),
                            height: 20,
                            width: 20,
                            child: Icon(Icons.play_circle_fill_outlined,
                                color: kTexts),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}

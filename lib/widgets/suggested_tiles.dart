import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:let_go_app/constants/text_styles.dart';
import 'package:let_go_app/models/session_plays.dart';
import 'package:let_go_app/constants/colors.dart';
import 'package:let_go_app/screens/details_page_suggested.dart';

class SuggestedTiles extends StatelessWidget {
  SessionPlays sessionPlays;

  SuggestedTiles(this.sessionPlays);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailsPageSuggested(
                        sessionPlays.sessions[index],
                      ),
                    ),
                  );
                },
                child: Container(
                  margin: EdgeInsets.only(top: 5, bottom: 5),
                  decoration: BoxDecoration(),
                  width: 330,
                  padding: EdgeInsets.only(left: 20),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        gradient: LinearGradient(colors: [
                          kTileGradient1,
                          kTileGradient2,
                        ])),
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 12, top: 8, bottom: 8),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image.asset(
                                  sessionPlays.sessions[index].imgUrl)),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 20),
                          width: 220,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  margin: EdgeInsets.only(left: 10),
                                  child: Text(
                                    sessionPlays.sessions[index].title,
                                    style: kTitleTextStyle,
                                  )),
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.only(
                                            left: 12,
                                            right: 12,
                                            top: 3,
                                            bottom: 3),
                                        margin: EdgeInsets.only(left: 10),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          color:
                                              Colors.black12.withOpacity(0.4),
                                        ),
                                        child: Text(
                                          sessionPlays.sessions[index].genre,
                                          style: kGenreTextStyle,
                                        ),
                                      ),
                                      Container(
                                          margin: EdgeInsets.only(left: 10),
                                          child: Text(
                                            sessionPlays
                                                .sessions[index].duration,
                                            style: kDurationTextStyle,
                                          )),
                                    ],
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(right: 3),
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      boxShadow: [
                                        BoxShadow(
                                          color: kHomePageBackgroundGradient1
                                              .withOpacity(0.4),
                                          offset: Offset(2, 3),
                                          blurRadius: 3,
                                        ),
                                      ],
                                    ),
                                    height: 20,
                                    width: 20,
                                    child: Icon(Icons.play_circle_fill_outlined,
                                        size: 20, color: kTexts),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
            separatorBuilder: (_, index) => SizedBox(width: 0),
            itemCount: sessionPlays.sessions.length));
  }
}

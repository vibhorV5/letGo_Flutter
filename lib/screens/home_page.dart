import 'package:flutter/material.dart';
import 'package:let_go_app/models/feels.dart';
import 'package:let_go_app/widgets/list_feelings_cards.dart';
import '../constants/colors.dart';
import 'package:let_go_app/widgets/for_you_cards.dart';
import 'package:let_go_app/models/suggested_sessions.dart';
import 'package:let_go_app/models/session_plays.dart';
import '../widgets/suggested_tiles.dart';
import 'package:let_go_app/constants/colors.dart';
import 'package:let_go_app/models/session.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selected = 0;
  Feelings feels = Feelings.generateFeels();
  PageController pageController = PageController();
  SessionPlays sessionPlays = SessionPlays();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kHomePageBackgroundGradient1,
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                'assets/artworks/homescreen.png',
                width: MediaQuery.of(context).size.width,
              ),
            ],
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    kHomePageBackgroundGradient1,
                    kHomePageBackgroundGradient2,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.2, 0.9],
                ),
              ),
              width: MediaQuery.of(context).size.width,
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /// List Moods goes here
                    ListFeelings(
                      feel: feels,
                      selectedIndex: selected,
                      callback: (int index) {
                        setState(() {
                          selected = index;
                        });
                      },
                    ),

                    SizedBox(
                      height: 20,
                    ),

                    /// For you TAB
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 25),
                          child: Text(
                            'For you',
                            style: TextStyle(
                                color: kTexts,
                                fontSize: 20,
                                letterSpacing: 0.5,
                                fontFamily: 'Nunito'),
                          ),
                        ),
                      ],
                    ),

                    /// For You listview
                    Container(
                      padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                      height: 200,
                      width: MediaQuery.of(context).size.width,
                      child: ForYouCards(
                        pageController: pageController,
                        feel: feels,
                        callback: (int index) {
                          setState(() {
                            selected = index;
                          });
                        },
                        selectedIndex: selected,
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),

                    /// Suggested TAB
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 25),
                          child: Text(
                            'Suggested',
                            style: TextStyle(
                                color: kTexts,
                                fontSize: 20,
                                letterSpacing: 0.5,
                                fontFamily: 'Nunito'),
                          ),
                        ),
                      ],
                    ),

                    /// Suggested List
                    Container(
                      margin: EdgeInsets.only(top: 12),
                      height: 100,
                      child: SuggestedTiles(sessionPlays),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

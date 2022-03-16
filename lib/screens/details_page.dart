import 'package:flutter/material.dart';
import 'package:let_go_app/constants/colors.dart';
import 'package:let_go_app/constants/text_styles.dart';
import 'package:let_go_app/models/feels.dart';
import 'package:let_go_app/models/session.dart';
import 'package:audioplayers/audioplayers.dart';

class DetailsPage extends StatefulWidget {
  final Session session;
  DetailsPage(this.session);

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  var checkPlay = 0;
  AudioPlayer? myAudioPlayer;

  Duration _duration = Duration();
  Duration _position = Duration();

  bool isPlaying = false;
  bool isPaused = false;
  bool isLooping = false;

  List<IconData> _icon = [
    Icons.play_circle_filled_outlined,
    Icons.pause_circle_filled_outlined,
  ];

  @override
  void initState() {
    super.initState();
    AudioPlayer audioPlayer = AudioPlayer();
    myAudioPlayer = audioPlayer;

    myAudioPlayer!.onDurationChanged.listen((Duration d) {
      print('Max duration: $d');
      setState(() {
        _duration = d;
      });
    });

    myAudioPlayer!.onAudioPositionChanged.listen((Duration p) {
      print('Current position: $p');
      setState(() {
        _position = p;
      });
    });

    myAudioPlayer!.onPlayerCompletion.listen((event) {
      setState(() {
        _position = Duration(seconds: 0);
        if (isLooping == true) {
          isPlaying = true;
        } else if (isLooping == false) {
          checkPlay = 0;
          isLooping = false;
          isPlaying = false;
        }
      });
    });

    myAudioPlayer!.setUrl(widget.session.sessionDetail.first['audio']!);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    myAudioPlayer!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kHomePageBackgroundGradient1,
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset(widget.session.imgUrl),
              Container(
                padding: EdgeInsets.only(top: 40, left: 20, right: 20),
                height: 280,
                width: 410,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white.withOpacity(0),
                            ),
                            child: IconButton(
                              icon: Icon(
                                Icons.arrow_back_ios_outlined,
                                color: kTexts,
                                size: 30,
                              ),
                              onPressed: () {
                                myAudioPlayer!.dispose();
                                setState(() {
                                  checkPlay = 0;
                                });
                                Navigator.pop(context);
                              },
                            ),
                            // child: Icon(
                            //   Icons.arrow_back_ios_outlined,
                            //   color: kTexts,
                            //   size: 30,
                            // ),
                          ),
                        ),
                        Icon(
                          Icons.settings,
                          size: 30,
                          color: kTexts,
                        ),
                      ],
                    ),
                    Container(
                      padding: EdgeInsets.only(
                          left: 14, right: 14, top: 3, bottom: 3),
                      margin: EdgeInsets.only(top: 45),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.black.withOpacity(0.4),
                      ),
                      child: Text(
                        widget.session.genre,
                        style: kGenreTextStyle.copyWith(fontSize: 15),
                      ),
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 5, bottom: 20),
                        child: Text(
                          widget.session.title,
                          style: kTitleTextStyle.copyWith(fontSize: 48),
                        )),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        GestureDetector(
                          onTap: () {
                            if (isPlaying == false) {
                              setState(() {
                                myAudioPlayer!.play(widget
                                    .session.sessionDetail.first['audio']!);
                                isPlaying = true;
                                checkPlay = 1;
                              });
                            } else if (isPlaying == true) {
                              setState(() {
                                myAudioPlayer!.pause();
                                isPlaying = false;
                              });
                            }
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                color: kTexts,
                                borderRadius: BorderRadius.circular(20)),
                            height: 60,
                            width: 120,
                            child: Row(
                              children: [
                                Container(
                                    margin: EdgeInsets.only(left: 5, right: 5),
                                    child: isPlaying == false
                                        ? Icon(
                                            Icons.play_arrow_rounded,
                                            size: 38,
                                            color: kHomePageBackgroundGradient1,
                                          )
                                        : Padding(
                                            padding: const EdgeInsets.only(
                                                left: 3.0),
                                            child: Icon(
                                              Icons.pause_circle_filled,
                                              size: 38,
                                              color:
                                                  kHomePageBackgroundGradient1,
                                            ),
                                          )),
                                resume(),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 10),
                          child: durationDisplay(),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(left: 20, right: 20, top: 30, bottom: 10),
            width: MediaQuery.of(context).size.width,
            height: 185,
            child: Text(
              widget.session.sessionDetail.first['desc']!,
              style: TextStyle(
                letterSpacing: 0.3,
                fontSize: 17,
                color: kTexts,
                fontFamily: 'Nunito',
              ),
            ),
          ),
          Expanded(
            child: Container(
              child: Center(
                child: Container(
                  height: 300,
                  width: 300,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: Column(
                    children: [
                      Container(
                          margin: EdgeInsets.only(top: 70), child: slider()),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Text(
                              _duration.toString().split('.')[0],
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          loadAsset(),
                          Container(
                            child: Text(
                              _position.toString().split('.')[0],
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget loadButton() {
    //isPlaying = bool
    return IconButton(
      onPressed: () async {
        if (isPlaying == false) {
          await myAudioPlayer!
              .play(widget.session.sessionDetail.first['audio']!);
          setState(() {
            isPlaying = true;
          });
        } else if (isPlaying == true) {
          await myAudioPlayer!.pause();
          setState(() {
            isPlaying = false;
          });
        }
      },
      icon: isPlaying == false ? Icon(_icon[0]) : Icon(_icon[1]),
    );
  }

  Widget loadAsset() {
    return Row(
      children: [
        repeating(),
        loadButton(),
      ],
    );
  }

  Slider slider() {
    return Slider(
        value: _position.inSeconds.toDouble(),
        min: 0.0,
        max: _duration.inSeconds.toDouble() + 1,
        activeColor: Colors.red,
        inactiveColor: Colors.grey,
        onChanged: (double value) {
          setState(() {
            changeSlider(value.toInt());
            // value = value;
          });
        });
  }

  void changeSlider(int second) {
    Duration newDuration = Duration(seconds: second);
    myAudioPlayer!.seek(newDuration);
  }

  Widget repeating() {
    return IconButton(
        onPressed: () {
          if (isLooping == false) {
            myAudioPlayer!.setReleaseMode(ReleaseMode.LOOP);
            setState(() {
              isLooping = true;
            });
          } else if (isLooping == true) {
            myAudioPlayer!.setReleaseMode(ReleaseMode.RELEASE);
            setState(() {
              isLooping = false;
            });
          }
        },
        icon: isLooping == false
            ? Icon(Icons.loop, color: Colors.black)
            : Icon(Icons.loop, color: Colors.blue));
  }

  Widget resume() {
    if (isPlaying == false && checkPlay == 0) {
      return Text('Play',
          style: kTitleTextStyle.copyWith(
              fontWeight: FontWeight.w900,
              fontSize: 18,
              color: kHomePageBackgroundGradient1));
    } else if (isPlaying == false && checkPlay == 1) {
      return Text('Resume',
          style: kTitleTextStyle.copyWith(
              fontWeight: FontWeight.w900,
              fontSize: 18,
              color: kHomePageBackgroundGradient1));
    } else if (isPlaying == true) {
      return Text('Pause',
          style: kTitleTextStyle.copyWith(
              fontWeight: FontWeight.w900,
              fontSize: 18,
              color: kHomePageBackgroundGradient1));
    }
    throw ('error');
  }

  Widget durationDisplay() {
    if (isPlaying == false && checkPlay == 0) {
      return Text(
        widget.session.duration,
        style: kDurationTextStyle.copyWith(fontSize: 15, color: Colors.white),
      );
    } else if (isPlaying == false && checkPlay == 1) {
      return Text(
        _position.toString().split('.')[0],
        style: kDurationTextStyle.copyWith(fontSize: 15, color: Colors.white),
      );
    } else if (isPlaying == true) {
      return Text(
        _position.toString().split('.')[0],
        style: kDurationTextStyle.copyWith(fontSize: 15, color: Colors.white),
      );
    }
    throw ('error');
  }
}

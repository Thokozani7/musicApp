import 'dart:ui';

import 'package:MobileApp/playsong_page/clipping_curve.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PlaySongPage extends StatefulWidget {
  static String tag = "play-song";
  final String imageUrl;
  // PlaySongPage({Key key}) : super(key: key);
  PlaySongPage({this.imageUrl});

  @override
  _PlaySongPageState createState() => _PlaySongPageState();
}

class _PlaySongPageState extends State<PlaySongPage> {
  double minimumValue = 0.0, maximumValue = 0.0, currentValue = 0.0;
  String currentTime = '', endTime = '';
  bool isPlaying = false;

  // final AudioPlayer player=AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          "Umzuzu by Xolly Mncwango",
          style: TextStyle(fontSize: 11),
        ),
      ),
      body: Material(
        color: Colors.black,
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(widget.imageUrl.toString() != null ? widget.imageUrl : "https://icon-library.com/images/blu-ray-icon/blu-ray-icon-18.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          // decoration: BoxDecoration(
          //               borderRadius: BorderRadius.all(
          //                   Radius.circular(60)),
          //               // border: Border.all(color: Colors.blueAccent),
          //               color: Colors.white10,
          //             ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8), //10 10
            child: Container(
              color: Colors.black.withOpacity(0.5),//0.2
              child: Column(
                children: [
                  Expanded(
                    flex: 2,
                    child: Container(
                      // color: Colors.white12,
                      // height: 50,
                      // padding: EdgeInsets,
                      // decoration: BoxDecoration(
                      //   borderRadius: BorderRadius.only(
                      //       bottomLeft: Radius.circular(45.0),
                      //       bottomRight: Radius.circular(45.0)),
                      //   border: Border.all(color: Colors.blueAccent),
                      //   // color: Colors.redAccent,
                      // ),
                      // decoration: BoxDecoration(
                      //   borderRadius: BorderRadius.only(
                      //       bottomLeft: Radius.circular(50.0),
                      //       bottomRight: Radius.circular(50.0)),
                      //   color: Colors.white10,
                      // ),

                      child: Center(
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.38,
                          width: MediaQuery.of(context).size.width * 0.74,
                          // margin: EdgeInsets.symmetric(vertical: 100),
                          // color: Colors.red,

                          decoration: BoxDecoration(
                            boxShadow: <BoxShadow>[
                              BoxShadow(
                                  color: Colors.white,
                                  blurRadius: 15.0,
                                  offset: Offset(0.0, 0.75))
                            ],
                            borderRadius:
                                BorderRadius.all(Radius.circular(150)),
                            // border: Border.all(color: Colors.blueAccent),
                            color: Colors.white10,
                          ),
                          child:
                              // ShaderMask(
                              //   shaderCallback: (rect) {
                              //     return LinearGradient(
                              //       begin: Alignment.topCenter,
                              //       end: Alignment.bottomCenter,
                              //       colors: [Colors.black, Colors.transparent],
                              //     ).createShader(
                              //         Rect.fromLTRB(0, 0, rect.width, rect.height));
                              //   },
                              //   blendMode: BlendMode.dstIn,
                              //   child: Image.network(
                              //     "https://e-cdn-images.dzcdn.net/images/artist/ea777201a19463ba139492132039e547/264x264-000000-80-0-0.jpg",
                              //     height: 400,
                              //     fit: BoxFit.contain,
                              //   ),
                              // ),
                              CircleAvatar(
                            backgroundImage: NetworkImage(
                              widget.imageUrl.toString() != null ? widget.imageUrl : "https://icon-library.com/images/blu-ray-icon/blu-ray-icon-18.jpg",
                            ),
                            radius: 115,
                          ),
                        ),
                      ),
                    ),
                  ),
                  // Divider(
                  //   color: Colors.black12,
                  //   thickness: 5,
                  // ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      // color: Colors.brown,
                      // color: Colors.white10,

                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(45.0),
                            topRight: Radius.circular(45.0)),
                        color: Colors.white10,
                      ),

                      // decoration: BoxDecoration(
                      //   borderRadius: BorderRadius.all(
                      //       Radius.circular(60)),
                      //   // border: Border.all(color: Colors.blueAccent),
                      //   color: Colors.white10,
                      // ),
                      padding:
                          EdgeInsets.symmetric(horizontal: 50, vertical: 30),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    padding: EdgeInsets.only(left: 20),
                                    child: Text(
                                      "Umzuzu",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 9.0,
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(left: 20),
                                    child: Text(
                                      "Xolly Mncwango",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 10),
                                    ),
                                  )
                                ],
                              ),
                              Container(
                                padding: EdgeInsets.only(right: 25),
                                child: Icon(
                                  FontAwesomeIcons.heart,
                                  color: Colors.white,
                                  size: 20,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 9.0,
                          ),
                          Slider(
                            inactiveColor: Colors.white54,
                            activeColor: Colors.white,
                            min: minimumValue,
                            max: maximumValue,
                            value: currentValue,
                            onChanged: (value) {
                              currentValue = value;
                              // player.seek(
                              //     Duration(milliseconds: currentValue.round()));
                            },
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: EdgeInsets.only(left: 20),
                                child: Text(
                                  "0:50",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(right: 25),
                                child: Text(
                                  "-2:10",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 12),
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: EdgeInsets.only(left: 20),
                                child: Icon(
                                  Icons.shuffle_outlined,
                                  color: Colors.white,
                                  size: 20,
                                ),
                              ),
                              Container(
                                child: Icon(
                                  FontAwesomeIcons.backward,
                                  color: Colors.white,
                                  size: 20,
                                ),
                              ),
                              Container(
                                child: Icon(
                                  Icons.pause_outlined,
                                  color: Colors.white,
                                  size: 55,
                                ),
                              ),
                              Container(
                                child: Icon(
                                  FontAwesomeIcons.forward,
                                  color: Colors.white,
                                  size: 20,
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(right: 25),
                                child: Icon(
                                  Icons.repeat_outlined,
                                  color: Colors.white,
                                  size: 20,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ), // child: child,
    );
  }
}

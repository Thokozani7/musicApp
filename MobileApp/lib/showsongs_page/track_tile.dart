import 'dart:io';

import 'package:MobileApp/playsong_page/playsong_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_audio_query/flutter_audio_query.dart';

class TrackTile extends StatefulWidget {
  Widget avatarUrl;
  String songName;
  String artist;
  String album;
  IconData songIconStatus;
  String trackDuration;
  SongInfo songInfo;
  Function changeSong;

  TrackTile(
      {this.changeSong,
      this.songInfo,
      this.avatarUrl,
      this.songName,
      this.artist,
      this.album,
      this.songIconStatus,
      this.trackDuration});

  @override
  _TrackTileState createState() => _TrackTileState();
}

class _TrackTileState extends State<TrackTile> {
  Widget avatarUrl;
  String songName;
  String artist;
  String album;
  IconData songIconStatus;
  String trackDuration;
  SongInfo songInfo;

  @override
  Widget build(BuildContext context) {
    avatarUrl = widget.avatarUrl;
    songName = widget.songName;
    artist = widget.artist;
    album = widget.album;
    songIconStatus = widget.songIconStatus;
    trackDuration = widget.trackDuration;
    songInfo = widget.songInfo;

    return Container(
      child: Column(
        children: [
          // ListTile(
          //   horizontalTitleGap: 4,
          //   contentPadding:
          //       EdgeInsets.symmetric(
          //           vertical: 0.0,
          //           horizontal: 4.0),
          //   dense: true,
          //   leading: Container(
          //     // color: Colors.amberAccent,
          //     child: ClipRRect(
          //       borderRadius:
          //           BorderRadius.all(
          //               Radius.circular(
          //                   8.0)),
          //       child: Image.network(
          //         "https://i1.wp.com/hiphopza.com/wp-content/uploads/2020/12/ALBUM-Ntokozo-Mbambo-%E2%80%93-The-First-Noel.jpg?w=500&ssl=1",
          //         height: 35.0,
          //         width: 30.0,
          //       ),
          //     ),
          //   ),
          //   title: Text("Wamuhle",
          //       style: TextStyle(
          //           fontWeight:
          //               FontWeight.w400,
          //           fontSize: 14,
          //           color: Colors.white)),
          //   subtitle: Text(
          //     "unknown artist | unknown album",
          //     style: TextStyle(
          //         fontSize: 10,
          //         color: Colors.white,
          //         letterSpacing: .7),
          //   ),
          //   trailing:
          //       Icon(Icons.more_vert),
          // ),
          SizedBox(height: 15),
          Container(
            // width: MediaQuery.of(context)
            //         .size
            //         .width *
            //     0.94,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0.0),
              ),
              color: Colors.black,
              // elevation: 10,
              child: InkWell(
                onTap: () {
                  print("tapped");
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (BuildContext context) => PlaySongPage(
                        // key: widget.key,
                        changeSong: widget.changeSong,
                        songInfo: songInfo,
                      ),
                      // PlaySongPage(imageUrl: avatarUrl),
                    ),
                  );
                },
                //
                child: Row(
                  // crossAxisAlignment:
                  //     CrossAxisAlignment
                  //         .start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: ConstrainedBox(
                        constraints: BoxConstraints(
                          maxWidth: 30,
                          maxHeight: 30,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(6.0)),
                          child:
                              avatarUrl, //Image.file(File("songs[index].albumArtwork")),//Image.network(avatarUrl, fit: BoxFit.fill),
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width * 0.5,
                          child: Padding(
                            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: Container(
                              // color: Colors.brown,
                              child: Text(
                                songName,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                  color: Colors.white,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.5,
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(10, 2, 0, 0),
                            child: Text(
                              artist + " | " + album,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 9,
                                  color: Colors.white,
                                  letterSpacing: .7),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                          child: InkWell(
                            onTap: () {
                              print("playBut");
                            },
                            child: Icon(
                              songIconStatus, //,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width * 0.18,
                          padding: const EdgeInsets.fromLTRB(30, 0, 0, 0),
                          // color: Colors.red,
                          child: Text(
                            trackDuration,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 11,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),

          SizedBox(height: 5),
          Divider(
            color: Colors.grey,
            indent: 35,
            endIndent: 35,
          ),
        ],
      ),
    );
  }
}

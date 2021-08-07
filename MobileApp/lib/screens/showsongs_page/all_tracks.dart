import 'dart:io';

import 'package:MobileApp/keys/keys.dart';
// import 'package:MobileApp/playsong_page/playsong_page.dart';
import 'package:MobileApp/screens/showsongs_page/track_tile.dart';
// import 'package:MobileApp/showsongs_page/track_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_audio_query/flutter_audio_query.dart';

class Tracks extends StatefulWidget {
  @override
  _TracksState createState() => _TracksState();
}

class _TracksState extends State<Tracks> {
  final FlutterAudioQuery audioQuery = FlutterAudioQuery();
  List<SongInfo> songs = [];
  int _currentIndex = 0;

  // final GlobalKey<PlaySongPageState> key = GlobalKey<PlaySongPageState>();

  void initState() {
    super.initState();
    get_tracks();
  }

  void get_tracks() async {
    songs = await audioQuery.getSongs();

    setState(() {
      songs = songs;
      print(songs.length);
    });
  }

  void changeSong(bool isNext) {
    if (isNext) {
      if (_currentIndex != songs.length - 1) {
        _currentIndex++;
      }
    } else {
      if (_currentIndex != 0) {
        _currentIndex--;
      }
    }
    SSKeys.key.currentState.setSong(songs[_currentIndex]);
  }

  String getDuration(double value) {
    Duration duration = Duration(milliseconds: value.round());

    return [duration.inMinutes, duration.inSeconds]
        .map((element) => element.remainder(60).toString().padLeft(2, '0'))
        .join(':');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 340,
      // color: Colors.blue,
      child: ListView.builder(
          itemCount: songs.length,
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {
            return Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TrackTile(
                      songInfo: songs[index],
                      changeSong: changeSong,
                      // key: SSKeys.key,
                      album: songs[index].album,
                      artist: songs[index].artist,
                      avatarUrl: songs[index].albumArtwork == null
                          ? Image.network(
                              'https://images-na.ssl-images-amazon.com/images/I/71cWTuFUQtL._SY355_.jpg',
                              fit: BoxFit.fill)
                          : Image.file(File(songs[index].albumArtwork)),
                      songIconStatus: Icons.play_circle_outline_outlined,
                      songName: songs[index].title,
                      trackDuration:
                          getDuration(double.parse(songs[index].duration))),
                  // TrackTile(
                  //     album: 'unknown album',
                  //     artist: 'unknown artist',
                  //     avatarUrl:
                  //         'https://images-na.ssl-images-amazon.com/images/I/71cWTuFUQtL._SY355_.jpg',
                  //     songIconStatus: Icons.play_circle_outline_outlined,
                  //     songName: 'Imagine me',
                  //     trackDuration: '3:56'),
                  // TrackTile(
                  //     album: 'unknown album',
                  //     artist: 'unknown artist',
                  //     avatarUrl:
                  //         'https://i1.wp.com/hiphopza.com/wp-content/uploads/2020/12/ALBUM-Ntokozo-Mbambo-%E2%80%93-The-First-Noel.jpg?w=500&ssl=1',
                  //     songIconStatus: Icons.pause_circle_outline_outlined,
                  //     songName: 'Imagine me',
                  //     trackDuration: '3:56'),
                  // TrackTile(
                  //     album: 'unknown album',
                  //     artist: 'unknown artist',
                  //     avatarUrl:
                  //         'https://i1.wp.com/hiphopza.com/wp-content/uploads/2020/12/ALBUM-Ntokozo-Mbambo-%E2%80%93-The-First-Noel.jpg?w=500&ssl=1',
                  //     songIconStatus: Icons.pause_circle_outline_outlined,
                  //     songName: 'Imagine me',
                  //     trackDuration: '3:56'),
                  // TrackTile(
                  //     album: 'unknown album',
                  //     artist: 'unknown artist',
                  //     avatarUrl:
                  //         'https://i1.wp.com/hiphopza.com/wp-content/uploads/2020/12/ALBUM-Ntokozo-Mbambo-%E2%80%93-The-First-Noel.jpg?w=500&ssl=1',
                  //     songIconStatus: Icons.pause_circle_outline_outlined,
                  //     songName: 'Imagine me',
                  //     trackDuration: '3:56'),
                  // TrackTile(
                  //     album: 'unknown album',
                  //     artist: 'unknown artist',
                  //     avatarUrl:
                  //         'https://i1.wp.com/hiphopza.com/wp-content/uploads/2020/12/ALBUM-Ntokozo-Mbambo-%E2%80%93-The-First-Noel.jpg?w=500&ssl=1',
                  //     songIconStatus: Icons.pause_circle_outline_outlined,
                  //     songName: 'Imagine me',
                  //     trackDuration: '3:56'),
                  // TrackTile(
                  //     album: 'unknown album',
                  //     artist: 'unknown artist',
                  //     avatarUrl:
                  //         'https://i1.wp.com/hiphopza.com/wp-content/uploads/2020/12/ALBUM-Ntokozo-Mbambo-%E2%80%93-The-First-Noel.jpg?w=500&ssl=1',
                  //     songIconStatus: Icons.pause_circle_outline_outlined,
                  //     songName: 'Imagine me',
                  //     trackDuration: '3:56'),
                  // TrackTile(
                  //     album: 'unknown album',
                  //     artist: 'unknown artist',
                  //     avatarUrl:
                  //         'https://i1.wp.com/hiphopza.com/wp-content/uploads/2020/12/ALBUM-Ntokozo-Mbambo-%E2%80%93-The-First-Noel.jpg?w=500&ssl=1',
                  //     songIconStatus: Icons.pause_circle_outline_outlined,
                  //     songName: 'Imagine me',
                  //     trackDuration: '3:56'),
                ],
              ),
            );
          }),
    );
  }
}

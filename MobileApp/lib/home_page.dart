import 'package:flutter/material.dart';
// import 'package:flute_music_player/flute_music_player.dart';

class HomePage extends StatefulWidget {
  static String tag = 'home-page';

  // @override
  // Widget build(BuildContext context) {
  //   return Container(

  //     child: Scaffold(
  //       appBar: AppBar(
  //         title: Text('Playlist'),
  //         textTheme: Theme.of(context).textTheme.apply(
  //               bodyColor: Colors.white,
  //               displayColor: Colors.white,
  //             ),
  //         backgroundColor: Colors.black54 ,
  //       ),
  //       body: Container(
  //         decoration: BoxDecoration(
  //           gradient: LinearGradient(
  //               begin: Alignment.topRight,
  //               end: Alignment.bottomLeft,
  //               colors: [Colors.black, Colors.white]),
  //         ),
  //       ),
  //     ),
  //   );
  // }

  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // List<Song> _songs;
  // @override
  // void initState() {
  //   super.initState();
  //   initPlayer();
  // }

  // void initPlayer() async {
  //   var songs = await MusicFinder.allSongs();
  //   songs = new List.from(songs);

  //   setState(() {
  //     _songs = songs;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      child: Scaffold(
        appBar: new AppBar(
          title: Text('Music Player'),
          textTheme: Theme.of(context).textTheme.apply(
                bodyColor: Colors.white,
                displayColor: Colors.white,
              ),
          backgroundColor: Colors.black54,
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [Colors.grey, Colors.white]),
          ),
          child: Container(

            child: Container( 
              child: ListView.builder(
              itemCount: 100,
              itemBuilder: (BuildContext context, int index) {
                return new ListTile(
                  contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                  leading: CircleAvatar(
                    child: Text('J'),
                    backgroundColor: Colors.grey,
                  ),
                  title: Text('Jehova is your name'),
                );
              },
            ),
          ),
        ),
      ),
      ),
    );
  }
}

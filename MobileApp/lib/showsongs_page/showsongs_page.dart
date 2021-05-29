import 'package:MobileApp/playsong_page/playsong_page.dart';
import 'package:MobileApp/showsongs_page/all_tracks.dart';
import 'package:curved_drawer/curved_drawer.dart';
import 'package:flutter/material.dart';

class ShowSongsPage extends StatefulWidget {
  static String tag = "my-music";
  // ShowSongsPage({Key key}) : super(key: key);

  @override
  _ShowSongsPageState createState() => _ShowSongsPageState();
}

class _ShowSongsPageState extends State<ShowSongsPage> {
  @override
  Widget build(BuildContext context) {
    songPofile({String imageUrl, String songName, String artistName}) =>
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: InkWell(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) =>
                      PlaySongPage(imageUrl: imageUrl),
                ),
              );
            },
            child: Column(
              children: [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage(imageUrl),
                ),
                SizedBox(height: 10.0),
                Text(
                  songName,
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 3.0),
                Text(
                  artistName,
                  style: TextStyle(color: Colors.white, fontSize: 12),
                )
              ],
            ),
          ),
        );

    

    return Container(
      // height: 100,
      // width: 100,
      // padding: EdgeInsets.all(20),
      // color: Colors.black,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          toolbarHeight: 70,
          leading: Container(
            padding: EdgeInsets.all(15),
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.menu,
                size: 35,
              ),
            ),
          ),
          title: Container(
            // margin: EdgeInsets.symmetric(horizontal: 18.0, vertical: 10),
            height: 40.0,
            decoration: BoxDecoration(
                color: Color.fromRGBO(40, 39, 39, 100),
                borderRadius: BorderRadius.all(Radius.circular(22.0))),
            child: Row(
              children: [
                Expanded(
                    child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 30.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search...",
                        hintStyle: TextStyle(
                            color: Color.fromRGBO(102, 101, 101, 100))),
                  ),
                )),
              ],
            ),
          ),
          actions: [
            Container(
              padding: EdgeInsets.all(0),
              child: IconButton(
                icon: Icon(
                  Icons.notifications_outlined,
                  size: 30,
                ),
                onPressed: () {
                  print("Notification Pressed");
                },
              ),
            ),
            Container(
              margin: EdgeInsets.all(13.0),
              width: 45,
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://upload.wikimedia.org/wikipedia/commons/7/7c/Profile_avatar_placeholder_large.png"),
              ),
            )
          ],
        ),
        body: Container(
          // color: Colors.orange,
          padding: EdgeInsets.only(left: 30.0, right: 30.0, top: 55.0),
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(
                  // color: Colors.blueAccent,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Recently Played",
                        style: TextStyle(color: Colors.white, fontSize: 19),
                      ),
                      SizedBox(
                        height: 25.0,
                      ),
                      Container(
                        height: 130,
                        child: ListView.builder(
                            itemCount: 1,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) {
                              return Container(
                                child: Row(
                                  children: [
                                    songPofile(
                                        imageUrl:
                                            "https://images-na.ssl-images-amazon.com/images/I/71cWTuFUQtL._SY355_.jpg",
                                        songName: "Imagine me",
                                        artistName: "Kirk Franklin"),
                                    songPofile(
                                        imageUrl:
                                            "https://i1.wp.com/hiphopza.com/wp-content/uploads/2020/12/ALBUM-Ntokozo-Mbambo-%E2%80%93-The-First-Noel.jpg?w=500&ssl=1",
                                        songName: "Wamuhle",
                                        artistName: "Ntokozo Mbambo"),
                                    songPofile(
                                        imageUrl:
                                            "https://e-cdn-images.dzcdn.net/images/artist/ea777201a19463ba139492132039e547/264x264-000000-80-0-0.jpg",
                                        songName: "Shall never",
                                        artistName: "Xolly Mncwango"),
                                    songPofile(
                                        imageUrl:
                                            "https://s3.amazonaws.com/broadtime_photo/418459067098",
                                        songName: "Zuliphathe kahle",
                                        artistName: "Joyous Celebration"),
                                    songPofile(
                                        imageUrl:
                                            "https://icon-library.com/images/blu-ray-icon/blu-ray-icon-18.jpg",
                                        songName: "Bless the Lord",
                                        artistName: "Cory Henry"),
                                    songPofile(
                                        imageUrl:
                                            "https://i1.wp.com/hiphopza.com/wp-content/uploads/2020/12/ALBUM-Ntokozo-Mbambo-%E2%80%93-The-First-Noel.jpg?w=500&ssl=1",
                                        songName: "Wamuhle",
                                        artistName: "Ntokozo Mbambo"),
                                    songPofile(
                                        imageUrl:
                                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHOcNrStUXqDdiiluvis6JR-ADI33Wue1E_OU1LyPwc0ew63q23nxabibPO66xUJVRLzM&usqp=CAU",
                                        songName: "Wamuhle",
                                        artistName: "Ntokozo Mbambo"),
                                  ],
                                ),
                              );
                            }),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                  flex: 2,
                  child: Container(
                    // color: Colors.amberAccent,
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "All songs",
                            style: TextStyle(color: Colors.white, fontSize: 19),
                          ),
                          SizedBox(
                            height: 40.0,
                          ),
                          Flexible(
                            child: Tracks()
                          )
                        ],
                      ),
                    ),
                  )),
              // SizedBox(
              //         height: 35.0,
              //       ),
              ////next field
              // Expanded(
              //   flex: 2,
              //   child: Container(
              //     child: Column(
              //       crossAxisAlignment: CrossAxisAlignment.start,
              //       children: [
              //         Text(
              //           "All songs",
              //           style: TextStyle(color: Colors.white, fontSize: 19),
              //         ),
              //         SizedBox(
              //           height: 40.0,
              //         ),
              // Container(
              //   // height: 340,
              //   color: Colors.blue,
              //   child: ListView.builder(
              //       itemCount: 1,
              //       scrollDirection: Axis.vertical,
              //       itemBuilder: (context, index) {
              //         return Container(
              //           child: Column(
              //             children: [
              //               songPofile(imageUrl: "https://images-na.ssl-images-amazon.com/images/I/71cWTuFUQtL._SY355_.jpg", songName: "Imagine me", artistName: "Kirk Franklin"),
              //               songPofile(imageUrl: "https://i1.wp.com/hiphopza.com/wp-content/uploads/2020/12/ALBUM-Ntokozo-Mbambo-%E2%80%93-The-First-Noel.jpg?w=500&ssl=1", songName: "Wamuhle", artistName: "Ntokozo Mbambo"),
              //               songPofile(imageUrl: "https://e-cdn-images.dzcdn.net/images/artist/ea777201a19463ba139492132039e547/264x264-000000-80-0-0.jpg", songName: "Shall never", artistName: "Xolly Mncwango"),
              //               songPofile(imageUrl: "https://s3.amazonaws.com/broadtime_photo/418459067098", songName: "Zuliphathe kahle", artistName: "Joyous Celebration"),
              //               songPofile(imageUrl: "https://icon-library.com/images/blu-ray-icon/blu-ray-icon-18.jpg", songName: "Bless the Lord", artistName: "Cory Henry"),
              //               songPofile(imageUrl: "https://i1.wp.com/hiphopza.com/wp-content/uploads/2020/12/ALBUM-Ntokozo-Mbambo-%E2%80%93-The-First-Noel.jpg?w=500&ssl=1", songName: "Wamuhle", artistName: "Ntokozo Mbambo"),
              //               songPofile(imageUrl: "https://icon-library.com/images/blu-ray-icon/blu-ray-icon-18.jpg", songName: "Wamuhle", artistName: "Ntokozo Mbambo"),
              //             ],
              //           ),
              //         );
              //       }),
              // )
              //       ],
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:moviepage/VideoPlay.dart';
import 'package:video_player/video_player.dart';

class VideoScreenView extends StatelessWidget{
  const VideoScreenView({Key?key}):super(key: key);
  @override
  Widget build(BuildContext context) {;
    return
      Scaffold(
          backgroundColor: Colors.cyanAccent,
          // appBar: AppBar(
          //   title: Center(child: Text('Movie video')),
          // ),
          body:
          ListView(
            padding: EdgeInsets.all(10),
            children: const [
              Text('First Video',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              VideoScreen(
                  url: "https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4",
                  dataSourceType: DataSourceType.network),
              SizedBox(width: 10, height: 10),
              Text('second Video',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              VideoScreen(
                  url: "https://demo.unified-streaming.com/k8s/features/stable/video/tears-of-steel/tears-of-steel.ism/.m3u8",
                  dataSourceType: DataSourceType.network),
              SizedBox(width: 10, height: 10),
              Text('third Video',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              VideoScreen(
                  url: "https://cph-p2p-msl.akamaized.net/hls/live/2000341/test/master.m3u8",
                  dataSourceType: DataSourceType.network),
              SizedBox(width: 10, height: 10),
              Text('forth Video',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              VideoScreen(
                  url: "https://dash.akamaized.net/akamai/bbb_30fps/bbb_30fps.mpd",
                  dataSourceType: DataSourceType.network),
              SizedBox(width: 10, height: 10),
              Text('Fifth Video',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              VideoScreen(
                  url: "https://cdn.bitmovin.com/content/assets/art-of-motion-dash-hls-progressive/mpds/f08e80da-bf1d-4e3d-8899-f0f6155f6efa.mpd",
                  dataSourceType: DataSourceType.network),

            ],

          )
    );

  }

}
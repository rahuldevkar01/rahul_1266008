import 'package:flutter/material.dart';
import 'package:moviepage/VideoPlay.dart';
import 'package:moviepage/VideoScreen.dart';
import 'package:video_player/video_player.dart';
void main(){
  runApp(TestingApp());
}
class TestingApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: "video player",
      theme: ThemeData(primaryColor: Colors.lightBlueAccent),
     home:VideoScreenView(),
     //home: VideoScreen(url: 'https://flutter.gihub.io/assets-for-api-docs/assets/videos/bee.mp4', dataSourceType: DataSourceType.network,),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';
import 'package:moviepage/VideoScreen.dart';
void main(){
  runApp(VideoScreenView());
}

class VideoScreen extends StatefulWidget{
  const VideoScreen({super.key, required this.url,required this.dataSourceType});
     final String url;
    final DataSourceType dataSourceType;

@override
  State<VideoScreen> createState()=>_VideoPlayerState();

}
class _VideoPlayerState extends State<VideoScreen> {
  late VideoPlayerController _videoPlayerController;
   late ChewieController _chewieController;

   @override
  void initState() {
    // TODO: implement initState
    super.initState();
      switch (widget.dataSourceType) {
        case DataSourceType.network:
          _videoPlayerController = VideoPlayerController.network(widget.url);
          break;
      }

      _chewieController =
          ChewieController(videoPlayerController: _videoPlayerController,
              aspectRatio: 16 / 9);
  }

    void dispose() {
      _videoPlayerController.dispose();
      _chewieController.dispose();
      super.dispose();
    }
    @override
    Widget build(BuildContext context) {
      return
        Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AspectRatio(aspectRatio: 16 / 9,
            child: Chewie(controller: _chewieController),
         ),

        ],
      );
    }
}




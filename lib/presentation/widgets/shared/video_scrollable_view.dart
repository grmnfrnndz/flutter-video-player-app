import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:toktikapp/presentation/widgets/widgets.dart';

import '../../../domain/entities/entities.dart';


class VideoScrollableView extends StatelessWidget {

  final List<VideoPost> videos;

  const VideoScrollableView({super.key, 
  required this.videos});

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      itemCount: videos.length,
      itemBuilder: (context, index) {
          final videoPost = videos[index];

          return Stack(
            children: [
              // video player + gradient
              SizedBox.expand(
                child: FullscreenPlayer(videoUrl: videoPost.videoUrl, caption: videoPost.caption,),
              ),
              
              // button
              Positioned(
                bottom: 40,
                right: 20,
                child: VideoButtons(video: videoPost)),

            ],
          );
      },     
    );
  }
}



import 'package:flutter/material.dart';

import 'package:toktikapp/config/shared/data/local_video_posts.dart';
import 'package:toktikapp/domain/entities/entities.dart';
import 'package:toktikapp/infrastructure/models/models.dart';


class DiscoverProvider extends ChangeNotifier {

  // TODO: Repository, DataSource

  bool initialLoading = true;
  List<VideoPost> videos = [];
 

  Future<void> loadNextPage() async {

    // await Future.delayed(const Duration(seconds: 5));

    // load videos
    final List<VideoPost> newVideos = videoPosts.map((videoPost) => LocalVideoModel.fromJson(videoPost).toVideoPostEntity()).toList();

    videos.addAll(newVideos);

    notifyListeners();
    initialLoading = false;
  }




}
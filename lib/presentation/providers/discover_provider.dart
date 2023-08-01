import 'package:flutter/material.dart';

import 'package:toktikapp/domain/entities/entities.dart';
import '../../domain/repositories/video_posts_repository.dart';


class DiscoverProvider extends ChangeNotifier {

  final VideoPostRepository videoPostRepository;  

  bool initialLoading = true;
  List<VideoPost> videos = [];

  DiscoverProvider({required this.videoPostRepository});
 

  Future<void> loadNextPage() async {

    // await Future.delayed(const Duration(seconds: 5));

    // load videos
    final newVideos = await videoPostRepository.getTrendingVideosByPage(1);

    videos.addAll(newVideos);

    notifyListeners();
    initialLoading = false;
  }




}
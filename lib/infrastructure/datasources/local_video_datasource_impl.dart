

import 'package:toktikapp/config/shared/data/local_video_posts.dart';
import 'package:toktikapp/domain/entities/video_post.dart';
import 'package:toktikapp/infrastructure/models/models.dart';

import '../../domain/datasources/video_posts_datasource.dart';

class LocalVideoDatasourceImpl implements VideoPostDatasource {
  
  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userID) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) async {
    await Future.delayed(const Duration(seconds: 2));
    final List<VideoPost> newVideos = videoPosts.map((videoPost) => LocalVideoModel.fromJson(videoPost).toVideoPostEntity()).toList();
    return newVideos;
  }

}





import 'package:toktikapp/domain/entities/video_post.dart';

import '../../domain/datasources/video_posts_datasource.dart';
import '../../domain/repositories/video_posts_repository.dart';

class VideoPostsRepositoryImpl implements VideoPostRepository {


  final VideoPostDatasource videosDatasource;

  VideoPostsRepositoryImpl({required this.videosDatasource});


  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(String userID) {
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) async {
    return videosDatasource.getTrendingVideosByPage(page);
  }

}
import 'package:toktikapp/domain/entities/entities.dart';

abstract class VideoPostDatasource {

Future<List<VideoPost>> getFavoriteVideosByUser(String userID);

Future<List<VideoPost>> getTrendingVideosByPage(int page);

}
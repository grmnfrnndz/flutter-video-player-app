import 'package:toktikapp/domain/entities/entities.dart';

abstract class VideoPostRepository {

Future<List<VideoPost>> getFavoriteVideosByUser(String userID);

Future<List<VideoPost>> getTrendingVideosByPage(int page);

}
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:toktikapp/domain/repositories/video_posts_repository.dart';

import 'package:toktikapp/presentation/providers/providers.dart';
import 'package:toktikapp/config/theme/themes.dart';
import 'package:toktikapp/presentation/screens/discover/screens.dart';

import 'infrastructure/datasources/local_video_datasource_impl.dart';
import 'infrastructure/repositories/video_posts_repository_impl.dart';

void main() => runApp(const StateApp());


class StateApp extends StatelessWidget {
  const StateApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    final videoPostRepository  = VideoPostsRepositoryImpl(
      videosDatasource: LocalVideoDatasourceImpl()
    );


    return MultiProvider(
      providers: [
        ChangeNotifierProvider(lazy: false, create: (BuildContext context) => DiscoverProvider(videoPostRepository: videoPostRepository)..loadNextPage()),
      ],
      child: const MyApp());
  }
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme().getTheme(),
      title: 'TokTik',
      home: const DiscoverScreen(),
    );
  }
}
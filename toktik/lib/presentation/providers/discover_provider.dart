import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:toktik/domain/entities/video_post.dart';
import 'package:toktik/infrastructure/models/local_video_model.dart';
import 'package:toktik/shared/data/local_video_post.dart';

class DiscoverProvider extends ChangeNotifier {
  
  bool initialLoading = true;
  List<VideoPost> videos = [];

  Future<void> loadNextPage() async {

    await Future.delayed( const Duration(seconds: 2) );

    final List<VideoPost> newVideos = videoPosts.map( 
      (video) => LocalVideoModel.fromJSON(video).toVideoPostEntity() 
    ).toList();

    videos.addAll( newVideos) ;
    initialLoading = false;
    notifyListeners();
  }
}

import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

import '../../../../data/Constant.dart';

class ProReferenceController extends GetxController {
  late VideoPlayerController videoPlayerController;
  late Future<void> initializeVideoPlayerFuture;
  ChewieController? chewieController;

  @override
  void onInit() {
    videoPlayer();
    super.onInit();
  }

  Future<void> videoPlayer() async {
    videoPlayerController = VideoPlayerController.network(
        'https://test-streams.mux.dev/x36xhzz/x36xhzz.m3u8');
    // Initialize the controller and store the Future for later use.
    // initializeVideoPlayerFuture = videoPlayerController.initialize();
    // Use the controller to loop the video.
    // videoPlayerController.setLooping(true);
    await Future.wait([videoPlayerController.initialize()]);
    chewieController = ChewieController(
      videoPlayerController: videoPlayerController,
      autoPlay: false,
      looping: true,
      materialProgressColors: ChewieProgressColors(
          playedColor: Constants.primaryColor,
          handleColor: Constants.primaryColor,
          backgroundColor: Colors.white,
          bufferedColor: Colors.black),
      autoInitialize: false,
    );
    update();

    void onCLose() {
      videoPlayerController.dispose();
      chewieController!.dispose();
    }
  }
}

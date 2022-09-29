import 'package:arrowmech_e_r_p/app/data/Constant.dart';
import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

class ReferenceController extends GetxController {
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

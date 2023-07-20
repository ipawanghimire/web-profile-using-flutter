import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';
import 'package:wwebprofile/widgets/app_contact.dart';
import 'package:wwebprofile/widgets/lastbar.dart';
import 'package:wwebprofile/widgets/main_bar.dart';
import 'package:wwebprofile/widgets/sidebar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  late VideoPlayerController videoPlayerController;
  ChewieController? chewieController;

  @override
  void initState() {
    super.initState();
    videoPlayerController = VideoPlayerController.asset(
      'assets/video/bg.mp4',
    )..initialize().then((_) {
        setState(() {
          chewieController = ChewieController(
              videoPlayerController: videoPlayerController,
              autoPlay: true,
              looping: true,
              showControls: false,
              //fullScreenByDefault: true,
              showControlsOnInitialize: false);
        });
      });
  }

  @override
  void dispose() {
    videoPlayerController.dispose();
    chewieController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: const FlexibleSpaceBar(
          title: AppContact(),
        ),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Display the video background
          if (chewieController != null)
            Chewie(
              controller: chewieController!,
            ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                flex: 1,
                child: SideBar(),
              ),
              Expanded(
                flex: 2,
                child: MainBody(), // Replace MainBody with your implementation
              ),
              Expanded(
                flex: 1,
                child: LastBar(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

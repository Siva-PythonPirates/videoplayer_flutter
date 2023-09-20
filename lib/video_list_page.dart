import 'package:flutter/material.dart';
import 'video_player_page.dart';

class HomePage extends StatelessWidget {
  final List<String> videoUrls = [
    'https://siva-pythonpirates.github.io/lion.mp4',
    'https://siva-pythonpirates.github.io/butterfly.mp4',
    'https://sample-videos.com/video123/mp4/480/big_buck_bunny_480p_1mb.mp4',
    'https://sample-videos.com/video123/mp4/480/big_buck_bunny_480p_1mb.mp4',
    'https://sample-videos.com/video123/mp4/480/big_buck_bunny_480p_1mb.mp4',

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Clickable Containers'),
      ),
      body: ContainerPage(videoUrl: videoUrls),
    );
  }
}

class ContainerPage extends StatelessWidget {
  final List<String> videoUrl;

  ContainerPage({required this.videoUrl});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 200,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: [
            SizedBox(width: 50),
            ContainerWidget(index: 0, videoUrl: videoUrl),
            SizedBox(width: 50),
            ContainerWidget(index: 1, videoUrl: videoUrl),
            SizedBox(width: 50),
            ContainerWidget(index: 2, videoUrl: videoUrl),
            SizedBox(width: 50),
            ContainerWidget(index: 3, videoUrl: videoUrl),
            SizedBox(width: 50),
            ContainerWidget(index: 4, videoUrl: videoUrl),
          ],
        ),
      ),
    );
  }
}

class ContainerWidget extends StatelessWidget {
  final int index;
  final List<String> videoUrl;

  ContainerWidget({required this.index, required this.videoUrl});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => VideoPlayerPage(videoUrl: videoUrl[index]),
          ),
        );
      },
      child: Container(
        width: 200,
        height: 200,
        color: Colors.blue,
      ),
    );
  }
}

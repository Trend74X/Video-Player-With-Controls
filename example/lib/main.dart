import 'package:flutter/material.dart';
import 'package:video_player_with_controls/video_player_with_controls.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Video Player With Controls'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final String videoPlayUrl = 'https://assets.mixkit.co/videos/preview/mixkit-girl-dancing-happily-in-a-field-of-flowers-4702-large.mp4';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: SizedBox(
          height: 250.0,
          child: VideoPlayerWithControls(
            videoUrl: videoPlayUrl,
            skipVideoUptoSec: 8
          ),
        )
      )
    );
  }
}

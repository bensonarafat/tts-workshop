import 'dart:io';

import 'package:flutter/material.dart';
import 'package:tts_workshop/widgets/audio_widget.dart';

class AudioScreen extends StatelessWidget {
  final File audioFile;
  const AudioScreen({super.key, required this.audioFile});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Speech Playback"),
      ),
      body: AudioWidget(audioFile: audioFile),
    );
  }
}

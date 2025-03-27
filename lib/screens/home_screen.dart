import 'package:flutter/material.dart';
import 'package:tts_workshop/screens/audio_understanding_screen.dart';
import 'package:tts_workshop/screens/text_speech_screen.dart';
import 'package:tts_workshop/widgets/action_card.dart';

/// HomeScreen serves as the main entry point of the app, allowing users to navigate
/// to different functionalities related to text-to-speech and audio understanding.

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            /// ActionCard for navigating to the "Audio Understanding" feature
            Builder(builder: (context) {
              return ActionCard(
                text: "Audio Understanding with Gemini AI",
                color: Colors.amber[900],
                onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => const AudioUnderstandingScreen())),
              );
            }),

            /// ActionCard for navigating to the "Text to Speech" feature
            Builder(builder: (context) {
              return ActionCard(
                  text: "Google Cloud Text to Speech",
                  color: Colors.blue[800],
                  onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => const TextSpeechScreen())));
            }),
          ],
        ),
      ),
    );
  }
}

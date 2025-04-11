// ignore_for_file: use_build_context_synchronously

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:tts_workshop/constants.dart';
import 'package:tts_workshop/widgets/app_button.dart';
import 'package:tts_workshop/widgets/audio_widget.dart';

/// Screen for handling audio understanding using Gemini AI.
/// Users can enter a text prompt, which will be processed for audio analysis.
class AudioUnderstandingScreen extends StatefulWidget {
  const AudioUnderstandingScreen({super.key});

  @override
  State<AudioUnderstandingScreen> createState() =>
      _AudioUnderstandingScreenState();
}

class _AudioUnderstandingScreenState extends State<AudioUnderstandingScreen> {
  /// Controller for handling user input in the text field.
  TextEditingController textEditingController = TextEditingController();
  File? selectedAudioFile;

  @override
  void initState() {
    textEditingController.text = Constants.prompts[1];
    loadDefaultAudio();
    super.initState();
  }

  @override
  void dispose() {
    /// Dispose the controller to free resources when the widget is removed.
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Audio Understaning with Gemini AI"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              /// Text Field for user prompt
              Card(
                color: Colors.grey,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: textEditingController,
                    maxLines: 8,
                    decoration: const InputDecoration.collapsed(
                        hintText: "Enter prompt here..."),
                  ),
                ),
              ),

              const SizedBox(height: 8),
              // Audio Player
              if (selectedAudioFile != null) ...{
                AudioWidget(
                  audioFile: selectedAudioFile!,
                ),
              },
              const SizedBox(height: 8),

              /// App Button Widget
              AppButton(
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Load Audio from assets and store in device
  Future<void> loadDefaultAudio() async {
    try {
      // Load audio from assets
      final byteData = await rootBundle.load('assets/i_have_a_dream.mp3');
      final file =
          File('${(await getTemporaryDirectory()).path}/i_have_a_dream.mp3');
      await file.writeAsBytes(byteData.buffer.asUint8List());

      setState(() {
        selectedAudioFile = file;
      });
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error loading audio: $e')),
      );
    }
  }
}

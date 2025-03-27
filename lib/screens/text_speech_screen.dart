// ignore_for_file: use_build_context_synchronously
import 'package:flutter/material.dart';
import 'package:tts_workshop/widgets/app_button.dart';

class TextSpeechScreen extends StatefulWidget {
  const TextSpeechScreen({super.key});

  @override
  State<TextSpeechScreen> createState() => _TextSpeechScreenState();
}

class _TextSpeechScreenState extends State<TextSpeechScreen> {
  /// Controller for handling user input in the text field.
  TextEditingController textEditingController = TextEditingController();

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
        title: const Text("Google Cloud: Text To Speech"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              ///Text to speak
              Card(
                color: Colors.grey,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: textEditingController,
                    maxLines: 8,
                    decoration: const InputDecoration.collapsed(
                        hintText: "Text to Speak"),
                  ),
                ),
              ),
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
}

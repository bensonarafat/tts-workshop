import 'dart:io';

abstract class GeminiRepository {
  Future<String?> transcribeAudio(File audioFile, String text);
}

class GeminiRespositoryImpl implements GeminiRepository {
  @override
  Future<String?> transcribeAudio(File audioFile, String text) {
    // TODO: implement transcribeAudio
    throw UnimplementedError();
  }
}

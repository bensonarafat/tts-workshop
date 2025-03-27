import 'dart:io';

import 'package:tts_workshop/data/models/voice.dart';

abstract class GoogleCloudRespository {
  Future<File?> convertTextToSpeech(
    String text, {
    String languageCode = 'en-US',
    String voiceName = 'en-US-Standard-C',
    double pitch = 0,
    double speakingRate = 1.0,
  });

  Future<List<Voice>> getVoices(String languageCode);
}

class GoogleCloudRepositoryImpl implements GoogleCloudRespository {
  @override
  Future<File?> convertTextToSpeech(String text,
      {String languageCode = 'en-US',
      String voiceName = 'en-US-Standard-C',
      double pitch = 0,
      double speakingRate = 1.0}) {
    // TODO: implement convertTextToSpeech
    throw UnimplementedError();
  }

  @override
  Future<List<Voice>> getVoices(String languageCode) {
    // TODO: implement getVoices
    throw UnimplementedError();
  }
}

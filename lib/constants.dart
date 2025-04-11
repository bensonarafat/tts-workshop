class Contants {
  ///
  /// You need an API key to call the Gemini API. If you don't already have one, create a key in Google AI Studio.
  /// https://aistudio.google.com/app/apikey
  static String googleAPIKey = "[API KEY HERE]";

  ///
  /// Prompts
  static List<String> prompts = [
    /// Gemini AI prompts
    "Generate a transcript of the speech.",
    "Provide a transcript of the speech from 00:00 to 00:00.",

    /// Google TTS prompts
    "Hello and welcome! Today, we’re exploring the amazing world of intelligent audio applications. With the power of Google Cloud and Gemini AI, we can teach machines to listen, understand, and even talk back — just like humans. Let’s get started!"
  ];
}

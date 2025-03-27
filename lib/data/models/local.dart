class TTSLanguage {
  final String name;
  final String code;

  TTSLanguage({required this.name, required this.code});
}

class TTSLanguages {
  static List<TTSLanguage> all = [
    // Africa
    TTSLanguage(name: 'Afrikaans', code: 'af-ZA'),
    TTSLanguage(name: 'Swahili', code: 'sw-TZ'),

    // Americas
    TTSLanguage(name: 'English (Canada)', code: 'en-CA'),
    TTSLanguage(name: 'English (United States)', code: 'en-US'),
    TTSLanguage(name: 'Spanish (Argentina)', code: 'es-AR'),
    TTSLanguage(name: 'Spanish (Bolivia)', code: 'es-BO'),
    TTSLanguage(name: 'Spanish (Chile)', code: 'es-CL'),
    TTSLanguage(name: 'Spanish (Colombia)', code: 'es-CO'),
    TTSLanguage(name: 'Spanish (Costa Rica)', code: 'es-CR'),
    TTSLanguage(name: 'Spanish (Dominican Republic)', code: 'es-DO'),
    TTSLanguage(name: 'Spanish (Ecuador)', code: 'es-EC'),
    TTSLanguage(name: 'Spanish (El Salvador)', code: 'es-SV'),
    TTSLanguage(name: 'Spanish (Guatemala)', code: 'es-GT'),
    TTSLanguage(name: 'Spanish (Honduras)', code: 'es-HN'),
    TTSLanguage(name: 'Spanish (Mexico)', code: 'es-MX'),
    TTSLanguage(name: 'Spanish (Nicaragua)', code: 'es-NI'),
    TTSLanguage(name: 'Spanish (Panama)', code: 'es-PA'),
    TTSLanguage(name: 'Spanish (Paraguay)', code: 'es-PY'),
    TTSLanguage(name: 'Spanish (Peru)', code: 'es-PE'),
    TTSLanguage(name: 'Spanish (Puerto Rico)', code: 'es-PR'),
    TTSLanguage(name: 'Spanish (United States)', code: 'es-US'),
    TTSLanguage(name: 'Spanish (Uruguay)', code: 'es-UY'),
    TTSLanguage(name: 'Spanish (Venezuela)', code: 'es-VE'),

    // Asia
    TTSLanguage(name: 'Arabic (Gulf)', code: 'ar-SA'),
    TTSLanguage(name: 'Chinese (Mandarin, Simplified)', code: 'zh-CN'),
    TTSLanguage(name: 'Chinese (Mandarin, Traditional)', code: 'zh-TW'),
    TTSLanguage(name: 'Hindi', code: 'hi-IN'),
    TTSLanguage(name: 'Indonesian', code: 'id-ID'),
    TTSLanguage(name: 'Japanese', code: 'ja-JP'),
    TTSLanguage(name: 'Korean', code: 'ko-KR'),
    TTSLanguage(name: 'Malay', code: 'ms-MY'),
    TTSLanguage(name: 'Tamil', code: 'ta-IN'),
    TTSLanguage(name: 'Telugu', code: 'te-IN'),
    TTSLanguage(name: 'Thai', code: 'th-TH'),
    TTSLanguage(name: 'Vietnamese', code: 'vi-VN'),

    // Europe
    TTSLanguage(name: 'Bulgarian', code: 'bg-BG'),
    TTSLanguage(name: 'Czech', code: 'cs-CZ'),
    TTSLanguage(name: 'Danish', code: 'da-DK'),
    TTSLanguage(name: 'Dutch', code: 'nl-NL'),
    TTSLanguage(name: 'English (Ireland)', code: 'en-IE'),
    TTSLanguage(name: 'English (United Kingdom)', code: 'en-GB'),
    TTSLanguage(name: 'Finnish', code: 'fi-FI'),
    TTSLanguage(name: 'French (Canada)', code: 'fr-CA'),
    TTSLanguage(name: 'French (France)', code: 'fr-FR'),
    TTSLanguage(name: 'German (Austria)', code: 'de-AT'),
    TTSLanguage(name: 'German (Germany)', code: 'de-DE'),
    TTSLanguage(name: 'Greek', code: 'el-GR'),
    TTSLanguage(name: 'Italian', code: 'it-IT'),
    TTSLanguage(name: 'Norwegian', code: 'nb-NO'),
    TTSLanguage(name: 'Polish', code: 'pl-PL'),
    TTSLanguage(name: 'Portuguese (Brazil)', code: 'pt-BR'),
    TTSLanguage(name: 'Portuguese (Portugal)', code: 'pt-PT'),
    TTSLanguage(name: 'Romanian', code: 'ro-RO'),
    TTSLanguage(name: 'Russian', code: 'ru-RU'),
    TTSLanguage(name: 'Slovak', code: 'sk-SK'),
    TTSLanguage(name: 'Spanish (Spain)', code: 'es-ES'),
    TTSLanguage(name: 'Swedish', code: 'sv-SE'),
    TTSLanguage(name: 'Ukrainian', code: 'uk-UA'),

    // Oceania
    TTSLanguage(name: 'English (Australia)', code: 'en-AU'),
    TTSLanguage(name: 'English (New Zealand)', code: 'en-NZ'),
  ];
}

import 'package:flutter/material.dart';
import 'package:tts_workshop/data/models/local.dart';

/// A dropdown widget for selecting a language locale.
/// It allows users to choose a language from a predefined list.
class LocaleDropDown extends StatefulWidget {
  /// Callback function triggered when a new language is selected.
  final ValueChanged<TTSLanguage>? onChanged;

  /// The initial selected language when the dropdown is first displayed.
  final TTSLanguage? initialValue;

  const LocaleDropDown({super.key, this.initialValue, this.onChanged});

  @override
  State<LocaleDropDown> createState() => _LocaleDropDownState();
}

class _LocaleDropDownState extends State<LocaleDropDown> {
  /// Holds the currently selected language.
  late TTSLanguage selectedLanguage;

  @override
  void initState() {
    super.initState();

    /// Sets the initial selected language or defaults to the first available language.
    selectedLanguage = widget.initialValue ?? TTSLanguages.all.first;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: DropdownButton<TTSLanguage>(
          isExpanded: true,
          value: selectedLanguage,
          items: TTSLanguages.all
              .map<DropdownMenuItem<TTSLanguage>>((TTSLanguage language) {
            return DropdownMenuItem<TTSLanguage>(
              value: language,
              child: Text('${language.name} (${language.code})'),
            );
          }).toList(),
          onChanged: (TTSLanguage? newValue) {
            if (newValue != null) {
              setState(() {
                selectedLanguage = newValue;
              });

              /// Calls the provided callback function with the new language selection.

              widget.onChanged?.call(newValue);
            }
          }),
    );
  }
}

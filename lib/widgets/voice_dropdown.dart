import 'package:flutter/material.dart';
import 'package:tts_workshop/data/models/voice.dart';
import 'package:tts_workshop/data/respositories/google_cloud_respository.dart';

class VoiceDropdown extends StatefulWidget {
  final ValueChanged<Voice>? onChanged;
  final String languageCode;
  const VoiceDropdown({super.key, this.onChanged, required this.languageCode});

  @override
  State<VoiceDropdown> createState() => _VoiceDropdownState();
}

class _VoiceDropdownState extends State<VoiceDropdown> {
  List<Voice> _voices = [];
  Voice? _selectedVoice;
  bool _isLoading = false;
  String? _error;

  @override
  void initState() {
    super.initState();
    _fetchVoices();
  }

  @override
  void didUpdateWidget(VoiceDropdown oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.languageCode != widget.languageCode) {
      _fetchVoices();
    }
  }

  Future<void> _fetchVoices() async {
    setState(() {
      _isLoading = true;
      _error = null;
    });

    try {
      final googleCloudRespository = GoogleCloudRepositoryImpl();
      final voices =
          await googleCloudRespository.getVoices(widget.languageCode);

      setState(() {
        _voices = voices;
        _isLoading = false;

        // Select first voice by default if available
        if (_voices.isNotEmpty) {
          _selectedVoice = _voices.first;
          widget.onChanged?.call(_selectedVoice!);
        }
      });
    } catch (e) {
      setState(() {
        _error = e.toString();
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    // Loading state
    if (_isLoading) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    }

    // Error state
    if (_error != null) {
      return ListTile(
        title: const Text('Error loading voices',
            style: TextStyle(color: Colors.red)),
        subtitle: Text(_error!),
        trailing: IconButton(
          icon: const Icon(Icons.refresh),
          onPressed: _fetchVoices,
        ),
      );
    }

    // No voices found
    if (_voices.isEmpty) {
      return const Center(
        child: Text('No voices available for this language'),
      );
    }

    // Dropdown
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: DropdownButton<Voice>(
        isExpanded: true,
        value: _selectedVoice,
        hint: const Text('Select Voice'),
        onChanged: (Voice? newValue) {
          if (newValue != null) {
            setState(() {
              _selectedVoice = newValue;
            });
            widget.onChanged?.call(newValue);
          }
        },
        items: _voices.map<DropdownMenuItem<Voice>>((Voice voice) {
          return DropdownMenuItem<Voice>(
            value: voice,
            child: Text(
              '${voice.name} (${voice.ssmlGender})',
              style: const TextStyle(fontSize: 14),
            ),
          );
        }).toList(),
      ),
    );
  }
}

import 'package:flutter/material.dart';

/// Enum to define the type of slider - pitch or speed.
enum SliderType { pitch, speed }

/// A reusable slider widget for adjusting pitch or speed values.
class SliderWidget extends StatefulWidget {
  /// Type of the slider (pitch or speed).
  final SliderType type;

  /// Initial value of the slider.
  final double currentSliderValue;

  /// Maximum value allowed on the slider.
  final double max;

  /// Minimum value allowed on the slider.
  final double min;

  /// Callback function triggered when the slider value changes.
  final ValueChanged<double>? onChanged;

  const SliderWidget({
    super.key,
    this.type = SliderType.pitch, // Default type is pitch
    this.currentSliderValue = 1.00, // Default starting value
    this.max = 4.00, // Maximum slider value
    this.min = 0.45, // Minimum slider value
    this.onChanged,
  });

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  /// Holds the current value of the slider.
  late double currentSliderValue;

  @override
  void initState() {
    /// Initializes the slider value with the provided initial value.
    currentSliderValue = widget.currentSliderValue;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(widget.type.name.toUpperCase()),
            Text(currentSliderValue.toString()),
          ],
        ),
      ),

      /// The slider UI component.
      Slider(
        value: currentSliderValue,
        onChanged: (double value) {
          setState(() {
            /// Updates the slider value with two decimal precision.
            currentSliderValue = double.parse(value.toStringAsFixed(2));
          });

          /// Calls the provided callback function with the new slider value.
          widget.onChanged?.call(currentSliderValue);
        },
        max: widget.max, // Sets the maximum slider value
        min: widget.min, // Sets the minimum slider value
      ),
    ]);
  }
}

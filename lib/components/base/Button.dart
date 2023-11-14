// ignore_for_file: file_names, must_be_immutable

import 'package:instagram_clone_ui/config/import.dart';

class Button extends StatelessWidget {
  Color color, textColor;
  String? text;
  IconData? icon;
  Button({
    super.key,
    required this.color,
    required this.textColor,
    this.text,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: double.maxFinite,
      padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(3)),
        color: color,
      ),
      child: text == null
          ? Icon(
              icon,
              size: 20,
            )
          : Text(
              text!,
              textAlign: TextAlign.center,
              style: TextStyle(color: textColor, fontWeight: FontWeight.w700),
            ),
    );
  }
}

class Statics extends StatelessWidget {
  String count;
  String text;
  Statics({
    super.key,
    required this.text,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(count, style: const TextStyle(fontWeight: FontWeight.w700)),
        Text(text, style: const TextStyle(fontWeight: FontWeight.w400)),
      ],
    );
  }
}

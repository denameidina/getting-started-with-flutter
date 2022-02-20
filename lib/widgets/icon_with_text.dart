import 'package:flutter/material.dart';

class IconWithText extends StatelessWidget {
  const IconWithText({
    Key? key,
    required this.iconData,
    required this.text,
  }) : super(key: key);

  final IconData iconData;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(iconData, size: 16),
        const SizedBox(width: 8),
        Text(
          text,
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

class Experiences extends StatelessWidget {
  const Experiences({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'experience',
                style: Theme.of(context).textTheme.bodyText2,
              ),
              const SizedBox(height: 12),
              Text(
                '2 Years',
                style: Theme.of(context).textTheme.headline6,
              ),
            ],
          ),
        ),
        Expanded(
          flex: 2,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'expertise',
                style: Theme.of(context).textTheme.bodyText2,
              ),
              const SizedBox(height: 12),
              Text(
                'Dart, Flutter, UI Design, Prototyping, State Management, Clean Code, Solid Pattern, TDD Pattern, Bloc, etc',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.bodyText2,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

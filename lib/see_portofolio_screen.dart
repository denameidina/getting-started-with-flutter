import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:introduction/widgets/card_project.dart';

class SeePortofolioScreen extends StatelessWidget {
  const SeePortofolioScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Portofolio'),
      ),
      body: Stack(
        children: [
          CachedNetworkImage(
            imageUrl:
                'https://i.picsum.photos/id/1/5616/3744.jpg?hmac=kKHwwU8s46oNettHKwJ24qOlIAsWN9d2TtsXDoCWWsQ',
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
            color: Colors.grey,
            colorBlendMode: BlendMode.saturation,
          ),
          ListView.separated(
            padding: EdgeInsets.fromLTRB(
              16,
              MediaQuery.of(context).size.height / 1.7,
              16,
              16,
            ),
            itemBuilder: (context, index) {
              return const CardProject();
            },
            separatorBuilder: (context, index) => const SizedBox(height: 16),
            itemCount: 6,
          ),
        ],
      ),
    );
  }
}

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CardProject extends StatefulWidget {
  const CardProject({Key? key}) : super(key: key);

  @override
  State<CardProject> createState() => _CardProjectState();
}

class _CardProjectState extends State<CardProject> {
  bool isShowMore = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Project',
            style: Theme.of(context).textTheme.bodyText1,
          ),
          const SizedBox(height: 16),
          Text(
            'Introduction App',
            style: Theme.of(context).textTheme.subtitle1?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
          const SizedBox(height: 8),
          Text(
            'Introduction App',
            style: Theme.of(context).textTheme.bodyText2,
          ),
          const SizedBox(height: 8),
          AspectRatio(
            aspectRatio: 3 / 1,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: CachedNetworkImage(
                imageUrl:
                    'https://i.picsum.photos/id/0/5616/3744.jpg?hmac=3GAAioiQziMGEtLbfrdbcoenXoWAW-zlyEAMkfEdBzQ',
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 16),
          Text(
            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
            maxLines: isShowMore ? null : 3,
            overflow: isShowMore ? null : TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.bodyText2,
          ),
          const SizedBox(height: 16),
          GestureDetector(
            onTap: () {
              setState(() {
                isShowMore = !isShowMore;
              });
            },
            child: Align(
              alignment: Alignment.centerRight,
              child: Text(
                isShowMore ? '- Show Less' : '+ See More',
                style: Theme.of(context).textTheme.bodyText1?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

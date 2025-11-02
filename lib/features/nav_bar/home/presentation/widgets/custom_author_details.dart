import 'package:books_bazar_app/core/utils/app_assets.dart';
import 'package:books_bazar_app/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class CustomAuthorDetails extends StatelessWidget {
  const CustomAuthorDetails({
    super.key,
    required this.authorName,
    required this.authorBio,
  });
  final String authorImage = AppAssets.authorPhoto;
  final String authorName;
  final String authorBio;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: 6,
        itemBuilder: (context, index) => Container(
          width: 127,
          height: 183,

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 40,
                child: ClipOval(
                  child: Image.asset(
                    AppAssets.authorPhoto,
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return const Icon(Icons.person, size: 40);
                    },
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Text(authorName, style: AppTextStyle.authorNameText),
              const SizedBox(height: 4),
              Text(authorBio, style: AppTextStyle.regularText14),
            ],
          ),
        ),
      ),
    );
  }
}

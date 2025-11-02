import 'package:books_bazar_app/core/utils/app_assets.dart';
import 'package:books_bazar_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class BestVendorsSection extends StatelessWidget {
  const BestVendorsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) => Container(
          color: AppColors.lightBackgroundTextField,
          height: 80,
          width: 80,
          margin: EdgeInsets.only(right: 8), // Add spacing between items
          child: Padding(
            padding: const EdgeInsets.only(
              top: 15,
              bottom: 15,
              left: 7,
              right: 6,
            ),
            child: Image(
              image: AssetImage(AppAssets.bestVendors),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}

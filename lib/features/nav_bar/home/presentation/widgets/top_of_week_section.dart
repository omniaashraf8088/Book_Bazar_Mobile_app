import 'package:books_bazar_app/core/utils/app_assets.dart';
import 'package:books_bazar_app/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class TopOfWeekSection extends StatelessWidget {
  const TopOfWeekSection({super.key, required this.text,
   required this.bookCost,
  });
  final String text;
    final String bookCost;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200, // Give the ListView a specific height
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 16), // Add spacing between items
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.2),
                        spreadRadius: 2,
                        blurRadius: 5,
                        offset: Offset(0, 3),
                      ),
                ],
              ),
              width: 129,height: 153,
              child: Image(image: AssetImage(AppAssets.topOfWeek)),
            ),
            SizedBox(height: 4),
            Text(text,style: AppTextStyle.labelText14,),
            SizedBox(height: 4),
            Text('\$$bookCost',style: AppTextStyle.linkTextPurple14.copyWith(
              fontSize: 12
            ),),
          ],
        ),
      );
    },
    ));
  }
}
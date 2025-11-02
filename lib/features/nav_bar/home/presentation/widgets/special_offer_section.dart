import 'package:books_bazar_app/core/utils/app_assets.dart';
import 'package:books_bazar_app/core/utils/app_colors.dart';
import 'package:books_bazar_app/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class SpecialOfferSection extends StatelessWidget {
  const SpecialOfferSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColors.lightPurpel
      ),
      
      width: 327,
      height: 146,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 23,
              top: 24,
              bottom: 24,
            ),
            child: Column(
              children: [
                Text('Special Offer', style: AppTextStyle.subHeadingText20),
                
                Text('Discount 25%', style: AppTextStyle.regularText14),
                SizedBox(height: 10),
                Flexible(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.purple,
                      minimumSize: Size(118, 42),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Order Now',
                      style: AppTextStyle.customButtonText,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),

          Container(
            width: 99,
            height: 145,
            child: Image(
              image: AssetImage(AppAssets.topOfWeek),
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }
}

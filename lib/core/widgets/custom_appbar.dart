import 'package:books_bazar_app/core/utils/app_assets.dart';
import 'package:books_bazar_app/core/utils/app_text_style.dart';
import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({super.key, required this.text});
  final String text;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      automaticallyImplyLeading: false,

      title: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: 24,
              height: 24,
              child: ImageIcon(AssetImage(AppAssets.searchIcon)),
            ),
            Text(text, style: AppTextStyle.subHeadingText20),
            SizedBox(
              width: 24,
              height: 24,
              child: ImageIcon(AssetImage(AppAssets.notificationIcon)),
            ),
          ],
        ),
      ),
    );
  }
}

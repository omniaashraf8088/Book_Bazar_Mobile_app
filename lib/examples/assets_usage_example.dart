import 'package:flutter/material.dart';
import '../core/utils/app_assets.dart';

class ExampleAssetsUsage extends StatelessWidget {
  const ExampleAssetsUsage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Assets Example'),
        leading: Image.asset(AppAssets.menuFillIconBar),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // Using onboarding images
            Image.asset(AppAssets.onboarding1, height: 200, fit: BoxFit.cover),
            const SizedBox(height: 16),

            // Using icons in a row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(AppAssets.homeFillIconBar, width: 32, height: 32),
                Image.asset(AppAssets.searchIcon, width: 32, height: 32),
                Image.asset(AppAssets.cartFillIconBar, width: 32, height: 32),
                Image.asset(
                  AppAssets.profileFillIconBar,
                  width: 32,
                  height: 32,
                ),
              ],
            ),
            const SizedBox(height: 16),

            // Display all available images
            const Text(
              'All Available Images:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),

            // Show all images in a grid
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
              ),
              itemCount: AppAssets.allAssets.length,
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      AppAssets.allAssets[index],
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return const Center(
                          child: Icon(Icons.broken_image, color: Colors.grey),
                        );
                      },
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

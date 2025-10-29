import 'package:books_bazar_app/features/home/presentation/widgets/best_vendors_section.dart';
import 'package:books_bazar_app/features/home/presentation/widgets/custom_author_details.dart';
import 'package:books_bazar_app/features/home/presentation/widgets/home_section.dart';
import 'package:books_bazar_app/features/home/presentation/widgets/special_offer_section.dart';
import 'package:books_bazar_app/features/home/presentation/widgets/top_of_week_section.dart';
import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            _buildSpecialOffersSection(),

            // Top of Week Books
            HomeSection(
              title: 'Top of Week',
              subtitle: 'See all',
              child: const TopOfWeekSection(
                text: 'The Kite Runner',
                bookCost: "14.99",
              ),
            ),

            // Best Vendors
            HomeSection(
              title: 'Best Vendors',
              subtitle: 'See all',
              spacing: 32,
              child: const BestVendorsSection(),
            ),

            // Authors
            HomeSection(
              title: 'Authors',
              subtitle: 'See all',
              bottomSpacing: 49,
              child: const CustomAuthorDetails(
                authorName: 'John Freeman',
                authorBio: 'Writer',
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSpecialOffersSection() {
    return Column(
      children: [
        const SpecialOfferSection(),
        const SizedBox(height: 27),
      ],
    );
  }
}

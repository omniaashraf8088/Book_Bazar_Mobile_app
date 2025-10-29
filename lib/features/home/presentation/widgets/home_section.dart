import 'package:books_bazar_app/features/home/presentation/widgets/custom_label_heading.dart';
import 'package:flutter/material.dart';

class HomeSection extends StatelessWidget {
  const HomeSection({
    super.key,
    required this.title,
    required this.subtitle,
    required this.child,
    this.spacing = 16,
    this.bottomSpacing = 32,
  });

  final String title;
  final String subtitle;
  final Widget child;
  final double spacing;
  final double bottomSpacing;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomLabelHeading(title: title, subtitle: subtitle),
        SizedBox(height: spacing),
        child,
        SizedBox(height: bottomSpacing),
      ],
    );
  }
}

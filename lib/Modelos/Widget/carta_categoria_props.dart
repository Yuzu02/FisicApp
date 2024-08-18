import 'package:flutter/material.dart';

class CategoryCardProps {
  final String title;
  final IconData icon;
  final VoidCallback onTap;

  const CategoryCardProps({
    required this.title,
    required this.icon,
    required this.onTap,
  });
}

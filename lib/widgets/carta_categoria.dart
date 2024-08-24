// carta_categoria.dart

import 'package:flutter/material.dart';

import '../Modelos/Widget/carta_categoria_props.dart';

class CategoryCard extends StatelessWidget {
  final CategoryCardProps props;

  const CategoryCard({
    super.key,
    required this.props,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: InkWell(
        onTap: props.onTap,
        borderRadius: BorderRadius.circular(16),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(props.icon, size: 40, color: Theme.of(context).primaryColor),
              const SizedBox(height: 12),
              Expanded(
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    props.title,
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

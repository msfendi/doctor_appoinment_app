import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final IconData icon;
  final String label;

  const CategoryItem({
    super.key,
    required this.icon,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 60.0,
          height: 60.0,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.shade300,
                blurRadius: 4.0,
                offset: const Offset(2, 2),
              ),
            ],
          ),
          child: Icon(icon, color: Colors.purple, size: 30.0),
        ),
        const SizedBox(height: 8.0),
        Text(label, style: const TextStyle(fontSize: 12.0)),
      ],
    );
  }
}

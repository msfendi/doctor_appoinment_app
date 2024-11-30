import 'package:flutter/material.dart';

class DoctorCard extends StatelessWidget {
  final String name;
  final String specialty;
  final double rating;
  final String imageUrl;

  const DoctorCard({
    super.key,
    required this.name,
    required this.specialty,
    required this.rating,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 16.0),
      width: 140.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 6.0,
            offset: const Offset(2, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius:
                const BorderRadius.vertical(top: Radius.circular(12.0)),
            child: Image.asset(imageUrl,
                height: 100.0, width: double.infinity, fit: BoxFit.cover),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const Icon(Icons.star, color: Colors.amber, size: 16.0),
                    Text(rating.toString(),
                        style: const TextStyle(fontSize: 12.0)),
                  ],
                ),
                Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
                Text(specialty,
                    style: const TextStyle(color: Colors.grey, fontSize: 12.0)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

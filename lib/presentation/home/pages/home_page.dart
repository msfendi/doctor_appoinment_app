import 'package:doctor_appoinment_app/core/styles/font_style.dart';
import 'package:flutter/material.dart';

import '../widgets/category_item.dart';
import '../widgets/doctor_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Hi, John 👋", style: Fonts.greetingText),
                  CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage('assets/images/profile.jpg'),
                  ),
                ],
              ),
              const SizedBox(height: 16.0),

              // Main Title
              const Text(
                "Keep taking\ncare of your health",
                style: Fonts.mainTitle,
              ),
              const SizedBox(height: 20.0),

              // Search Bar
              const SearchBar(),
              const SizedBox(height: 24.0),

              // Service Category
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Service Category", style: Fonts.sectionTitle),
                  Text("See All", style: Fonts.seeAllText),
                ],
              ),
              const SizedBox(height: 12.0),

              // Category List
              SizedBox(
                height: 100.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    CategoryItem(icon: Icons.medical_services, label: "Doctor"),
                    CategoryItem(icon: Icons.ac_unit_outlined, label: "Nurse"),
                    CategoryItem(icon: Icons.medication, label: "Drug"),
                    CategoryItem(icon: Icons.favorite, label: "Caregiver"),
                  ],
                ),
              ),
              const SizedBox(height: 24.0),

              // Popular Doctors
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Popular Doctors", style: Fonts.sectionTitle),
                  Text("See All", style: Fonts.seeAllText),
                ],
              ),
              const SizedBox(height: 12.0),

              // Doctor Cards
              Expanded(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: const [
                    DoctorCard(
                      name: "John Wilson",
                      specialty: "Cardiology",
                      rating: 4.8,
                      imageUrl: 'assets/images/doctor1.jpg',
                    ),
                    DoctorCard(
                      name: "Alexa Johnson",
                      specialty: "Heart Surgeon",
                      rating: 4.5,
                      imageUrl: 'assets/images/doctor2.jpg',
                    ),
                    DoctorCard(
                      name: "Tim Smith",
                      specialty: "Microbiology",
                      rating: 4.5,
                      imageUrl: 'assets/images/doctor3.jpg',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.calendar_today), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: ''),
        ],
      ),
    );
  }
}

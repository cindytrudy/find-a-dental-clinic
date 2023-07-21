import 'package:find_a_dental_clinic/ui/permission_screen/location_permission_screen.dart';
import 'package:flutter/material.dart';

import '../util/text_styles.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          children: [
          Image.asset("assets/images/search.jpg",
          fit: BoxFit.cover,
          width: double.infinity,
          height: MediaQuery
              .of(context)
              .size
              .height / 1.7),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Container(
          child: Column(
              children: [
                Text(
              "Find A Dental Clinic Near You...",
              style: GlobalTextStyles.bold(),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 50),
        InkWell(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                     LocationPermissionScreen()));
          },
          child: Container(
            height: 40,
            width: 70,
            decoration: BoxDecoration(
              color: const Color(0xFF90caf8),
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Icon(
              Icons.arrow_forward,
              color: Color(0xFF3e5a81),
            ),
          ),
        ),
        ],
      ),
    ),)
    ,
    ]
    ,
    )
    ,
    );
  }
}

import 'package:find_a_dental_clinic/screens/location_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.all(9),
          child: Column(
            children: [
              //const SizedBox(height: 14),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "SKIP",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    const SizedBox(height: 20),
                    Image.asset("assets/images/dental_woman_2.jpg"),
                    const SizedBox(height: 50),
                    const Text(
                      "Find A Dental Clinic Near You...",
                      style: TextStyle(
                        color: Color(0xFF3e5a81),
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 50),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LocationInputScreen()));
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
        ),
      ),
    );
  }
}

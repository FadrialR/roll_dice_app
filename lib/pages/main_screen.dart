import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GradientContainer(),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage('assets/images/dice-2.png'),
                      width: 140,
                      height: 140,
                    ),
                    const SizedBox(width: 20),
                    Image(
                      image: AssetImage('assets/images/dice-3.png'),
                      width: 140,
                      height: 140,
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.yellow[100],
                    foregroundColor: Colors.grey[900],
                    shadowColor: Colors.black.withOpacity(0.5),
                    elevation: 5,
                    minimumSize: const Size(150, 50),
                  ),
                  child: const Text(
                    "Roll the Dice",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xff9a9a9a),
            Color(0xffe9e9e9),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
    );
  }
}

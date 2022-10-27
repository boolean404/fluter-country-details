import 'package:countrydetails/components/app_colors.dart';
import 'package:flutter/material.dart';
import '../components/triangle_painter.dart';

class FlashScreen extends StatefulWidget {
  const FlashScreen({super.key});

  @override
  State<FlashScreen> createState() => _FlashScreenState();
}

class _FlashScreenState extends State<FlashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var applicationName = "Country Details";
    return Scaffold(
      body: Stack(children: [
        CustomPaint(
          painter: TrianglePainter(size),
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                left: 30.0,
                top: 120,
              ),
              child: Text(
                applicationName,
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Center(
              child: CircleAvatar(
                radius: 50,
                backgroundImage:
                    AssetImage("assets/icons/android-icon-192x192.png"),
                // child: Image.asset("assets/icons/android-icon-96x96.png"),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation(
                AppColors.primary,
              ),
              backgroundColor: AppColors.accent,
            ),
          ],
        ),
      ]),
    );
  }
}

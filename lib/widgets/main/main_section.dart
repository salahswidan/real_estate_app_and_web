import 'package:flutter/material.dart';
import 'package:real_estate_app/screens/home_screen.dart';
import 'package:real_estate_app/widgets/main/projects.dart';
import 'package:real_estate_app/widgets/main/recommedation.dart';

import 'home_banner.dart';
import 'icon_info.dart';

class MainSection extends StatelessWidget {
  const MainSection({super.key});

  @override
  Widget build(BuildContext context) {
    return HomeScreen(
      mainSection: SingleChildScrollView(
        child: Column(
          children: [
            HomeBanner(),
            IconInfo(),
            Projects(),
            Recommedations(),
          ],
        ),
      ),
    );
  }
}

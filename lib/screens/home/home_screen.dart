import 'package:flutter/material.dart';
import 'package:jose_ortega_portfolio/screens/home/components/recomendations.dart';
import 'package:jose_ortega_portfolio/screens/main/main_screen.dart';

import 'components/home_banner.dart';
import 'components/my_projects.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MainScreen(
      children: [
        HomeBanner(),
        MyProjects(),
        Recommendations(),
      ],
    );
  }
}
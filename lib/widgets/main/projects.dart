import 'package:flutter/material.dart';
import 'package:real_estate_app/constants.dart';
import 'package:real_estate_app/models/project.dart';
import 'package:real_estate_app/responsive.dart';
import 'package:real_estate_app/widgets/main/project_card.dart';

class Projects extends StatelessWidget {
  const Projects({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Our Projects',
          style: Theme.of(context).textTheme.bodySmall,
        ),
        Resonsive(
          disktop: bulidGrildView(
            itemCount: demoProjects.length,
            crossAxsitCount: 3,
            childAspectRatio: 0.75,
            itemBulider: (context, index) => ProjectCard(
              project: demoProjects[index],
            ),
          ),
          mobile: bulidGrildView(
            itemCount: demoProjects.length,
            crossAxsitCount: 1,
            childAspectRatio: 0.75,
            itemBulider: (context, index) => ProjectCard(
              project: demoProjects[index],
            ),
          ),
          tablet: bulidGrildView(
            itemCount: demoProjects.length,
            crossAxsitCount: MediaQuery.of(context).size.width < 900 ? 2 : 3,
            childAspectRatio: 0.75,
            itemBulider: (context, index) => ProjectCard(
              project: demoProjects[index],
            ),
          ),
          mobileLarge: bulidGrildView(
            itemCount: demoProjects.length,
            crossAxsitCount: 2,
            childAspectRatio: 0.75,
            itemBulider: (context, index) => ProjectCard(
              project: demoProjects[index],
            ),
          ),
        ),
      ],
    );
  }
}

GridView bulidGrildView({
  required int itemCount,
  required int crossAxsitCount,
  required double childAspectRatio,
  required IndexedWidgetBuilder itemBulider,
}) {
  return GridView.builder(
    // to make 6 cards to print our projects
    shrinkWrap: true,

    itemCount: itemCount,
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxsitCount,
        childAspectRatio: childAspectRatio,
        crossAxisSpacing: kDefaultPadding,
        mainAxisSpacing: kDefaultPadding),

    itemBuilder: itemBulider,
  );
}

import 'package:flutter/material.dart';
import 'package:real_estate_app/constants.dart';
import 'package:real_estate_app/responsive.dart';

class IconInfo extends StatelessWidget {
  const IconInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kDefaultPadding * 3),
      child: Resonsive.isMobileLarge(context)
          ? Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: BuildIconInfo(
                          context: context,
                          icon: Icons.supervisor_account,
                          text: '67+',
                          label: 'Clients'),
                    ),
                    Expanded(
                      child: BuildIconInfo(
                          context: context,
                          icon: Icons.location_on,
                          text: '139+',
                          label: 'Projects'),
                    ),
                  ],
                ),
                SizedBox(
                  height: kDefaultPadding * 3,
                ),
                Row(
                  children: [
                    Expanded(
                      child: BuildIconInfo(
                          context: context,
                          icon: Icons.public,
                          text: '30+',
                          label: 'Countries'),
                    ),
                    Expanded(
                      child: BuildIconInfo(
                          context: context,
                          icon: Icons.star,
                          text: '13+',
                          label: 'Stars'),
                    ),
                  ],
                ),
              ],
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BuildIconInfo(
                    context: context,
                    icon: Icons.supervisor_account,
                    text: '67+',
                    label: 'Clients'),
                BuildIconInfo(
                    context: context,
                    icon: Icons.location_on,
                    text: '139+',
                    label: 'Projects'),
                BuildIconInfo(
                    context: context,
                    icon: Icons.public,
                    text: '30+',
                    label: 'Countries'),
                BuildIconInfo(
                    context: context,
                    icon: Icons.star,
                    text: '13+',
                    label: 'Stars'),
              ],
            ),
    );
  }
}

Column BuildIconInfo(
    {required BuildContext context,
    required IconData icon,
    required String text,
    required String label}) {
  return Column(
    children: [
      Icon(
        icon,
        size: 50,
      ),
      SizedBox(
        height: 10,
      ),
      Text(
        text,
        style: Theme.of(context)
            .textTheme
            .bodySmall!
            .copyWith(color: kPrimaryColor, fontSize: 30),
      ),
      Text(
        label,
        style: Theme.of(context).textTheme.bodyMedium,
      ),
    ],
  );
}

import 'package:flutter/material.dart';
import 'package:login/src/constants/sizes.dart';
import 'package:login/src/constants/text_strings.dart';
import 'package:login/src/features/core/screens/dashboard/widgets/appbar.dart';
import 'package:login/src/features/core/screens/dashboard/widgets/banner.dart';
import 'package:login/src/features/core/screens/dashboard/widgets/categories.dart';
import 'package:login/src/features/core/screens/dashboard/widgets/search_box.dart';
import 'package:login/src/features/core/screens/dashboard/widgets/top_course.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: DashboardAppBar(textTheme: textTheme),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(paddingSize),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /// Header
              Text("Hello Mike, ", style: textTheme.bodyText2),
              Text("Explore Courses", style: textTheme.headline2),
              const SizedBox(height: dashboardPadding),
              /// Search Box
              SearchBox(textTheme: textTheme),
              const SizedBox(height: paddingSize),

              /// Categories
              Categories(textTheme: textTheme),
              const SizedBox(height: paddingSize),
              /// Banner
              BannerBox(textTheme: textTheme),
              const SizedBox(height: paddingSize),
              /// Top Course
              Text(dashboardTopCourse, style: textTheme.headline4?.apply(fontSizeFactor: 1.2)),
              TopCourse(textTheme: textTheme),
            ],
          ),
        ),
      ),
    );
  }
}






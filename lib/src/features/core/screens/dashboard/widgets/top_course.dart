import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:login/src/constants/sizes.dart';
import 'package:login/src/features/core/models/dashboard/course_model.dart';

import '../../../../../constants/colors.dart';
import '../../../../../constants/image_strings.dart';

class TopCourse extends StatelessWidget {
  const TopCourse({
    super.key,
    required this.textTheme,
  });

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    final list = CourseModel.list;
    return SizedBox(
      height: 200,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: list.length,
        itemBuilder: (_, i) => SizedBox(
          width: Get.width - paddingSize * 2,
          child: Padding(
            padding: const EdgeInsets.only(right: paddingSize),
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30), color: cardBgColor),
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                          child: Text(
                        list[i].courseTitle,
                        style: textTheme.headline4,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      )),
                      const Flexible(
                          child: Image(
                        image: AssetImage(birdFlutter),
                        height: 110,
                      ))
                    ],
                  ),
                  Row(
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          shape: const CircleBorder(),
                        ),
                        child: const Icon(Icons.play_arrow),
                      ),
                      const SizedBox(width: paddingSize),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            list[i].courseSection,
                            style: textTheme.headline4,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Text(
                            list[i].courseDescription,
                            style: textTheme.bodyText2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

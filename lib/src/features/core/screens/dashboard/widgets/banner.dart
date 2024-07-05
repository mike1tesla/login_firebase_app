import 'package:flutter/material.dart';

import '../../../../../constants/colors.dart';
import '../../../../../constants/image_strings.dart';
import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_strings.dart';

class BannerBox extends StatelessWidget {
  const BannerBox({
    super.key,
    required this.textTheme,
  });

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30), color: cardBgColor),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.bookmark),
                    Flexible(child: Image(image: AssetImage(bannerAndroid))),
                  ],
                ),
                const SizedBox(height: 30),
                Text(dashboardBannerTitle, style: textTheme.headline4, maxLines: 2, overflow: TextOverflow.ellipsis,),
                Text(dashboardBannerSubtitle, style: textTheme.bodyText2,maxLines: 1,overflow: TextOverflow.ellipsis,)
              ],
            ),
          ),
        ),
        const SizedBox(width: paddingSize),

        Expanded(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30), color: cardBgColor),
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(Icons.bookmark),
                        Flexible(child: Image(image: AssetImage(bannerAndroid))),
                      ],
                    ),
                    Text("JAVA", style: textTheme.headline4, overflow: TextOverflow.ellipsis,),
                    Text(dashboardBannerSubtitle, style: textTheme.bodyText2,overflow: TextOverflow.ellipsis,),
                  ],
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: (){},
                  style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)
                      )
                  ),
                  child: const Text(dashboardBtn),
                ),
              )
            ],
          ),
        ),

      ],
    );
  }
}

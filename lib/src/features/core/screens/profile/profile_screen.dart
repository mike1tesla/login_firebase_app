import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:login/src/constants/image_strings.dart';
import 'package:login/src/constants/sizes.dart';
import 'package:login/src/constants/text_strings.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    //Neu platform = che do dark => isDark = true
    var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios_new_outlined),
        ),
        title: Text(profile, style: Theme.of(context).textTheme.displaySmall),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(isDark ? LineAwesomeIcons.sun : LineAwesomeIcons.moon))
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(paddingSize),
          child: Column(
            children: [
              SizedBox(
                width: 120, height: 120,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: const Image(image: AssetImage(avatarProfile)),
                ),
              ),
              const SizedBox(height: paddingSize),
              Text(profileHeading,style:  Theme.of(context).textTheme.headline4),
              Text(profileSubHeading,style:  Theme.of(context).textTheme.bodyText2),
              const SizedBox(height: paddingSize),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    side: BorderSide.none,
                    shape: const StadiumBorder()
                  ),
                  child: const Text(editProfile),
                ),
              ),
              const SizedBox(height: defaultSize),
              const Divider(),
            ],
          ),
        ),
      ),
    );
  }
}

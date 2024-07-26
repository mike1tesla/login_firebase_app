import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:login/src/constants/colors.dart';
import 'package:login/src/constants/image_strings.dart';
import 'package:login/src/constants/sizes.dart';
import 'package:login/src/constants/text_strings.dart';
import 'package:login/src/features/core/screens/profile/update_profile_screen.dart';
import 'package:login/src/features/core/screens/profile/widgets/profile_menu_widget.dart';

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
              Stack(
                children: [
                  SizedBox(
                    width: 120, height: 120,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: const Image(image: AssetImage(avatarProfile)),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      width: 35, height: 35,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), color: Colors.grey[300]),
                      child: const Icon(LineAwesomeIcons.pencil_alt_solid, color: Colors.black,size: 20,),
                    ),
                  )
                ],
              ),
              const SizedBox(height: paddingSize),
              Text(profileHeading,style:  Theme.of(context).textTheme.headline4),
              Text(profileSubHeading,style:  Theme.of(context).textTheme.bodyText2),
              const SizedBox(height: paddingSize),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  onPressed: ()=> Get.to(const UpdateProfileScreen()),
                  style: ElevatedButton.styleFrom(
                    side: BorderSide.none,
                    shape: const StadiumBorder()
                  ),
                  child: const Text(editProfile),
                ),
              ),
              const SizedBox(height: defaultSize),
              const Divider(),
              const SizedBox(height: 10),

            //MENU
              ProfileMenuWidget(title: menu1, icon: LineAwesomeIcons.cog_solid, onPress: (){}),
              ProfileMenuWidget(title: menu2, icon: LineAwesomeIcons.wallet_solid, onPress: (){}),
              ProfileMenuWidget(title: menu3, icon: LineAwesomeIcons.user_check_solid, onPress: (){}),
              const Divider(),
              const SizedBox(height: 10),
              ProfileMenuWidget(title: menu4, icon: LineAwesomeIcons.info_solid, onPress: (){}),
              ProfileMenuWidget(title: menu5, icon: LineAwesomeIcons.sign_out_alt_solid, onPress: (){},endIcon: false, textColor: Colors.red,)
            ],
          ),
        ),
      ),
    );
  }
}


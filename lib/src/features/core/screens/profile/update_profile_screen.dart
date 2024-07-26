import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:login/src/constants/colors.dart';
import 'package:login/src/constants/sizes.dart';
import 'package:login/src/constants/text_strings.dart';

import '../../../../constants/image_strings.dart';

class UpdateProfileScreen extends StatelessWidget {
  const UpdateProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () => Get.back(),
          icon: const Icon(Icons.arrow_back_ios_new_outlined),
        ),
        title: Text(editProfile, style: Theme.of(context).textTheme.displaySmall),
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
                      child: const Icon(LineAwesomeIcons.camera_solid, color: Colors.black,size: 20,),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 50),
              Form(child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      label: Text(fullName),
                      prefixIcon: Icon(LineAwesomeIcons.user),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    decoration: const InputDecoration(
                      label: Text(email),
                      prefixIcon: Icon(LineAwesomeIcons.envelope),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    decoration: const InputDecoration(
                      label: Text(phoneNumber),
                      prefixIcon: Icon(LineAwesomeIcons.phone_solid),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    decoration: const InputDecoration(
                      label: Text(password),
                      prefixIcon: Icon(LineAwesomeIcons.fingerprint_solid),
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () => Get.to(const UpdateProfileScreen()),
                      child: const Text(editProfile),
                    ),
                  ),
                  const SizedBox(height: 20),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text.rich(TextSpan(
                        text: joined,
                        style: TextStyle(fontSize: 12),
                        children: [
                          TextSpan(text: joinedAt, style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12))
                        ]
                      )),
                      ElevatedButton(
                        onPressed: (){},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.redAccent.withOpacity(0.1),
                          foregroundColor: Colors.red,
                          shape: const StadiumBorder(),
                          side: BorderSide.none
                        ),
                        child: const Text(delete),
                      ),
                    ],
                  )
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:login/src/repository/authentication_repositiory/authentications_repository.dart';

import '../../../../../constants/text_strings.dart';

class DashboardAppBar extends StatelessWidget implements PreferredSizeWidget {

  const DashboardAppBar({
    super.key,
    required this.textTheme,
  });

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const Icon(Icons.menu),
      title: Text(appName, style: textTheme.headlineMedium),
      centerTitle: true,
      actions: [
        Container(
          margin: const EdgeInsets.only(top: 8, right: 10),
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.black12,
          ),
          child: IconButton(
            onPressed: () {
              AuthenticationRepository.instance.logout();
            },
            icon: const Icon(Icons.person_outline_rounded),
          ),
        ),
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(50);
}

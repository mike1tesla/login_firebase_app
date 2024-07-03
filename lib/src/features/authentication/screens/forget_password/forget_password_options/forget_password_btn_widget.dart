import 'package:flutter/material.dart';

class ForgetPasswordBtnWidget extends StatelessWidget {
  final IconData icon;
  final String titleBtn;
  final String resetVia;
  final VoidCallback onTap;

  const ForgetPasswordBtnWidget(
      {super.key,
      required this.icon,
      required this.titleBtn,
      required this.resetVia,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.grey,
        ),
        child: Row(
          children: [
            Icon(icon, size: 60),
            const SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(titleBtn, style: Theme.of(context).textTheme.titleLarge),
                Text(resetVia, style: Theme.of(context).textTheme.bodyMedium)
              ],
            ),
          ],
        ),
      ),
    );
  }
}

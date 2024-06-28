import 'package:flutter/material.dart';
import 'package:login/src/features/authentication/screens/onboarding/onboarding_screen.dart';
import 'package:login/src/features/authentication/screens/splash_screen/splash_screen.dart';
import 'package:login/src/utils/theme/theme.dart';
import 'package:get/get.dart';
void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      themeMode: ThemeMode.system,
      home: SplashScreen(),
    );
  }
}

// class AppHome extends StatelessWidget {
//   const AppHome({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Hello"),
//         leading: const Icon(Icons.ondemand_video),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {},
//         child: const Icon(Icons.add_shopping_cart),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(20),
//         child: ListView(
//           children: [
//             Text("Heading", style: Theme.of(context).textTheme.displayMedium,),
//             Text("Sub-Heading", style: Theme.of(context).textTheme.titleSmall),
//             Text("Paragraph", style: Theme.of(context).textTheme.bodyLarge),
//             ElevatedButton(
//               onPressed: () {},
//               child: const Text("Elevated Button"),
//             ),
//             OutlinedButton(
//               onPressed: () {},
//               child: const Text("Outline Button"),
//             ),
//             const Padding(
//               padding: EdgeInsets.symmetric(horizontal: 20),
//               child: Image(image: AssetImage("assets/images/books.png")),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

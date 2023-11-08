// ignore_for_file: file_names

import 'package:instagram_clone_ui/config/import.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeController homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const HomeHeader(),
          Padding(
            padding: const EdgeInsets.only(left: 8, top: 8, right: 8),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const HomeAddStories(),
                  const SizedBox(width: 12),
                  HomeStoriesList(homeController: homeController)
                ],
              ),
            ),
          ),
          const Divider(
            thickness: 2,
          ),
        ],
      ),
    );
  }
}

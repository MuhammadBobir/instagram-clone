import 'package:instagram_clone_ui/config/import.dart';

class Tabs extends StatelessWidget {
  UserProfileController controller;
    Tabs({
    super.key,
    required this.controller
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TabButton(
            icon: AppIcons.menu,
            selected: controller.select == 'menu',
            onTap: () {
              controller.clickButton('menu');
            }),
        TabButton(
            icon: AppIcons.media2,
            selected: controller.select == 'media',
            onTap: () {
              controller.clickButton('media');
            }),
        TabButton(
            icon: AppIcons.user,
            selected: controller.select == 'user',
            onTap: () {
              controller.clickButton('user');
            })
      ],
    );
  }
}
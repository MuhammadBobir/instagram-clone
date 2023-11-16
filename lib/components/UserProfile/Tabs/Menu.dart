import 'package:instagram_clone_ui/config/import.dart';

class Menu extends StatelessWidget {
  UserProfileController controller;
  Menu({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Wrap(
        spacing: 3,
        runSpacing: 3,
        children: List.generate(controller.tabImages.length, (index) {
          var item = controller.tabImages[index];
          return TabsMenuImage(item: item);
        }),
      ),
    );
  }
}

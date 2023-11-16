import 'package:instagram_clone_ui/config/import.dart';

class UserProfileController extends GetxController {
  List fovorites = [
    {"img": NetworkImages.dog, "name": "Text her"},
    {"img": NetworkImages.dog2, "name": "Text her"},
    {"img": NetworkImages.dog3, "name": "Text her"},
    {"img": NetworkImages.man, "name": "Text her"},
    {"img": NetworkImages.nature, "name": "Text her"},
    {"img": NetworkImages.woman, "name": "Text her"},
  ];
  String select = 'menu';

  clickButton(String buttonName) {
    select = buttonName;
    update();
  }

  List tabImages = [
    {"img": NetworkImages.man, "icon": null},
    {"img": NetworkImages.woman, "icon": AppIcons.media},
    {"img": NetworkImages.dog2, "icon": null},
    {"img": NetworkImages.dog, "icon": AppIcons.like},
    {"img": NetworkImages.nature, "icon": null},
    {"img": NetworkImages.dog3, "icon": AppIcons.message},
    {"img": NetworkImages.man, "icon": null},
  ];
  Widget tabsWidget(controller) {
    if (select == 'menu') {
      return Menu(controller: controller);
    } else if (select == 'media') {
      return Text("Media");
    } else {
      return Text("User");
    }
  }
}

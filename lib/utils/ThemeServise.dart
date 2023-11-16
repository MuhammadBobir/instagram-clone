import 'package:instagram_clone_ui/config/import.dart';

class ThemeService {
  //xotirani chaqirib olish
  static final box = GetStorage();

  //xotiradagi kalit so'zdagi ma'lumotni o'qib olish
  // "dark": true /false. Agar bo'lmasa false
  bool loadThemeFromBox() => box.read('dark') ?? false;

  //xotirafa ma'lumot yozish
  saveThemeToBox(bool isDarkMode) => box.write('dark', isDarkMode);

  // Temamiz mode holatini aniqlab berish
  ThemeMode get theme => loadThemeFromBox() ? ThemeMode.dark : ThemeMode.light;

  switchTheme() {
    Get.changeThemeMode(loadThemeFromBox() ? ThemeMode.light : ThemeMode.dark);
    saveThemeToBox(!loadThemeFromBox());
  }
}

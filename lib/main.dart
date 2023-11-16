import "package:instagram_clone_ui/config/import.dart";

void main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      darkTheme: Themes.dark,
      theme: Themes.light,
      themeMode: ThemeService().theme, 
      home: const SafeArea(child: MainPage()),
    );
  }
}

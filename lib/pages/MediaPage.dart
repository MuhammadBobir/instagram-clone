import 'package:instagram_clone_ui/config/import.dart';

class MediaPage extends StatefulWidget {
  const MediaPage({super.key});

  @override
  State<MediaPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MediaPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Media sahifa"),
      ),
    );
  }
}

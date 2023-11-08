// ignore_for_file: file_names

import 'package:instagram_clone_ui/config/import.dart';

// ignore: must_be_immutable
class HomeStoriesItem extends StatelessWidget {
  String img, name;
  HomeStoriesItem({
    super.key,
    required this.img,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfileImage(img: img, radius: 30,),
        Text(Helpers.cutLongText(name, 6))
      ],
    );
  }
}


// ignore_for_file: file_names

import 'package:instagram_clone_ui/config/import.dart';

class UserProfileHeader extends StatelessWidget {
  const UserProfileHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        children: [
          ProfileImage(img: NetworkImages.dog, radius: 35),
          const SizedBox(
            width: 60,
          ),
          Row(
            children: [
              Statics(text: "Posts", count: "1,234"),
              const SizedBox(
                width: 24,
              ),
              Statics(text: "Followers", count: "5,234"),
              const SizedBox(
                width: 24,
              ),
              Statics(text: "Following", count: "2,234")
            ],
          )
        ],
      ),
    );
  }
}

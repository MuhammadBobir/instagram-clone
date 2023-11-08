// ignore_for_file: file_names, must_be_immutable

import 'package:instagram_clone_ui/config/import.dart';

class Post extends StatelessWidget {
  // ignore: prefer_typing_uninitialized_variables
  var post;
  Post({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(maxWidth: 500),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 7),
            child: Row(
              children: [
                InkWell(
                    onTap: () {
                      Get.to(() => const UserProfile());
                    },
                    child: ProfileImage(img: post['profile_img'], radius: 20)),
                const SizedBox(
                  width: 8,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      post['name'],
                      style: const TextStyle(
                          fontWeight: FontWeight.w700, fontSize: 12),
                    ),
                    const Text(
                      'Sponsered',
                      style:
                          TextStyle(fontSize: 11, fontWeight: FontWeight.w400),
                    )
                  ],
                ),
                const Spacer(),
                SvgPicture.asset(AppIcons.more)
              ],
            ),
          ),
          Stack(
            children: [
              SizedBox(
                  height: 300,
                  width: double.maxFinite,
                  child: CachedNetworkImage(
                      imageUrl: post['post_img'], fit: BoxFit.cover)),
              const Positioned(
                  bottom: 10,
                  left: 10,
                  child: Icon(
                    Icons.person_pin,
                    color: Colors.white,
                    size: 40,
                  ))
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SvgPicture.asset(AppIcons.like),
                    const SizedBox(
                      width: 12,
                    ),
                    SvgPicture.asset(AppIcons.message),
                    const SizedBox(
                      width: 12,
                    ),
                    SvgPicture.asset(AppIcons.share),
                  ],
                ),
                SvgPicture.asset(AppIcons.history)
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  // ignore: prefer_interpolation_to_compose_strings
                  post['likes_count'].toString() + " Likes",
                  style: const TextStyle(
                      fontSize: 13, fontWeight: FontWeight.w700),
                ),
                const SizedBox(height: 6),
                const Text.rich(TextSpan(
                  children: [
                    TextSpan(
                        text: "Username",
                        style: TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 16)),
                    TextSpan(
                      text:
                          " Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt... more",
                    ),
                  ],
                )),
                const SizedBox(height: 6),
                Text(
                  "View all ${post['comments_count']} comments",
                  style: const TextStyle(color: Colors.grey),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

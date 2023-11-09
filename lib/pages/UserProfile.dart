// ignore_for_file: file_names

import 'package:instagram_clone_ui/config/import.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
              onPressed: () {
                Get.back();
              },
              icon: const Icon(Icons.arrow_back_ios_new)),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("username"),
              const SizedBox(
                width: 4,
              ),
              SvgPicture.asset(AppIcons.official),
            ],
          ),
          actions: [
            IconButton(onPressed: () {}, icon: SvgPicture.asset(AppIcons.ball)),
            IconButton(onPressed: () {}, icon: SvgPicture.asset(AppIcons.more)),
          ],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
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
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text("Username",
                      style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 13)), // fontFamily: "Edu"))
                  const Text("Category/Genre tex",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 13,
                          color: Colors.grey)),
                  const Text.rich(TextSpan(children: [
                    TextSpan(
                        text:
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt"),
                    TextSpan(
                        text: "#hashtag", style: TextStyle(color: Colors.blue)),
                  ])),
                  Text(
                    "Link goes here",
                    style: TextStyle(
                        color: Colors.blue.shade800,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      SizedBox(
                        height: 100,
                        width: 100,
                        child: Stack(
                          children: List.generate(3, (index) {
                            return Positioned(
                                right: 25.0 * index,
                                child: ProfileImage(
                                    img: NetworkImages.dog, radius: 15));
                          }),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Statics extends StatelessWidget {
  String count;
  String text;
  Statics({
    super.key,
    required this.text,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(count, style: const TextStyle(fontWeight: FontWeight.w700)),
        Text(text, style: const TextStyle(fontWeight: FontWeight.w400)),
      ],
    );
  }
}

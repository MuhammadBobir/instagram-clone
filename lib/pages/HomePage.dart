// ignore_for_file: file_names

import 'package:instagram_clone_ui/config/import.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeController homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const HomeHeader(),
          Padding(
            padding: const EdgeInsets.only(left: 8, top: 8, right: 8),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const HomeAddStories(),
                  const SizedBox(width: 12),
                  HomeStoriesList(homeController: homeController)
                ],
              ),
            ),
          ),
          const Divider(
            thickness: 2,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12.0, vertical: 7),
                child: Row(
                  children: [
                    ProfileImage(img: NetworkImages.dog, radius: 20),
                    const SizedBox(
                      width: 8,
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Rufless",
                          style: TextStyle(
                              fontWeight: FontWeight.w700, fontSize: 12),
                        ),
                        Text(
                          'Sponsered',
                          style: TextStyle(
                              fontSize: 11, fontWeight: FontWeight.w400),
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
                          imageUrl: NetworkImages.dog, fit: BoxFit.cover)),
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
                padding:
                    const EdgeInsets.symmetric(horizontal: 13, vertical: 10),
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
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "100 Likes",
                      style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(height: 6),
                    Text.rich(TextSpan(
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
                    SizedBox(height: 6),
                    Text(
                      "View all 16 comments",
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}

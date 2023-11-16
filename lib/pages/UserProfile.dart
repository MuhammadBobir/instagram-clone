// ignore_for_file: file_names, must_be_immutable
import 'package:instagram_clone_ui/config/import.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  List imagas = [NetworkImages.dog, NetworkImages.man, NetworkImages.woman];
  UserProfileController controller = Get.put(UserProfileController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder<UserProfileController>(
      builder: (controller) {
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
                IconButton(
                    onPressed: () {}, icon: SvgPicture.asset(AppIcons.ball)),
                IconButton(
                    onPressed: () {}, icon: SvgPicture.asset(AppIcons.more)),
              ],
            ),
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const UserProfileHeader(),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const UserProfileInfo(),
                      const SizedBox(height: 12),
                      UserProfileFollowers(imagas: imagas),
                      const SizedBox(height: 12),
                      const UserProfileActions(),
                      const SizedBox(height: 10),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                            children: List.generate(controller.fovorites.length,
                                (index) {
                          var item = controller.fovorites[index];
                          return UserProfileFovorite(
                              img: item['img'], text: item['name']);
                        })),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
// UserProfileFovorite()


import 'package:instagram_clone_ui/config/import.dart';

class UserProfileInfo extends StatelessWidget {
  const UserProfileInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
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
              text: "#hashtag",
              style: TextStyle(color: Colors.blue)),
        ])),
        Text(
          "Link goes here",
          style: TextStyle(
              color: Colors.blue.shade800,
              fontWeight: FontWeight.w700),
        ),
      ],
    );
  }
}
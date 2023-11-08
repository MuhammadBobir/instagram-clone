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
    return const SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Text("User Profile"),
          ],
        ),
      ),
    );
  }
}

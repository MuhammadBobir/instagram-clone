// ignore_for_file: file_names

import 'package:instagram_clone_ui/config/import.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(AppIcons.logo),
              const SizedBox(width: 8),
              const Icon(Icons.keyboard_arrow_down_outlined)
            ],
          ),
          // const Spacer(),
          Row(
            children: [
              SvgPicture.asset(AppIcons.like),
              const SizedBox(width: 24),
              SvgPicture.asset(AppIcons.messenger),
              const SizedBox(width: 24),
              SvgPicture.asset(AppIcons.plus),
            ],
          )
        ],
      ),
    );
  }
}
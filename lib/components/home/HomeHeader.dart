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
              SvgPicture.asset(
                AppIcons.logo,
                color: context.theme.primaryColor,
              ),
              const SizedBox(width: 8),
              const Icon(Icons.keyboard_arrow_down_outlined)
            ],
          ),
          // const Spacer(),
          Row(
            children: [
              IconButton(
                onPressed: () {
                  ThemeService().switchTheme();
                },
                icon: Icon(context.theme.primaryColor == Colors.black
                    ? Icons.dark_mode
                    : Icons.light_mode),
              ),
              SvgPicture.asset(
                AppIcons.like,
                color: context.theme.primaryColor,
              ),
              const SizedBox(width: 24),
              SvgPicture.asset(
                AppIcons.messenger,
                color: context.theme.primaryColor,
              ),
              const SizedBox(width: 24),
              SvgPicture.asset(
                AppIcons.plus,
                color: context.theme.primaryColor,
              ),
            ],
          )
        ],
      ),
    );
  }
}

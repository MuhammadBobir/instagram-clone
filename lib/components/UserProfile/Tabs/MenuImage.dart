import 'package:instagram_clone_ui/config/import.dart';

class TabsMenuImage extends StatelessWidget {
  var item;
  TabsMenuImage({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: MediaQuery.sizeOf(context).width * 0.32,
          height: 120,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: CachedNetworkImageProvider(item['img']),
                  fit: BoxFit.cover)),
        ),
        item['icon'] == null
            ? const SizedBox()
            : Positioned(
                right: 5,
                top: 5,
                child: SvgPicture.asset(
                  item['icon'],
                  color: Colors.white,
                  width: 20,
                ))
      ],
    );
  }
}

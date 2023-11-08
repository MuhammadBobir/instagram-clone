import 'package:instagram_clone_ui/config/import.dart';

class HomeController extends GetxController {
  List stories = [
    {"img": NetworkImages.woman, "name": "sabanok"},
    {"img": NetworkImages.dog2, "name": "blue_bow"},
    {"img": NetworkImages.dog3, "name": "test"},
    {"img": NetworkImages.man, "name": "David"},
    {"img": NetworkImages.nature, "name": "Jack"},
    {"img": NetworkImages.woman, "name": "Sabrina"},
    {"img": NetworkImages.dog, "name": "sabanok"},
  ];
  List posts = [
    {
      "profile_img": NetworkImages.woman,
      "post_img": NetworkImages.dog,
      "name": "Ruffles",
      "likes_count": 100,
      "username": "Username",
      "description":
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt... more",
      "comments_count": 16,
    },
    {
      "profile_img": NetworkImages.dog3,
      "post_img": NetworkImages.dog2,
      "name": "Ruffles name",
      "likes_count": 234,
      "username": "Username",
      "description": "Birnarsalar sddsdsdsadasds",
      "comments_count": 16,
    },
    {
      "profile_img": NetworkImages.man,
      "post_img": NetworkImages.woman,
      "name": "Name Ruffles",
      "likes_count": 55,
      "username": "Username",
      "description": "Birnarsalar sddsdsdsadasds",
      "comments_count": 16,
    }
  ];
}

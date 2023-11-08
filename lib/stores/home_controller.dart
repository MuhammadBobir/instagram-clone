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
  List post = [
    {
      "profile_img": NetworkImages.woman,
      "post_img": NetworkImages.dog,
      "name": "Ruffles",
      "likes_count": 100,
      "username": "Username",
      "description": "Birnarsalar sddsdsdsadasds",
      "comments_count": 16,
    },
    {
      "profile_img": NetworkImages.dog3,
      "post_img": NetworkImages.dog2,
      "name": "Ruffles name",
      "likes_count": 100,
      "username": "Username",
      "description": "Birnarsalar sddsdsdsadasds",
      "comments_count": 16,
    },
    {
      "profile_img": NetworkImages.woman,
      "post_img": NetworkImages.dog,
      "name": "Name Ruffles",
      "likes_count": 100,
      "username": "Username",
      "description": "Birnarsalar sddsdsdsadasds",
      "comments_count": 16,
    }
  ];
}

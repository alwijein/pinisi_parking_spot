class SplashModel {
  String text, img;

  SplashModel({
    required this.text,
    required this.img,
  });
}

List<SplashModel> splashData = [
  SplashModel(
    text: "Selamat Datang Di TokoTok",
    img: "assets/images/splash_1.png",
  ),
  SplashModel(
    text: "Selamat Datang Di TokoTok2",
    img: "assets/images/splash_1.png",
  ),
  SplashModel(
    text: "Selamat Datang Di TokoTok3",
    img: "assets/images/splash_1.png",
  ),
];

// List<Map<String, String>> splashData = [
//     {
//       "text": "Welcome to SocialCook",
//       "image": "assets/images/splash_1.png",
//     },
//     {
//       "text": "Menyediakan berbagai resep yang enak",
//       "image": "assets/images/splash_2.png",
//     },
//     {
//       "text":
//           "Dengan resep-resep yang tersedia \nmembuat anda menjadi idaman keluarga",
//       "image": "assets/images/splash_3.png",
//     },
//   ];

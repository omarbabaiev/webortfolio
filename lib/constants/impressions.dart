import 'package:web_portfolio/widgets/web_app.dart';

import '../widgets/contact_bottom_widget.dart';
import '../widgets/mobile_app_widget.dart';
import 'assets.dart';

var socialButtonList = [
  SocialButton("https://github.com/omarbabaiev/", ConstAssets.github),
  SocialButton("https://www.instagram.com/omarbabaiev/", ConstAssets.insta),
  SocialButton("https://www.linkedin.com/in/omar-babayev-a18236300/", ConstAssets.linkedin),
  SocialButton("https://www.linkedin.com/in/omar-babayev-a18236300/", ConstAssets.medium),
];

var allProjects = [
  MobileApp(
      ConstAssets.calCul,
      "CalCul",
      "Take control of your finances with our powerful and intuitive loan calculator app",
      "https://play.google.com/store/apps/details?id=com.omarbabayev.calcul&hl=en"
  ),
  WebApp(
      ConstAssets.webPortfolio,
      "Portfolio web site",
      "Portfolio web site with flutter web\n"
          "   ",
      "https://github.com/omarbabaiev/webortfolio"
  ),
  MobileApp(
      ConstAssets.alliance,
      "Alliance",
      "Su təmizləyən qurğular, filtlrər və ev əşyalarının satışı ",
      "https://play.google.com/store/apps/details?id=com.lezgindev.kiymetsiz_yazilar&hl=en"
  ),
  MobileApp(
      ConstAssets.vincheck,
      "Vincheck App",
      "VinCheck, users can easily obtain vital information about used cars, including accident history, mileage verification, ownership records, title information, and more",
      "https://play.google.com/store/apps/details?id=com.lezgindev.vincheck&hl=en"
  ),
  MobileApp(
      ConstAssets.stary,
      "Stary",
      "Stary bir elan yerləşdirmə və axtarış tətbiqidir ",
      "https://play.google.com/store/apps/details?id=com.lezgindev.vincheck&hl=en"
  ),
  MobileApp(
      ConstAssets.ky,
      "Kıymetsiz Yazılar",
      "Valuable sentences extracted from the three volumes (MEKTÛBÂT) of Hadrat Imam-i Rabbânî Müceddîd-i Elf-i sânî Ahmed Fârûkî Serhendi",
      "https://play.google.com/store/apps/details?id=com.lezgindev.kiymetsiz_yazilar&hl=en"
  ),
  MobileApp(
      ConstAssets.quizLeague,
      "Quiz League",
      "Flutter ilə hazırladığım futbolçu isimləri ilə əlaqədar söz oyunu",
      "https://play.google.com/store/apps/details?id=com.lezgindev.kiymetsiz_yazilar&hl=en"
  ),
  MobileApp(
      ConstAssets.gi,
      "Gözəl İslam",
      "Namaz vaxtları, təqvimlər, dini bilgilər və demək olar islam dininə aid hər şey",
      "https://play.google.com/store/apps/details?id=com.lezgindev.gozel.islam&hl=en"
  ),
  MobileApp(
      ConstAssets.dict,
      "DictEng",
      "İngilis dilində sözlərin mənası sinonim, omonim və s. detallı məlumatlar",
      "https://play.google.com/store/apps/details?id=com.lezgindev.gozel.islam&hl=en"
  ),
  MobileApp(
      ConstAssets.nv,
      "Namaz Vaxtı",
      "Azərbaycan üçün namaz vaxtları və İslam dininə aid hər şey",
      "https://play.google.com/store/apps/details?id=com.prayer_time_gi.app&hl=en"
  ),
  MobileApp(
      ConstAssets.nv_lite,
      "Namaz Vaxtı Lite",
      "Sadə namaz vaxtlarını göstərən özünə məxsus sadə və maraqlı dizaynı olan Namaz Vaxtı tətbiqi",
      "https://play.google.com/store/apps/details?id=com.lezgindev.namaz_lite&hl=en"
  ),
  MobileApp(
      ConstAssets.neobot,
      "Neobot AI chat App",
      "The AI chat app build with Flutter and Google Gemini Ai",
      "https://play.google.com/store/apps/details?id=com.lezgindev.namaz_lite&hl=en"
  ),



];

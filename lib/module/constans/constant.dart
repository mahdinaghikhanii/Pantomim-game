import 'package:flutter/material.dart';

String faPrimaryFontFamily = 'IranYekan';
const Color kpink = Color(0xFFDC9298);
const Color kwhite = Colors.white;
const Color kblack = Color(0xFF212121);
const Color kred = Color(0xFFE53935);
const Color kpurple = Color(0xFF6A1B9A);
const Color kyellow = Color(0xFFFF9800);
const Color klightgrean = Color(0xFFAFB42B);
const Color kblackappbar = Colors.black;
const Color kblue = Color(0xFF0D47A1);
const Color dialogSettingColor = Colors.white54;
//Text Style
const styleTextForSetting =
    TextStyle(color: kblack, fontWeight: FontWeight.bold, fontSize: 20);
const styleTextForDialogHowToPlay = TextStyle(
  color: kblack,
  fontSize: 15,
);
const styleTextDialogTypeOfMatch =
    TextStyle(color: kblack, fontSize: 17, fontWeight: FontWeight.bold);

const styleTextForScoreTextLost =
    TextStyle(fontSize: 38, color: kred, fontWeight: FontWeight.bold);
const backgroundDefaultScafold2 = BoxDecoration(
    gradient: LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: [Colors.white, Colors.blue]));

const backgroundDefaultScafoldForOnBoard = BoxDecoration(
    gradient: LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: [Colors.white70, Colors.blue]));

const backgroundDefaultScafold = BoxDecoration(
    gradient: LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: [Colors.white38, Colors.blue]));
const styleTextInputTextField = TextStyle(color: kwhite, fontSize: 20);

const backgroundDefaultScafoldfalseGameStyle = BoxDecoration(
    gradient: LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: [Colors.white38, Colors.red]));

//this is style for dialogSetting drowpDown Text
const dropwdownTextDialogSetting = TextStyle(color: kblack, fontSize: 20);

class Constans {
  static const double padding = 20;
  static const double smallPading = 12;
  static const double avatarRadius = 45;
  static const double kborderRadios = 20;

  static const String howtoplayDialogText1 = "بزودی";
  static const String howtoplayDialogText2 = "الیه قشنگم";
  static const String howtoplayDialogText3 = " این بخش درست میکنه :)";
  static const String myWebSiteAddres =
      "https://main--nostalgic-jennings-63dd2f.netlify.app/";

  static const String howtoPlayText =
      "بازی پانتومیم ،بازی جذاب برای جمع خانواده و دوستان در این بازی باید بدون صحبت کردن و بدون اشاره به چیزی با حرکت دست و بدن و انواع ژست های خاص کلمات یا جملاتی را برای هم تیمی هاتون نمایش بدین. هر تیمی که در زمان کمتری کلمه یا عبارت رو حدس بزنه،امتیاز بیشتری رو به دست میاره! بهتره که تعداد دور های بازی جوری باشه که هر کدام از اعضای تیم ها بتوانند در بازی شرکت کنن و حداقل یک‌عبارت رو اجرا کنن.هر تیمی که کلمات درست تر در زمان کمتری داشته اون برنده ی بازیه :)";
//language code
  // ignore: non_constant_identifier_names
  static String LANGUAGE_CODE = 'languagecode';

  //borderRadius
  static const double kBigBorderRadius = 25;
  static const kMediumBorderRadius = 20;
  static const kSmallBorderRadius = 15;
  static const kVerySmallBorderRadius = 10;
}

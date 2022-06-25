part of 'shared.dart';

Color kPrimaryColor = Color(0xFF353A5D);
Color kPrimaryLightColor = Color(0xFFA8ADE0);
const Color kSecondaryColor = Color(0xff38ABBE);
const Color kAlertColor = Color(0xffED6363);
const Color kPriceColor = Color(0xff2C96F1);
const Color kcardColor = Color(0xffECEDEF);
const Color kGreenColor = Color(0xFF51C17E);

// LinearGradient kPrimaryGradientColor = LinearGradient(
//   begin: Alignment.topLeft,
//   end: Alignment.bottomRight,
//   colors: [Color(0xFFFFA53E), Color(0xFFFF7643)],
// );

Color kScaffoldColor = Color(0xFF353A5D);
Duration kAnimationDuration = Duration(milliseconds: 250);

// constant color for text style
const Color kPrimaryTextColor = Color(0xffF1F0F2);
const Color kSecondaryTextColor = Color(0xff999999);
const Color kSubtitleTextColor = Color(0xff504F5E);
const Color kBlackColor = Color(0xff2E2E2E);

// constant color for background app
const Color kBackgroundColor1 = Color(0xff1F1D2B);
const Color kBackgroundColor2 = Color(0xff2B2937);
const Color kBackgroundColor3 = Color(0xff242231);
const Color kBackgroundColor4 = Color(0xff252836);
const Color kBackgroundColor5 = Color(0xff2B2844);

// costum text style
TextStyle primaryTextStyle = GoogleFonts.poppins(
  color: kPrimaryTextColor,
);

TextStyle secondaryTextStyle = GoogleFonts.poppins(
  color: kPrimaryTextColor,
);

TextStyle subtitleTextStyle = GoogleFonts.poppins(
  color: kPrimaryTextColor,
);

TextStyle purpleTextStyle = GoogleFonts.poppins(
  color: kPrimaryLightColor,
);

TextStyle blackTextStyle = GoogleFonts.poppins(
  color: kBlackColor,
);

FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
FontWeight semiBold = FontWeight.w600;
FontWeight bold = FontWeight.w700;

// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
const String kEmailNullError = "Email Tidak Boleh Kosong";
const String kInvalidEmailError = "Tolong Masukkan Email Dengan Benar";
const String kPassNullError = "Password Tidak Boleh Kosong";
const String kShortPassError = "Password Kurang Dari 8";
const String kMatchPassError = "Passoword Salah";
const String kNamelNullError = "Nama Tidak Boleh Kosong";
const String kNimNullError = "Nama Tidak Boleh Kosong";
const String kAddressNullError = "Alamat Tidak Boleh Kosong";
const String kIsNotAdmin = "Anda Bukan Admin Silahkan Login Di User";
const String kIsNotUser = "Anda Bukan User Silahkan Login Di Admin";

// padding
double defaultPadding = getPropertionateScreenWidht(24);

final otpInputDecoration = InputDecoration(
  contentPadding: EdgeInsets.symmetric(
    vertical: getPropertionateScreenWidht(15),
  ),
  focusColor: kPrimaryColor,
  border: InputBorder.none,
);

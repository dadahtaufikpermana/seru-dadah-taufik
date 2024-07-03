import 'package:flutter/material.dart';

class AppColor {
  //* BRAND COLOR
  static const Color primaryColor = Color(0xFF42306B);
  static const Color primaryAccent = Color(0xFF6930B4);
  static const Color accentColor1 = Color(0xFFBCCDE2);
  static const Color accentColor2 = Color(0xFFFBD460);
  static const Color accentColor3 = Color(0xFFADADAD);
  static const Color accentColor4 = Color(0xFFF72585);
  static const Color orangeColor = Color(0xFFD14124);
  static const Color secondaryColor = Color(0xFFF68A2C);
  static const Color secondaryAccent = Color(0xFFFFBA00);
  static const Color aqua = Color(0xFF31D0AA);
  static const Color blueInfo = Color(0xFFABCFFA);
  static const Color purpleAccent = Color(0xF5EFFF);
  static const Color purpleAccent2 = Color(0xF7F0FF);

  static const Color lineAppBar = Color(0xFFFFE1C2);

  //* TEXT COLOR
  static const textPrimary = Color(0xFF333333);
  static const textSecondary = Color(0xFF808080);
  static const Color forgetPinNew = Color(0xFF5D3E8A);
  static const Color textWrongPinNew = Color(0xFFE41111);

  //* SERVICE COLORS
  static const Color darkBlue = Color(0xFF2C2F4E);
  static const Color paketData = Color(0xFFED063D);
  static const Color banking = Color(0xFF16A36D);
  static const Color pln = Color(0xFFE07000);
  static const Color air = Color(0xFF75B1F2);
  static const Color bpjs = Color(0xFF726D0A);
  static const Color gojek = Color(0xFF089B39);
  static const Color ecommerce = Color(0xFFE53434);
  static const Color lainnya = Color(0xFF2573D7);

  //* BODY OR TEXT COLOR
  static const MaterialColor bodyColor = MaterialColor(
    _bodyColorValue,
    <int, Color>{
      50: Color(0xFFFFFFFF),
      100: Color(0xFFFAFAFA),
      200: Color(0xFFE1E1E1),
      300: Color(0xFFC7C7C7),
      400: Color(0xFFAEAEAE),
      500: Color(0xFF949494),
      600: Color(0xFF787878),
      700: Color(0xFF5c5c5c),
      800: Color(0xFF404040),
      900: Color(0xFF242424),
    },
  );
  static const int _bodyColorValue = 0xFF242424;




  static const Map<int, Color> color = {
    50: Color.fromRGBO(136, 14, 79, .1),
    100: Color.fromRGBO(136, 14, 79, .2),
    200: Color.fromRGBO(136, 14, 79, .3),
    300: Color.fromRGBO(136, 14, 79, .4),
    400: Color.fromRGBO(136, 14, 79, .5),
    500: Color.fromRGBO(136, 14, 79, .6),
    600: Color.fromRGBO(136, 14, 79, .7),
    700: Color.fromRGBO(136, 14, 79, .8),
    800: Color.fromRGBO(136, 14, 79, .9),
    900: Color.fromRGBO(136, 14, 79, 1),
  };

  //GRADIENT
  static const LinearGradient gradientPrimaryTop = LinearGradient(
    colors: [
      primaryColor,
      primaryAccent,
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  static const LinearGradient gradientSecondaryTop = LinearGradient(
    colors: [
      secondaryColor,
      secondaryAccent,
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  static const LinearGradient gradientPrimaryLeft = LinearGradient(
    colors: [
      primaryColor,
      primaryAccent,
    ],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );

  static const LinearGradient gradientSecondaryLeft = LinearGradient(
    colors: [
      secondaryColor,
      secondaryAccent,
    ],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );

  static const LinearGradient gradientButtonNew = LinearGradient(
    colors: [
      Color(0xFFFBA930),
      Color(0xFFF5892B),
      Color(0xFFF06726),
    ],
    begin: Alignment.centerRight,
    end: Alignment.centerLeft,
  );

  static const LinearGradient gradientLineAppBar = LinearGradient(
    colors: [
      Color(0xFFF06726),
      Color(0xFFF68A2C),
      Color(0xFFFBA931),
    ],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
  );
}

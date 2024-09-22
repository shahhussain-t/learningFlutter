import 'package:flutter/material.dart';

Color primary = const Color(0xff687daf);

class AppStyles {
  static Color primaryColor = primary;
  static Color textColor = const Color(0xff3b3b3b);
  static Color bgColor =const Color(0xffeeedf2);
  static Color ticketBlue = const Color(0xff526799);
  static Color tickeOrange =const Color(0XFFF37B67);

  static TextStyle textStyle= TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w500,
    color: textColor
  );


  static TextStyle headLineStyle1 =TextStyle(
    fontSize: 26,
     fontWeight: FontWeight.bold, 
     color: textColor
     );
  static TextStyle headLineStyle2 = const TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.w500,
  );

    static TextStyle headLineStyle3 = TextStyle(
    fontSize: 21,
    fontWeight: FontWeight.bold,
    color: textColor
  );



  static TextStyle errorText =const TextStyle(
    color: Colors.red,
    fontSize: 14,
    fontWeight: FontWeight.w400
  );
    static TextStyle sucessText =const TextStyle(
    color: Colors.green,
    fontSize: 14,
    fontWeight: FontWeight.w400
  );
}

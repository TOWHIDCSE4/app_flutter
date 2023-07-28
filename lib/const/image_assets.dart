class ImageAssets {
  const ImageAssets._();

  //::::::::::::::::::::::::::::::: Image ASSETS :::::::::::::::::::::::::::::::
  static String get imgCard => 'card'.png;
  static String get imgFrontCard => 'front_card'.png;
  static String get imgBackCard => 'back_card'.png;
  static String get imgCaptureImage => 'capture_image'.png;
  static String get tickCircle => 'tick_circle'.png;

  //::::::::::::::::::::::::::::::: ICON ASSETS ::::::::::::::::::::::::::::::::
  static String get editIcon => 'edit_icon'.svg;
  static String get profileCamera => 'profile_camera'.svg;
  static String get icTick => 'tick'.svg;
  static String get icCross => 'cross'.svg;
  static String get curvedButton => 'curved_button'.svg;
}

extension on String {
  String get png => 'assets/images/$this.png';
  String get svg => 'assets/images/$this.svg';
}

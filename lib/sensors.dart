import 'package:soil_test/tabs/first_tab.dart';

class Sensors {
  int moisture(int moistureLevel) {
    if (moistureLevel >= 0 && moistureLevel <= 175) {
      moistureLevel = 2;
      return moistureLevel;
    } else if (moistureLevel >= 175 && moistureLevel <= 350) {
      moistureLevel = 4;
      return moistureLevel;
    } else if (moistureLevel >= 350 && moistureLevel <= 525) {
      moistureLevel = 6;
      return moistureLevel;
    } else if (moistureLevel >= 525 && moistureLevel <= 700) {
      moistureLevel = 8;
      return moistureLevel;
    } else {
      moistureLevel = 1;
      return moistureLevel;
    }
  }

  String ldr(String light) {
    return '1';
  }

  int rainDrop(int rainDropLevel) {
    if (rainDropLevel >= 0 && rainDropLevel <= 175) {
      return 2;
    } else if (rainDropLevel >= 175 && rainDropLevel <= 350) {
      return 4;
    } else if (rainDropLevel >= 350 && rainDropLevel <= 525) {
      return 6;
    } else if (rainDropLevel >= 525 && rainDropLevel <= 700) {
      return 8;
    } else {
      return 1;
    }
  }
}

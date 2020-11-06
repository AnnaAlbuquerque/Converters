
import 'package:flutter_modular/flutter_modular.dart';

class TemperatureScreenBloc {

  TemperatureNavigation (String option){

     switch (option) {
      
      case 'Celsius - Fahrenheit': {
        Modular.to.pushNamed('/temperature/celsius-fahrenheit');
      }
      break;

      default: {}
      break;

    }
  }

}
import 'package:conversor/src/utils/utils.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeScreenBloc {

  HomeScreenBloc();

  HomeNavigation(String option){
    switch (option) {
      
      case 'Temperature': {
        Modular.to.pushNamed('/temperature');
      }
      break;

      case 'Distance' :{}
      break;

      default: {}
      break;

    }
  }

}
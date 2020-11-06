import 'package:conversor/src/converters/celsius_fahrenheit.dart';
import 'package:conversor/src/models/celsius.dart';
import 'package:conversor/src/models/fahrenheit.dart';
import 'package:conversor/src/models/temperature.dart';

class CelsiusFahrenheitBloc {
  

  double Convert(String type, double val){

    if (type == 'Celsius'){
      var cel = Celsius(val);
      var temperature = CelsiusFahrenheitConverter(temp:cel);
      var fah = temperature.Converter();
      
      return fah.value;

    }
    
    if (type == 'Fahrenheit'){
      var fah = Fahrenheit(val);
      var temperature = CelsiusFahrenheitConverter(temp:fah);
      var cel = temperature.Converter();

      return cel.value;

    }

    else {
      return null;
    }
  }

}
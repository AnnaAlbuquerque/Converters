
import 'package:conversor/src/exceptions/converter_exception.dart';
import 'package:conversor/src/models/celsius.dart';
import 'package:conversor/src/models/fahrenheit.dart';
import 'package:conversor/src/models/temperature.dart';

class CelsiusFahrenheitConverter{

  Temperature temp; 
  CelsiusFahrenheitConverter({this.temp});

  Temperature Converter() {
    if (temp is Celsius){
      return ConvertCelsiusFahrenheit(temp);
    }else if (temp is Fahrenheit){
      ConvertFahrenheitCelsius(temp);
    }else{
      throw ConverterException();
    }
  }

  Fahrenheit ConvertCelsiusFahrenheit(Temperature cel){
    Fahrenheit fa = Fahrenheit((cel.value * 1.8) + 32);
    return (fa);
  }

  Celsius ConvertFahrenheitCelsius (Temperature fah){
    Celsius cel = Celsius((fah.value - 32)/1.8);
    return cel;
  }

}
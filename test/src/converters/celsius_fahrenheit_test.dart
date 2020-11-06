import 'package:conversor/src/converters/celsius_fahrenheit.dart';
import 'package:conversor/src/models/celsius.dart';
import 'package:conversor/src/models/fahrenheit.dart';
import 'package:flutter_test/flutter_test.dart';


main (){

  CelsiusFahrenheitConverter converter;

  var celsiusToFahrenheit = {
    //celsius:fahrenheit
    Celsius(-273.15) :Fahrenheit(-459.67),
    Celsius(0) : Fahrenheit(32),
    Celsius (30) : Fahrenheit(86),
    Celsius(100) : Fahrenheit(212),
    Celsius(300) : Fahrenheit(572),
  };

  celsiusToFahrenheit.forEach((inputCelsius, expectedFahrenheit) { 
    test("$inputCelsius C => $expectedFahrenheit F", (){
      converter = CelsiusFahrenheitConverter(temp: inputCelsius);
      expect(converter.Converter().value.toStringAsPrecision(2), expectedFahrenheit.value.toStringAsPrecision(2));
    });
  });
  
}
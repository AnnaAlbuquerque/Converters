import 'dart:math';
import 'package:conversor/src/blocs/celsius_fahrenheit_bloc.dart';
import 'package:test/test.dart';

main (){
  var bloc = CelsiusFahrenheitBloc();

  test('Check Celsius to Fahrenheit', () {
    expect(bloc.Convert('Celsius', 0.0), 32.0);
  });

  test('Check Fahrenheit to Celsius', () {
    expect (bloc.Convert('Fahrenheit', 32.0), 0.0);
  });

}
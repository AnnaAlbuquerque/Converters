import 'dart:math';

import 'package:conversor/src/exceptions/absolute_zero_exception.dart';
import 'package:conversor/src/models/celsius.dart';
import 'package:conversor/src/models/fahrenheit.dart';
import 'package:test/test.dart';

main (){
  var fahrenheit = Fahrenheit(50.0);

  test('Check freeze temperature', () {
    expect(fahrenheit.freeze, 32.0);
  });

  test('Check boil temperature', () {
    expect(fahrenheit.boil, 212.0);    
  });

  test('Check absolute zero', () {
    expect(fahrenheit.absoluteZero, -459.67);
  });

  test('Check equals function - sucess', () {
    var fah = Fahrenheit(50.0);
    expect(fahrenheit.equals(fah), true);
  }); 

  test('Check equals funtion - fail', () {
    var fah = Fahrenheit(25.0);
    expect(fahrenheit.equals(fah), false);
  });

  test('Check equals funtion when temperature given is not Fahrenheit', () {
    var cel = Celsius(25.0);
    expect(fahrenheit.equals(cel), false);
  });

  test('Check if constructor accept values bellow absolute zero', () {
    expect(() => Fahrenheit(-500), throwsA(isA<AbsoluteZeroException>()));
    
  });

}
import 'package:conversor/src/exceptions/absolute_zero_exception.dart';
import 'package:conversor/src/models/fahrenheit.dart';
import 'package:test/test.dart';
import 'package:conversor/src/models/celsius.dart';

void main (){
  final celsius = Celsius(50.0);

  test("Check freeze temperature", (){
    expect(celsius.freeze, 0);
  });

  test("Check boil temperature", (){
    expect(celsius.boil, 100);
  });

  test("Check absolute zero", (){
    expect(celsius.absoluteZero, -273.15);
  });

  test("Check equals function - sucess", (){
    var cel = Celsius(50.0);
    print("Valor da variável ${celsius.value} e valor da segunda variável ${cel.value}");
    expect(celsius.equals(cel), true);                       
  });

  test("Check equals function - fail", (){
    var cel = Celsius(60.0);
    expect(celsius.equals(cel), false);
  });

  test("Check equals function when temperature given ins't celsius", (){
    var fah = Fahrenheit(10.0);
    expect(celsius.equals(fah), false);
  });

  test('Check if constructor accept values bellow absolute zero', () {
    expect(() => Celsius (-300), throwsA(isA<AbsoluteZeroException>()));
    
  });

}
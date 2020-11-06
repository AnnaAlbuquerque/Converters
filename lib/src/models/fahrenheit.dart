import 'package:conversor/src/exceptions/absolute_zero_exception.dart';
import 'package:conversor/src/models/temperature.dart';

class Fahrenheit extends Temperature {

  double value;
  double freeze = 32;
  double boil = 212;
  double absoluteZero = -459.67;

  Fahrenheit(double value){
    if (value < absoluteZero){
      throw AbsoluteZeroException();
    }else{
      this.value = value;
    }
  }

  @override
  String toString(){
    return  "${this.value} F";
  }

  @override
  bool equals(Temperature temp) {
    if (temp is Fahrenheit){
      return temp.value == this.value;
    } else{
      return false;
    }
  }

}
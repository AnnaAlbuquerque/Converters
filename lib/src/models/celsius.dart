import 'package:conversor/src/exceptions/absolute_zero_exception.dart';
import 'package:conversor/src/models/temperature.dart';

class Celsius extends Temperature{

  double value;
  double freeze = 0;
  double boil = 100;
  double absoluteZero = -273.15;

  Celsius( double value){
    if (value < absoluteZero){
      throw AbsoluteZeroException();
    }else{
      this.value = value;
    }
  }

  @override
  String toString(){
    return  "${this.value} C";
  }

  @override
  bool equals(Temperature temp) {
    if (temp is Celsius){
      return temp.value == this.value;
    }else{
      return false;
    }
  } 

}
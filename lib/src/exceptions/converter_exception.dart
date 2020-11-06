
class ConverterException implements Exception {
  String _message = "Not possible to convert";

  ConverterException();

  String get message {return _message;}
}

class AbsoluteZeroException implements Exception{
  String _message = "Temperature bellow absolute zero";

  AbsoluteZeroException();

  String get message {return this._message;}
} 
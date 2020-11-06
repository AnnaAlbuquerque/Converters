 import 'package:conversor/src/app.dart';
import 'package:conversor/src/blocs/celsius_fahrenheit_bloc.dart';
import 'package:conversor/src/blocs/home_screen_bloc.dart';
import 'package:conversor/src/blocs/temperature_screen_bloc.dart';
import 'package:conversor/src/ui/celsius-fahrenheit/celsius_fahrenheit_screen.dart';
import 'package:conversor/src/ui/home/home_screen.dart';
import 'package:conversor/src/ui/temperature/temperature_screen.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AppModule extends MainModule {
  @override
  // TODO: implement binds
  List<Bind> get binds => [
    Bind((_) => HomeScreenBloc()),
    Bind((_) => TemperatureScreenBloc()),
    Bind((_) => CelsiusFahrenheitBloc()),
  ];

   @override
  // TODO: implement routers
  List<ModularRouter> get routers => [
    ModularRouter('/', child: (_, args) => HomeScreen(), transition: TransitionType.rightToLeft),
    ModularRouter('/temperature', child: (_,__) => TemperatureScreen(), transition: TransitionType.rightToLeft),
    ModularRouter('/temperature/celsius-fahrenheit', child: (_, __) => CelsiusFahrenheitScreen(), transition: TransitionType.rightToLeft),
  ];

   @override
  Widget get bootstrap => MyApp();
  
}
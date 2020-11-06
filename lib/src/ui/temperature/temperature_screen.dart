import 'package:conversor/src/blocs/temperature_screen_bloc.dart';
import 'package:conversor/src/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class TemperatureScreen extends StatefulWidget {
  TemperatureScreen({Key key}) : super(key: key);

  @override
  _TemperatureScreenState createState() => _TemperatureScreenState();
}

class _TemperatureScreenState extends State<TemperatureScreen> {
  
  final temperatureBloc = Modular.get<TemperatureScreenBloc>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          TextUtils.TEMPERATURE_SCREEN_TITLE,
          key: ValueKey('TemperatureTitle'),
        ),
      ),
      body:ListView.separated(
        separatorBuilder: (BuildContext context, int index) => const Divider(),
        itemCount: LIST_TEMPERATURE_CONVERTERS.length,
        itemBuilder: (BuildContext context, int index){
          return ListTile(
            title: Text(LIST_TEMPERATURE_CONVERTERS[index]),
            key: ValueKey(LIST_TEMPERATURE_CONVERTERS[index]),
            onTap: (){
              temperatureBloc.TemperatureNavigation(LIST_TEMPERATURE_CONVERTERS[index]);
            },
          );
        }
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:conversor/src/utils/utils.dart';
import 'package:conversor/src/blocs/home_screen_bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final homeBloc = Modular.get<HomeScreenBloc>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          TextUtils.HOME_SCREEN_TITLE,
          key: ValueKey('HomeTitle'),
        ),
      ),
      body:ListView.separated(
        separatorBuilder: (BuildContext context, int index) => const Divider(),
        itemCount: LIST_TYPE_CONVERTERS.length,
        itemBuilder: (BuildContext context, int index){
          return ListTile(
            title: Text(LIST_TYPE_CONVERTERS[index]),
            key: ValueKey(LIST_TYPE_CONVERTERS[index]),
            onTap: (){
              homeBloc.HomeNavigation(LIST_TYPE_CONVERTERS[index]);
            },
          );
        }
      ),
    );
  }
}
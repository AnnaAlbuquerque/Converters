import 'package:conversor/src/blocs/celsius_fahrenheit_bloc.dart';
import 'package:conversor/src/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CelsiusFahrenheitScreen extends StatefulWidget {
  CelsiusFahrenheitScreen({Key key}) : super(key: key);

  @override
  _CelsiusFahrenheitScreenState createState() =>
      _CelsiusFahrenheitScreenState();
}

class _CelsiusFahrenheitScreenState extends State<CelsiusFahrenheitScreen> {
  var typeToConvert ;
  var convertedType; 
  double value;

  final controller = TextEditingController();
  final celFahBloc = Modular.get<CelsiusFahrenheitBloc>();

  @override
  @override
  void initState() { 
    super.initState();
    typeToConvert = 'Celsius';
    convertedType = 'Fahrenheit';
    value = null;
  }

  @override
  void dispose () {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(TextUtils.CELSIUS_FAHRENHEIT_TITLE),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: [
                  Text(
                    typeToConvert,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    width: 100,
                    height: 50,
                    child: TextField(
                      controller: controller,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                key: ValueKey('changePlace'),
                margin: EdgeInsets.only(top:10),
                decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  shape: BoxShape.circle
                ),
                child: IconButton(
                  key: ValueKey('iconButtonChangePlace'),
                  color: Colors.white,
                  iconSize: 30,
                  icon: Icon(Icons.compare_arrows), 
                  onPressed: () {
                    setState(() {
                      var aux = typeToConvert;
                      typeToConvert = convertedType;
                      convertedType = aux;

                      value = null;
                    });
                  }
                ),
              ),
                Column(
                children: [
                  Text(
                    convertedType,
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                    
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 100,
                    height: 50,
                    child: Center(
                      child: Text(
                        (value == null) ? 'value' : value.toString(),
                        style: TextStyle(
                          fontSize: 17,
                        ) ,
                      ),
                    ),
                  ),
                ],
              ),
            ]
          ),
          SizedBox(height: 50),
          ElevatedButton(
            key: ValueKey('Convert'),
            autofocus: false,
            onPressed:(){
              setState(() {
                value =  celFahBloc.Convert(typeToConvert, double.parse(controller.text));
              });
            },
            child: Text(
              'Convert',
              style: TextStyle(fontSize: 15),
              ),
          ),
        ],
      ),
    );
  }
}

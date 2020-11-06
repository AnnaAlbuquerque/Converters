
import 'package:conversor/src/modules/app_module.dart';
import 'package:conversor/src/ui/temperature/temperature_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

Widget makeTestable (Widget widget) => MaterialApp(home:widget);
void main (){

  initModule(AppModule());
  testWidgets("Temperature Screen has a list of converters", (WidgetTester tester) async {

    await tester.pumpWidget(makeTestable(TemperatureScreen()));
   
    expect(find.text("Celsius - Fahrenheit"), findsOneWidget);
    expect(find.text("Distance"), findsNothing);

  });

  testWidgets("Temperature has Temperature as AppBar title", (WidgetTester tester) async {

    await tester.pumpWidget(makeTestable(TemperatureScreen()));
    
    expect(find.text("Temperature"), findsOneWidget);

  });

  testWidgets("Temperature has one ListTile", (WidgetTester tester) async {

    await tester.pumpWidget(makeTestable(TemperatureScreen()));
    
    var listTile = find.byType(ListTile);
    expect(listTile, findsNWidgets(1));

  });
}
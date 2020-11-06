
import 'dart:math';
import 'package:conversor/src/app.dart';
import 'package:conversor/src/modules/app_module.dart';
import 'package:conversor/src/ui/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

Widget makeTestable (Widget widget) => MaterialApp(home:widget);
void main (){

  initModule(AppModule());
  testWidgets("Home Screen has a list of type of converters", (WidgetTester tester) async {

    await tester.pumpWidget(makeTestable(HomeScreen()));
   
    expect(find.text("Temperature"), findsOneWidget);
    expect(find.text("Distance"), findsOneWidget);
    expect(find.text("Celsius - Fahrenheit"), findsNothing);

  });

  testWidgets("Home Screen has Converter as AppBar title", (WidgetTester tester) async {

    await tester.pumpWidget(makeTestable(HomeScreen()));
    
    expect(find.text("Converter"), findsOneWidget);

  });

  testWidgets("Home Screen has two ListTile", (WidgetTester tester) async {

    await tester.pumpWidget(makeTestable(HomeScreen()));
    
    var listTile = find.byType(ListTile);
    expect(listTile, findsNWidgets(2));

  });
}
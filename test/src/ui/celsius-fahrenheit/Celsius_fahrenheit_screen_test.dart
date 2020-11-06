
import 'package:conversor/src/modules/app_module.dart';
import 'package:conversor/src/ui/celsius-fahrenheit/celsius_fahrenheit_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

Widget makeTestable (Widget widget) => MaterialApp(home:widget);
void main (){

  initModule(AppModule());
  
  testWidgets("CelsiusFahrenheitScreen has Celsius - Fahrenheit as AppBar title", (WidgetTester tester) async {

    await tester.pumpWidget(makeTestable(CelsiusFahrenheitScreen()));
    expect(find.text("Celsius - Fahrenheit"), findsOneWidget);

  });

  testWidgets("Field to Celsius information", (WidgetTester tester) async {

    await tester.pumpWidget(makeTestable(CelsiusFahrenheitScreen()));

    expect(find.text("Celsius"), findsOneWidget);
    expect(find.byType(TextField), findsOneWidget);

  });

  //Rever
  testWidgets("Icon Button to change Converter", (WidgetTester tester) async {

    await tester.pumpWidget(makeTestable(CelsiusFahrenheitScreen()));

    var testKey = Key('changePlace');
    final Finder containerFinder = find.byKey(testKey);
    expect(containerFinder, findsOneWidget);

    testKey = Key('iconChangePlace');
    final Finder iconFinder = find.byKey(testKey);
    expect(iconFinder, findsOneWidget);

    //To access icon information
    final IconButton icon = tester.widget(iconFinder);
    //Verifying Icon Size
    expect(icon.iconSize, 30.0);
    //Verifying Rendered Icon
    expect(icon.icon, Icon(Icons.compare_arrows));
  });
  

}
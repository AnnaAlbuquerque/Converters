import 'package:flutter_driver/flutter_driver.dart';

import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main (){
  group('Converter App', (){
    FlutterDriver driver;

    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    tearDownAll(() async{
      if (driver != null){
        driver.close();
      }
    });

    test('Navigation: Home -> Temperature', () async{
        final tileFinder = find.byValueKey('Temperature');
        
        await driver.tap(tileFinder);

        final title = find.byValueKey("TemperatureTitle");

        expect(await driver.getText(title), 'Temperature');
    });
  });
}
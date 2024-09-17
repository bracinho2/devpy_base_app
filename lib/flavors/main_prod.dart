import 'package:devpy_base_app/flavors/flavors.dart';
import 'package:devpy_base_app/start_app.dart';

Future<void> main() async {
  Flavor.flavorType = FlavorTypes.prod;
  startApp();
}

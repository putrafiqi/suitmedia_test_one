import 'package:suitmedia_test_one/app/app.dart';
import 'package:suitmedia_test_one/bootstrap.dart';

Future<void> main() async {
  await bootstrap((dio) => App(dio: dio));
}

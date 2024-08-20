import 'package:flutter_dotenv/flutter_dotenv.dart';

class Environment {
  static String theNewsDbKey = dotenv.env['THE_NEWSAPI_KEY'] ?? 'No hay api key';
}

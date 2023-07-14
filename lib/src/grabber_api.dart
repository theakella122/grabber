import 'package:grabber/grabber.dart';
import 'package:grabber/src/sources/scribblehub_source.dart';

class Grabber {
  ISource getSourceByKey(String key) {
    switch (key) {
      case "scribblehub.com":
        return ScribblehubSource();
      default:
        return DummySource();
    }
  }
}

import 'package:grabber/grabber.dart';

class Grabber {
  ISource getSourceByKey(String key) {
    switch (key) {
      default:
        return DummySource();
    }
  }
}

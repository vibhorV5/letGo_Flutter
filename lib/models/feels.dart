import 'session.dart';

class Feelings {
  Map<String, List<Session>> feelsMap;

  Feelings(this.feelsMap);

  static generateFeels() {
    return Feelings({
      'happy': Session.happy(),
      'anxious': Session.anxious(),
      'sad': Session.sad(),
      'fine': Session.fine(),
      'excited': Session.excited(),
      'nervous': Session.nervous()
    });
  }
}

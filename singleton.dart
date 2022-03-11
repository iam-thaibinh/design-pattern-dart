class Singleton {
  Singleton._();

  static final Singleton _instance = Singleton._();

  static Singleton get instance => _instance;

  factory Singleton() {
    return _instance;
  }
}

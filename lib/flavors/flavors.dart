//FLAVORS: INSERIR SE FOR NECESSARIO;
enum FlavorTypes {
  dev,
  prod,
}

class Flavor {
  Flavor._instance();

  static late FlavorTypes flavorType;

  static String get flavorMessage {
    return switch (flavorType) {
      FlavorTypes.dev => 'Dev',
      FlavorTypes.prod => 'Prod',
    };
  }

  static String get apiBaseUrl {
    return switch (flavorType) {
      //ATUALIZAAR SE HOUVER OUTRAS FLAVORS;
      FlavorTypes.dev => 'apiUrlBaseDev',
      FlavorTypes.prod => 'apiUrlBaseProd',
    };
  }

  //ATUALIZAAR SE HOUVER OUTRAS FLAVORS;
  static bool isDevelopement() => flavorType == FlavorTypes.dev;

  static bool isProduction() => flavorType == FlavorTypes.prod;
}

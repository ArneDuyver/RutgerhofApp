class Strings {
  static const String nederlands = "nl";
  static const String english = "en";

  static Strings _instance;

  String appTitle,
      homeScreenTitle,
      infoScreenTitle,
      menuSettings,
      menuInfo,
      libraryScreenTitle,
      menuLibrary;
  List<String> menuItems;

  Strings._language(String lang) {
    appTitle = "My Own Soundboard";
    infoScreenTitle = "Info";
    menuInfo = "Info";

    if (lang == nederlands) {
      homeScreenTitle = "Hoofdscherm";
      menuSettings = "Instellingen";
      libraryScreenTitle = "Bibliotheek";
    } else {
      homeScreenTitle = "Homescreen";
      menuSettings = "Settings";
      libraryScreenTitle = "Bibliotheek";
    }

    menuLibrary = libraryScreenTitle;

    menuItems = <String>[
      menuSettings,
      menuInfo,
      menuLibrary,
    ];
  }

  static Strings getInstance({String lang}) {
    if (_instance == null) {
      if (lang == null) {
        _instance = Strings._language(lang);
      } else {
        _instance = Strings._language("en");
      }
    }
    return _instance;
  }
}

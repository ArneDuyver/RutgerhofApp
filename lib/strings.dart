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
      menuLibrary,
      addSoundfileScreenTitle;
  List<String> menuItems;

  Strings._language(String lang) {
    print(lang);
    appTitle = "My Own Soundboard";
    infoScreenTitle = "Info";
    menuInfo = "Info";

    if (lang == Strings.nederlands) {
      homeScreenTitle = "Hoofdscherm";
      menuSettings = "Instellingen";
      libraryScreenTitle = "Bibliotheek";
      addSoundfileScreenTitle = "Voeg een geluid toe";
    } else {
      homeScreenTitle = "Homescreen";
      menuSettings = "Settings";
      libraryScreenTitle = "Bibliotheek";
      addSoundfileScreenTitle = "Add a sound";
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
        _instance = Strings._language("en");
      } else {
        _instance = Strings._language(lang);
      }
    }
    return _instance;
  }
}

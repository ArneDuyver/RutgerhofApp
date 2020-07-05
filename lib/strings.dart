class Strings {
  static const String nederlands = "nl";
  static const String english = "en";

  static Strings _instance;

  String appTitle, homeScreenTitle, infoScreenTitle, menuSettings, menuInfo;
  List<String> menuItems;

  Strings._language(String lang) {
    appTitle = "My Own Soundboard";
    infoScreenTitle = "Info";
    menuInfo = "info";

    if (lang == nederlands) {
      homeScreenTitle = "Hoofdscherm";
      menuSettings = "Instellingen";
    } else {
      homeScreenTitle = "Homescreen";
      menuSettings = "Settings";
    }

    menuItems = <String>[
      menuSettings,
      menuInfo,
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

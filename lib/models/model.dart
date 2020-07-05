import 'package:my_own_soundboard/models/sound_item.dart';

class Model {
  static const String pageTitleKey = "pageTitle";
  static const String pageSoundsListKey = "pageSoundLists";

  static Model _instance;

  List<SoundItem> library;
  List<Map> pages;

  Model() {
    library = [];
    pages = [];
  }

  //TODO: delete
  static Model getExampleInstance() {
    Model example = Model();
    example.addSoundToLibrary(
        SoundItem("SoundPath 1.1", "SoundTitle la la la lalalalalala 1.1"));
    example.addSoundToLibrary(SoundItem("SoundPath 1.2", "SoundTitle 1.2"));
    example.addSoundToLibrary(SoundItem("SoundPath 2.1", "SoundTitle 2.1"));
    example.addSoundToLibrary(SoundItem("SoundPath 2.2", "SoundTitle 2.2"));
    example.addSoundToLibrary(SoundItem("SoundPath 1.2", "SoundTitle 1.2"));
    example.addSoundToLibrary(SoundItem("SoundPath 1.2", "SoundTitle 1.2"));
    example.addSoundToLibrary(SoundItem("SoundPath 1.2", "SoundTitle 1.2"));
    example.addSoundToLibrary(SoundItem("SoundPath 1.2", "SoundTitle 1.2"));
    example.addSoundToLibrary(SoundItem("SoundPath 1.2", "SoundTitle 1.2"));
    example.addSoundToLibrary(SoundItem("SoundPath 1.2", "SoundTitle 1.2"));
    example.addSoundToLibrary(SoundItem("SoundPath 1.2", "SoundTitle 1.2"));
    example.addSoundToLibrary(SoundItem("SoundPath 1.2", "SoundTitle 1.2"));
    example.addSoundToLibrary(SoundItem("SoundPath 1.2", "SoundTitle 1.2"));

    example.createNewPage("Page 1");
    example.addSoundToPage(0, example.library[0]);
    example.addSoundToPage(0, example.library[1]);
    example.addSoundToPage(0, example.library[4]);
    example.addSoundToPage(0, example.library[5]);
    example.addSoundToPage(0, example.library[6]);
    example.addSoundToPage(0, example.library[7]);
    example.addSoundToPage(0, example.library[8]);
    example.addSoundToPage(0, example.library[9]);
    example.addSoundToPage(0, example.library[10]);
    example.addSoundToPage(0, example.library[11]);
    example.addSoundToPage(0, example.library[12]);

    example.createNewPage("Page 2");
    example.addSoundToPage(1, example.library[2]);
    example.addSoundToPage(1, example.library[3]);
    return example;
  }

  void addSoundToLibrary(SoundItem soundItem) {
    library.add(soundItem);
  }

  void createNewPage(String title) {
    pages.add({
      pageTitleKey: title,
      pageSoundsListKey: [],
    });
  }

  void deletePage(int index) {
    pages.removeAt(index);
  }

  void addSoundToPage(int pageIndex, SoundItem sound) {
    pages[pageIndex][pageSoundsListKey].add(sound);
  }

  void removeSoundFromPage(int pageIndex, SoundItem sound) {
    pages[pageIndex][pageSoundsListKey].remove(sound);
  }

  void changePageName(int pageIndex, String newName) {
    pages[pageIndex][pageTitleKey] = newName;
  }
}

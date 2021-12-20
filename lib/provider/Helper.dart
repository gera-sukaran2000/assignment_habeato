import 'package:flutter/cupertino.dart';

//segregation of popular and cheela list of elements

class Model {
  final String title;
  final String imageLoc;
  bool selected;

  Model({required this.title, required this.imageLoc, this.selected = false});
}

class PopularList with ChangeNotifier {
  List<Model> popularItems = [
    Model(title: 'Veggie Poha', imageLoc: 'assets/images/Veggie Poha 1.png'),
    Model(
        title: 'Multigrain Veggie\nPaneer Sandwich',
        imageLoc: 'assets/images/Multigrain Veggie Paneer Sandwich 1.png'),
    Model(title: 'Rice Idli', imageLoc: 'assets/images/Rice Idli 1.png'),
    Model(
        title: 'Besan Veggie\nCheela',
        imageLoc: 'assets/images/Besan Veggie Cheela 1.png'),
    Model(
        title: 'Veggie Suji\nUpma',
        imageLoc: 'assets/images/Veggie Suji Upma 1.png'),
  ];

  void checkedValue(Model object) {
    object.selected = true;
    popularItems.addAll(List.generate(
        2,
        (index) => Model(
            title: 'Veggie Poha',
            imageLoc: 'assets/images/Veggie Poha 1.png')));
    notifyListeners();
  }

  void uncheckedValue(Model object) {
    object.selected = false;
    notifyListeners();
  }

  void increaseValue() {
    popularItems.addAll(List.generate(
        2,
        (index) => Model(
            title: 'Veggie Poha',
            imageLoc: 'assets/images/Veggie Poha 1.png')));
    notifyListeners();
  }
}

class CheelaList with ChangeNotifier {
  List<Model> cheelaItems = [
    Model(
        title: 'Oats and Green Moong Cheela',
        imageLoc: 'assets/images/Oats and Green Moong Cheela 1.png'),
    Model(
        title: 'Moong Dal\nVeggie Cheela',
        imageLoc: 'assets/images/Moong Dal Veggie Cheela 1.png'),
    Model(
        title: 'Oats Veggie\nCheela',
        imageLoc: 'assets/images/Oats Veggie Cheela 1.png'),
    Model(
        title: 'Suji Veggie\nCheela',
        imageLoc: 'assets/images/Suji Veggie Cheela 1.png'),
    Model(
        title: 'Besan Cheela\nwith Stuffed\nPaneer',
        imageLoc: 'assets/images/Besan Veggie Cheela 1.png'),
  ];

  void checkedValue(Model object) {
    object.selected = true;
    cheelaItems.addAll(List.generate(
        2,
        (index) => Model(
            title: 'Moong Dal Veggie Cheela',
            imageLoc: 'assets/images/Moong Dal Veggie Cheela 1.png')));
    notifyListeners();
  }

  void uncheckedValue(Model object) {
    object.selected = false;
    notifyListeners();
  }

  void increaseValue() {
    cheelaItems.addAll(List.generate(
        2,
        (index) => Model(
            title: 'Suji Veggie\nCheela',
            imageLoc: 'assets/images/Suji Veggie Cheela 1.png')));
    notifyListeners();
  }
}

import 'package:flutter/cupertino.dart';

//segregation of milk list and porridge items

class Model1 {
  final String title;
  final String imageLoc;
  bool selected;

  Model1({required this.title, required this.imageLoc, this.selected = false});
}

class PorridgeList with ChangeNotifier {
  List<Model1> porridgeItems = [
    Model1(
        title: 'Veggie Dalia\nKhichadi',
        imageLoc: 'assets/images/Veggie Dalia Khichadi 1.png'),
    Model1(
        title: 'Oats with Milk\nand Apple',
        imageLoc: 'assets/images/Oats with Milk and Apple 1.png'),
    Model1(
        title: 'Veggie Vermicelli',
        imageLoc: 'assets/images/Veggie Vermicelli 1.png'),
    Model1(
        title: 'Masala Veggie\nRolled Oats',
        imageLoc: 'assets/images/Masala Veggie Rolled Oats 1.png'),
    Model1(
        title: 'Multigrain Dalia',
        imageLoc: 'assets/images/Multigrain Dalia 1.png'),
  ];

  void checkedValue(Model1 object) {
    object.selected = true;
    porridgeItems.addAll(List.generate(
        2,
        (index) => Model1(
            title: 'Veggie Vermicelli',
            imageLoc: 'assets/images/Veggie Vermicelli 1.png')));
    notifyListeners();
  }

  void uncheckedValue(Model1 object) {
    object.selected = false;
    notifyListeners();
  }

  void increaseValue() {
    porridgeItems.addAll(List.generate(
        2,
        (index) => Model1(
            title: 'Veggie Vermicelli',
            imageLoc: 'assets/images/Veggie Vermicelli 1.png')));
    notifyListeners();
  }
}

class MilkList with ChangeNotifier {
  List<Model1> milkItems = [
    Model1(title: 'Milk', imageLoc: 'assets/images/Milk 1.png'),
    Model1(
        title: 'Cornflakes with\nMilk',
        imageLoc: 'assets/images/Cornflakes With Milk 1.png'),
    Model1(
        title: 'Buttermilk (Unsalted)',
        imageLoc: 'assets/images/Banana Shake 1.png'),
    Model1(title: 'Banana Shake', imageLoc: 'assets/images/Banana Shake 1.png'),
    Model1(
        title: 'Cold coffee made\nwith skimmed\nmilk',
        imageLoc: 'assets/images/Cold coffee made with skimmed milk 1.png'),
  ];

  void checkedValue(Model1 object) {
    object.selected = true;
    milkItems.addAll(List.generate(
        2,
        (index) => Model1(
            title: 'Buttermilk (Unsalted)',
            imageLoc: 'assets/images/Butter Milk (Unsalted) 1.png')));
    notifyListeners();
  }

  void uncheckedValue(Model1 object) {
    object.selected = false;
    notifyListeners();
  }

  void increaseValue() {
    milkItems.addAll(List.generate(
        2,
        (index) => Model1(
            title: 'Banana Shake',
            imageLoc: 'assets/images/Banana Shake 1.png')));
    notifyListeners();
  }
}

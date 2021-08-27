class FightingGame {
  //Encapsulation & Abstraction
  void hit() {
    print("You have hit the opponent");
  }

  void ko() {
    print("You ko'd your opponent");
  }
}

//Inheritance
class Fighter extends FightingGame {
  bool isStrong = true;
}

//Polymorphism
class Fatality extends FightingGame {
  void ko() {
    print("You used your Fatality move!");
  }
}

void main() {
  Fighter subzero = Fighter();
  subzero.hit();
  subzero.ko();

  Fatality killermove = Fatality();
  killermove.ko();
}

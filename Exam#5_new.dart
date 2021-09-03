//methods under the class are abstracted from the user
class MobileSuits {
  String modelName;
  String pilot;
  int _launchId = 891423;
  //_launchId is encapsulated under the class and made private because of "_"

  id() {
    return "Model Name:" + modelName + "\nPilot Name:" + pilot;
  }

  launch() {
    return "Launching!";
  }

  MobileSuits(this.modelName, this.pilot);
}

//Suit class inherits methods from MobileSuits class
class Suit extends MobileSuits {
  //Overrides certain properties from parent class
  @override
  launch() {
    return "postponing launch";
  }

  Suit(String modelName, String pilot) : super(modelName, pilot);
}

void main() {
  MobileSuits phenex = new MobileSuits("rx-03", "jonah");
  print(phenex.id());
  print(phenex.launch());
  print(MobileSuits
      ._launchId); //Cannot be printed because _launchId is private leading to an error
  Suit banshee = new Suit("rx-02", "marida");
  print(banshee.id());
  print(banshee
      .launch()); //polymorphism is exhibited here as the launch method overrided
}

import 'dart:convert';
import 'dart:io';
import 'dart:math';


void main(List<String> arguments) {
  print('Welcome to High/Low Game in Dart');
  print("What's your name ? ");

  var userName = stdin.readLineSync(encoding: utf8);

  var rndm = new Random.secure();

  var numberGenerated = rndm.nextInt(99);



  while(true){
    var nextNumberGenerate = rndm.nextInt(99) +1;

    print("my guess is : ${numberGenerated}");
    print("What's the number is High (h) or Low (l) ?");
    var userChoice = stdin.readLineSync(encoding: utf8);

    if(userChoice == "h" && nextNumberGenerate > numberGenerated){
      print(nextNumberGenerate);
      numberGenerated = nextNumberGenerate;
    }else if (userChoice == "l" && nextNumberGenerate < numberGenerated) {
      print(nextNumberGenerate);
      numberGenerated = nextNumberGenerate;
    }else if(nextNumberGenerate == numberGenerated){
      print("Yay BONUS!!!! ${numberGenerated}");
    }else {
      print("Game over!  ${numberGenerated} nexted ${nextNumberGenerate}");
      break;
    }

  }

}


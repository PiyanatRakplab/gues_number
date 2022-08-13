import 'dart:math';

class Game {
  int answer = 0; //intance field
  var count=0;
  Game() {
    var r = Random();
    answer = r.nextInt(100)+1;
    print("answer is $answer");
    //print('คำตอบคือ $answer');
  }
  int doGuess(int num) {
    count++;
    if (num > answer){
      //print('║ ➜ $guess is TOO HIGH! ▲');
      //print('╟────────────────────────────────────────');
      return 0;
    }else if (num < answer){
      //print('║ ➜ $guess is TOO LOW! ▼');
      //print('╟────────────────────────────────────────');
      return -1;
    }else {
      //print('║ ➜ $guess is CORRECT ❤️, total guesses: $guessCount');
      //print('╟────────────────────────────────────────');
      return 1;
    }
  }
}
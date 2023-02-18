import 'dart:io';

String prompt(String promptext) {
  print(promptext);
  String? answer = stdin.readLineSync()!;
  return answer;
}

double number() {
  print("Enter your number:");
  double? myNumber = double.parse(stdin.readLineSync()!);
  return myNumber;
}

void main() {
  double num1 = number();
  double num2 = number();

  while (true) {
    String op = prompt("Enter an operation ('+, -, *, /')");

    if (op == '+') {
      print("$num1 + $num2 = ");
      print(num1 + num2);
      break;
    } else if (op == '-') {
      print("$num1 - $num2 = ");
      print(num1 - num2);
      break;
    } else if (op == '*') {
      print("$num1 * $num2 = ");
      print(num1 * num2);
      break;
    } else if (op == '/') {
      print("$num1 / $num2 = ");
      print(num1 / num2);
      break;
    } else {
      print("Invalid operator, use operators provided ('+, -, *, /')");
    }
  }
}

import 'dart:io';

void countLetterA(String input) {
  int count = 0;
  for (var char in input.split('')) {
    if (char.toLowerCase() == 'a') {
      count++;
    }
  }
  print("A letra 'a' aparece $count vezes na string.");
}

void main() {
  stdout.write("Informe uma string: ");
  String input = stdin.readLineSync()!;

  countLetterA(input);
}

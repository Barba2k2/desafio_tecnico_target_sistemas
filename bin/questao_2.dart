import 'dart:io';

int countLetterA(String input) {
  int count = 0;
  for (var char in input.split('')) {
    if (char.toLowerCase() == 'a') {
      count++;
    }
  }
  return count;
}

String? readInput() {
  final input = stdin.readLineSync();
  if (input == null || input.isEmpty) return null;
  return input;
}

void main() {
  stdout.write("Informe uma string: ");
  final input = readInput();

  if (input == null) {
    stderr.writeln("Erro: entrada inválida. Por favor, informe uma string.");
    exit(1);
  }

  final count = countLetterA(input);
  print("A letra 'a' aparece $count vezes na string.");
}

import 'dart:io';

bool isFibonacci(int number) {
  if (number < 0) return false;

  int a = 0, b = 1;
  if (number == a || number == b) return true;
  int next = a + b;
  while (next <= number) {
    if (next == number) return true;
    a = b;
    b = next;
    next = a + b;
  }
  return false;
}

int? parseInput(String? input) {
  if (input == null || input.trim().isEmpty) return null;
  return int.tryParse(input.trim());
}

void main() {
  stdout.write("Informe um número: ");
  final input = stdin.readLineSync();
  final number = parseInput(input);

  if (number == null) {
    stderr.writeln("Erro: entrada inválida. Por favor, informe um número inteiro.");
    exit(1);
  }

  if (isFibonacci(number)) {
    print("$number pertence à sequência de Fibonacci.");
  } else {
    print("$number não pertence à sequência de Fibonacci.");
  }
}

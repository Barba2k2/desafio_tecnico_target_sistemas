import 'dart:io';

bool isFibonacci(int number) {
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

void main() {
  stdout.write("Informe um número: ");
  int number = int.parse(stdin.readLineSync()!);

  if (isFibonacci(number)) {
    print("$number pertence à sequência de Fibonacci.");
  } else {
    print("$number não pertence à sequência de Fibonacci.");
  }
}

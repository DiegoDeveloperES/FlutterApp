import 'package:flutter_test/flutter_test.dart';

//Algoritmo para verificar se um número é perfeito

bool isPerfect(int num) {
  if (num < 1) return false;
  int sum = 0;
  for (int i = 1; i <= num ~/ 2; i++) {
    if (num % i == 0) {
      sum += i;
    }
  }
  return sum == num;
}

// void main() {
//  group('Testes de Número perfeito', () {
//    test('Número perfeito 6', () {
//      expect(isPerfect(6), isTrue);
//    });

//    test('Número negativo não deve ser perfeito', () {
//      expect(isPerfect(-6), isFalse);
//    });
//  });
// }

//Algoritmo para calcular o fatorial de um número

int factorial(int n) {
  if (n < 0) throw ArgumentError('Número deve ser não negativo.');
  int result = 1;
  int i = n;
  while (i > 1) {
    result *= i;
    i--;
  }
  return result;
}

// void main() {
//  group('Testes de Fatorial', () {
//    test('Fatorial de 5', () {
//      expect(factorial(5), equals(120));
//    });

//    test('Fatorial de número negativo deve lançar erro', () {
//      expect(() => factorial(-3), throwsArgumentError);
//    });
//  });
// }

// Exercício para verificar se um número é primo

bool isPrime(int number) {
  if (number <= 1) return false;
  for (int i = 2; i * i <= number; i++) {
    if (number % i == 0) {
      return false;
    }
  }
  return true;
}

// Exercício para calcular a soma dos dígitos

int sumOfDigits(int number) {
  if (number < 0) throw ArgumentError('Número deve ser positivo.');
  int sum = 0;
  while (number > 0) {
    sum += number % 10;
    number ~/= 10;
  }
  return sum;
}

void main() {
  group('Testes de Número Primo', () {
    test('O número primo é 7', () {
      expect(isPrime(7), isTrue);
    });

    test('O número 10 não primo.', () {
      expect(isPrime(10), isFalse);
    });
  });

  group('Testes de Soma dos dígitos', () {
    test('A soma dos dígitos de 123 é 6.', () {
      expect(sumOfDigits(123), equals(6));
    });
    test('A soma dos dígitos de -1 não é válida.', () {
      expect(sumOfDigits(-1), throwsArgumentError);
    });
  });
}

import 'dart:io';
void main() {
// Завдання 2: Оператори порівняння
// 1) Створіть змінну number.
// 2) Перевірте:
// Чи більше число за 50.
// Чи менше число за 100.
// Чи ділиться число на 5 без залишку.
// 3) Виведіть всі результати.
{
  int number;

  while (true) {
    stdout.write('Введіть ціле число: ');
    String? input = stdin.readLineSync();

    if (input != null && int.tryParse(input) != null) {
      number = int.parse(input);
      break; 
    } else {
      print('❌ ОЙ, халепа! Зберись і згадай що таке ціле число.');
    }
  }

  bool isGreaterThan50 = number > 50;
  bool isLessThan100 = number < 100;
  int remainder = number % 5;
  bool isDivisibleBy5 = remainder == 0;

  print('Число більше за 50? $isGreaterThan50');
  print('Число менше за 100? $isLessThan100');
  print('Число ділиться на 5 без залишку? $isDivisibleBy5');
  print('Залишок від ділення числа на 5: $remainder');
}
}
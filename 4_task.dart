import 'dart:io';
void main(){
// Завдання 4: Тернарний оператор
// 1) Створіть змінну temperature.
// 2) Використайте тернарний оператор, щоб визначити:
// Якщо більше 25 — “Тепло”.
// Якщо менше або дорівнює 25 — “Прохолодно”.
// 3) Потім створіть ще один тернарний оператор:
// Якщо менше 10 — вивести “Дуже холодно”.
  stdout.write('Яка температура за вікном? ');
  String? input = stdin.readLineSync();

  if (input == null || int.tryParse(input) == null) {
    print('Будь ласка, введіть коректне значення температури.');
    return;
  }

  int temperature = int.parse(input);

  String tempDescription = temperature > 25 ? "Тепло" : (temperature <10 ? "Дуже холодно" : "Прохолодно");

  print('Опис температури: $tempDescription');
}


import 'dart:io';

void main() {
  int? dayNumber;

  while (dayNumber == null) {
    stdout.write('Введіть номер дня тижня (1-7): ');
    String? input = stdin.readLineSync();

    if (input != null) {
      int? parsed = int.tryParse(input.trim());
      if (parsed != null && parsed >= 1 && parsed <= 7) {
        dayNumber = parsed;
      } else {
        print('❌ Будь ласка, введіть ціле число від 1 до 7.');
      }
    } else {
      print('❌ Ввід не може бути порожнім.');
    }
  }

  switch (dayNumber) {
    case 1:
      print('Понеділок');
      break;
    case 2:
      print('Вівторок');
      break;
    case 3:
      print('Середа');
      break;
    case 4:
      print('Четвер');
      break;
    case 5:
      print('П’ятниця');
      break;
    case 6:
      print('Субота');
      print('Вихідний день 🎉');
      break;
    case 7:
      print('Неділя');
      print('Вихідний день 🎉');
      break;
  }
}

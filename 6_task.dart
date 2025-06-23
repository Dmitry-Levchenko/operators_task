import 'dart:io';

void main() {
  double examScore = 56;

  stdout.write('Введіть оцінку резельтату екзамену: ');
  String? input = stdin.readLineSync();

  if (input != null && input.trim().isNotEmpty) {
    double? parsed = double.tryParse(input.trim());
    if (parsed != null) {
      examScore = parsed;
    } else {
      print('Невірний формат числа, використано дефолтне значення 56.');
    }
  }

  if (examScore > 90) {
    print('Відмінно');
  } else if (examScore >= 75 && examScore <= 90) {
    print('Добре');
  } else if (examScore >= 60 && examScore <= 74) {
    print('Задовільно');
  } else {
    if (examScore < 20) {
      print('Повторити курс');
    } else {
      print('Не здано');
    }
  }
}

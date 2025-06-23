import 'dart:io';
void main() {
// Завдання 3: Логічні оператори
// 1) Створіть змінні hasMoney і isStoreOpen (типу bool).
// 2) Перевірте:
// Чи можна зробити покупку (якщо є гроші і магазин відкритий).
// Чи потрібно почекати (якщо магазин закритий або немає грошей).
// 3) Використайте оператори &&, ||, !.

  bool readBool(String prompt) {
    while (true) {
      stdout.write('$prompt (так/ні): ');
      String? input = stdin.readLineSync()?.toLowerCase();

      if (input == 'так' || input == 'т') {
        return true;
      } else if (input == 'ні' || input == 'н') {
        return false;
      } else {
        print('❌ Введіть "так" або "ні". Спробуйте ще раз.');
      }
    }
  }

  bool hasMoney = readBool('У вас є гроші?');
  bool isStoreOpen = readBool('Магазин відкритий?');

  bool canBuy = hasMoney && isStoreOpen;
  bool needToWait = !isStoreOpen || !hasMoney;

  print('Можна зробити покупку? $canBuy');
  print('Потрібно почекати? $needToWait');
}
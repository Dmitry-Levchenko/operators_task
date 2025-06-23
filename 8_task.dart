void main() {

  print('Всі числа від 1 до 10:');
  for (int i = 1; i <= 10; i++) {
    print(i);
  }

  print('\nПарні числа від 1 до 10:');
  for (int i = 2; i <= 10; i += 2) {
    print(i);
  }

  int sum = 0;
  for (int i = 1; i <= 10; i++) {
    sum += i;
  }
  print('\nСума чисел від 1 до 10: $sum');
}

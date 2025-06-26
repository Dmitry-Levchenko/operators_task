void main() {
  int number = 10;

  while (number > 0) {
    if (number % 2 == 0) {
      print('Парне число: $number');
    } else {
      print('Непарне число: $number');
    }
    number--;
  }
}

class StringCalculator {
  int add(String numbers) {
    if (numbers.isEmpty) return 0;

    final regex = RegExp('[,\n]');
    return numbers.split(regex).map(int.parse).reduce((a, b) => a + b);
  }
}

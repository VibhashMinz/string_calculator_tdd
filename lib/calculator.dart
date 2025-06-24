class StringCalculator {
  int add(String numbers) {
    if (numbers.isEmpty) return 0;

    final delimiters = [',', '\n'];
    String numberString = numbers;

    if (numbers.startsWith('//')) {
      final parts = numbers.split('\n');
      final customDelimiter = parts.first.substring(2);
      delimiters.add(customDelimiter);
      numberString = parts[1];
    }

    final regex = RegExp(delimiters.map(RegExp.escape).join('|'));
    final tokens = numberString.split(regex);
    return tokens.map(int.parse).reduce((a, b) => a + b);
  }
}

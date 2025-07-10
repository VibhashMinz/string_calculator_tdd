class StringCalculator {
  int add(String numbers) {
    if (numbers.isEmpty) return 0;

    final delimiters = [',', '\n'];
    bool isMultiply = false;
    String numberString = numbers;

    if (numbers.startsWith('//')) {
      final parts = numbers.split('\n');
      final customDelimiter = parts.first.substring(2);
      delimiters.add(customDelimiter);
      numberString = parts[1];

      if (customDelimiter == '*') {
        isMultiply = true;
      }
    }

    final regex = RegExp(delimiters.map(RegExp.escape).join('|'));
    final tokens = numberString.split(regex).where((e) => e.isNotEmpty);

    final negatives = <int>[];
    final numbersList = tokens.map((val) {
      final n = int.parse(val);
      if (n < 0) negatives.add(n);
      return n;
    }).toList();

    if (negatives.isNotEmpty) {
      throw Exception('negative numbers not allowed ${negatives.join(",")}');
    }

    return isMultiply ? numbersList.fold(1, (acc, val) => acc * val) : numbersList.fold(0, (acc, val) => acc + val);
  }
}

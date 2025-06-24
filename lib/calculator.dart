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
    final tokens = numberString.split(regex).where((e) => e.isNotEmpty);

    final negatives = [];
    final sum = tokens.fold<int>(0, (acc, val) {
      final n = int.parse(val);
      if (n < 0) negatives.add(n);
      return acc + n;
    });

    if (negatives.isNotEmpty) {
      throw Exception('negative numbers not allowed ${negatives.join(",")}');
    }

    return sum;
  }
}

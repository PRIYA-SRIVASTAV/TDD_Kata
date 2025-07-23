int add(String numbers) {

  if (numbers.isEmpty) return 0;

  RegExp customDelimiter = RegExp(r'^//(.)\n');
  String delimiters = '[,\n]';
  String body = numbers;

  if (customDelimiter.hasMatch(numbers)) {
    final match = customDelimiter.firstMatch(numbers)!;
    delimiters = '[${RegExp.escape(match.group(1)!)}]';
    body = numbers.substring(match.end);
  }

  final delimiterPattern = RegExp(delimiters);
  final parts = body.split(delimiterPattern).where((s) => s.isNotEmpty);
  final nums = parts.map(int.parse).toList();

  final negatives = nums.where((n) => n < 0).toList();
  if (negatives.isNotEmpty) {
    throw Exception('negative numbers not allowed ${negatives.join(',')}');

  }

  return nums.isEmpty ? 0 : nums.reduce((a, b) => a + b);
}

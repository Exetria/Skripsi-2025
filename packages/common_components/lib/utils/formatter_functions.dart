// CURRENCY FORMATTER
import 'package:intl/intl.dart';

final _rupiahFormatter = NumberFormat.currency(
  locale: 'id_ID',
  symbol: 'Rp. ',
  decimalDigits: 2,
);

String rupiahFormat(num value) {
  return _rupiahFormatter.format(value);
}

num? stringToNum(String value) {
  try {
    return num.parse(value);
  } catch (_) {
    return null;
  }
}

String phoneNumberFormat(String value) {
  final digitsOnly = value.replaceAll(RegExp(r'\D'), '');
  final buffer = StringBuffer();

  // Break into 4 digits
  for (int i = 0; i < digitsOnly.length; i++) {
    if (i > 0 && i % 4 == 0) {
      buffer.write('-');
    }
    buffer.write(digitsOnly[i]);
  }
  return buffer.toString();
}

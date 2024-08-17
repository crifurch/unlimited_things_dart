import 'dart:convert';

class DartEncoder extends Converter<Object?, String> {
  final String? indent;

  /// Function called on non-encodable objects to return a replacement
  /// encodable object that will be encoded in the orignal's place.
  final Object? Function(dynamic)? _toEncodable;

  const DartEncoder([Object? Function(dynamic object)? toEncodable])
      : indent = null,
        _toEncodable = toEncodable;

  const DartEncoder.withIndent(
    this.indent, [
    Object? Function(dynamic object)? toEncodable,
  ]) : _toEncodable = toEncodable;

  @override
  String convert(dynamic input) {
    var result = JsonEncoder.withIndent(indent, _toEncodable).convert(input).replaceAll('"', "'");
    if (input is Map || input is List) {
      final indexOfComma = result.lastIndexOf("'");
      if (indexOfComma != -1) {
        result = '${result.substring(0, indexOfComma + 1)},${result.substring(indexOfComma + 1)}';
      }
    }
    return result;
  }
}

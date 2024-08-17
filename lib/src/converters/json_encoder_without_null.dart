import 'dart:convert';

import 'package:unlimited_things_dart/src/converters/static/remove_null_from_encodable.dart';

mixin JsonEncoderWithoutNull {
  static JsonEncoder create() => JsonEncoder(toJsonRemoveNull);

  static JsonEncoder withIndent(String indent) =>
      JsonEncoder.withIndent(indent, toJsonRemoveNull);
}

extension SeparatedList<T> on Iterable<T> {
  List<T> separated(T Function(int index) separator) {
    final result = <T>[];
    for (var i = 0; i < length; i++) {
      result.add(elementAt(i));
      if (i != length - 1) {
        result.add(separator(i));
      }
    }
    return result;
  }
}

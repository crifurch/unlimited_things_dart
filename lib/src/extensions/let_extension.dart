extension ObjectExt<T> on T {
  R let<R>(R Function(T it) op) => op(this);
}

T? letUpdate<T>(T? source, T? update,
        [T Function(T source, T update)? transform]) =>
    update?.let(
      (from) =>
          source?.let(
            (target) => transform?.call(target, from) ?? from,
          ) ??
          from,
    ) ??
    source;

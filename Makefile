pre-publish:
	@dart run tools/generate_export.dart
	@dart format lib
publish:
	@dart pub publish

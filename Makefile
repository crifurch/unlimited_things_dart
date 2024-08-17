pre-publish:
	@dart run tool/generate_export.dart
	@dart format lib
publish:
	@dart pub publish

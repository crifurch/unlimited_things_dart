pre-publish:
	@dart run tool/generate_export.dart
	@dart fix lib
	@dart format lib
publish:
	@dart pub publish

pre-publish:
	@dart pub get
	@dart format lib
publish:
	@dart pub publish

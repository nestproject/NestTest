build:
	@swift build

test: build
	@.build/debug/spectre-build

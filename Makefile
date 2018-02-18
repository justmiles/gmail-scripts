upload: build
	gapps upload

build:
	rm -rf build && mkdir -p build
	coffee --no-header --bare --output build --compile src
	rsync -rv --exclude=*.coffee src/* build 

watch:
	inotifywait -r -m -e modify `pwd`/src | while read path _ file; do make upload; done
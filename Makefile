check: lint test

lint:
	./node_modules/.bin/biome ci

format:
	./node_modules/.bin/biome check --fix

test:
	node --test $(TEST_OPTS)

test-cov: TEST_OPTS := --experimental-test-coverage
test-cov: test

.PHONY: check format lint test test-cov

%.mo: %.po
	msgfmt $< -o $@

generate-mo: test/fixtures/latin13.mo test/fixtures/utf8.mo test/fixtures/obsolete.mo

.PHONY: generate-mo

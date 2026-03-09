#!/usr/bin/env bash
set -euo pipefail

ROOT="biblens-data"

echo "Creating directory structure..."

mkdir -p \
  "$ROOT/catalog/schema" \
  "$ROOT/resources/translations/cs/cep" \
  "$ROOT/resources/language-packs/cs/cs-core" \
  "$ROOT/resources/reference-formats/cs/czech-standard" \
  "$ROOT/docs" \
  "$ROOT/scripts"

touch \
  "$ROOT/README.md" \
  "$ROOT/LICENSE" \
  "$ROOT/SPEC.md" \
  "$ROOT/catalog/catalog.json" \
  "$ROOT/catalog/schema/catalog.schema.json" \
  "$ROOT/catalog/schema/resource-manifest.schema.json" \
  "$ROOT/resources/translations/cs/cep/manifest.json" \
  "$ROOT/resources/translations/cs/cep/text.json" \
  "$ROOT/resources/language-packs/cs/cs-core/manifest.json" \
  "$ROOT/resources/language-packs/cs/cs-core/parser.json" \
  "$ROOT/resources/language-packs/cs/cs-core/books.json" \
  "$ROOT/resources/reference-formats/cs/czech-standard/manifest.json" \
  "$ROOT/resources/reference-formats/cs/czech-standard/format.json" \
  "$ROOT/scripts/validate.mjs" \
  "$ROOT/scripts/build-catalog.mjs" \
  "$ROOT/scripts/checksums.mjs"

echo "Repository skeleton created in ./$ROOT"

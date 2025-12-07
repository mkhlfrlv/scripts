#!/bin/bash

TARGET_DIR="${1:-.}"

echo "Удаление .DS_Store файлов в: $TARGET_DIR"

find "$TARGET_DIR" -type f -name ".DS_Store" -print -delete

echo "Готово"
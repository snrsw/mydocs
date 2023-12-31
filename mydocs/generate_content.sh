#!/bin/sh
echo "=========Let's create content!!!========="

# The created date
DATE=$(date +"%Y-%m-%dT%H:%M:%S+09:00")

# The category
printf "\033[1m%s\033[m\n" "1. Enter the content category [docs/blog]."
read -r CATEGORY

if [ -z "$CATEGORY" ]; then
    echo "    The category is empty."
    exit 1
fi

if [ ! -d "./content/$CATEGORY" ]; then
    mkdir -p "./content/$CATEGORY"
fi
echo "    The category is $CATEGORY.\n"

# The Content Title
printf "\033[1m%s\033[m\n" "2. Enter the title."
read -r TITLE

if [ -z "$TITLE" ]; then
    TITLE="$DATE"
    echo "    The title is set by date."
fi

echo "    The title is $TITLE.\n"

# Sanitize title for filename
FILENAME=$(echo "$TITLE" | tr '[:upper:] ' '[:lower:]-' | sed 's/[^a-zA-Z0-9-]//g')

# Create a File
FILE_PATH="content/${CATEGORY}/${FILENAME}.md"

touch "$FILE_PATH"

echo "+++" >> "$FILE_PATH"
echo "title = \"$TITLE\"" >> "$FILE_PATH"
echo "description = \"\"" >> "$FILE_PATH"
if [ "$CATEGORY" = "blog" ]; then
    echo "date = \"$DATE\"" >> "$FILE_PATH"
    echo "updated = \"$DATE\"" >> "$FILE_PATH"
    echo "draft = true" >> "$FILE_PATH"
    echo "template = \"blog/page.html\"" >> "$FILE_PATH"
    echo "" >> "$FILE_PATH"
    echo "[taxonomies]" >> "$FILE_PATH"
    echo "authors = [\"snrsw\"]" >> "$FILE_PATH"
    echo "" >> "$FILE_PATH"
    echo "[extra]" >> "$FILE_PATH"
    echo "lead = \"\"" >> "$FILE_PATH"
else
    echo "sort_by = \"weight\"" >> "$FILE_PATH"
    echo "weight = 1" >> "$FILE_PATH"
    echo "template = \"docs/section.html\"" >> "$FILE_PATH"
fi
echo "+++" >> "$FILE_PATH"

printf "\033[32m%s\033[m\n" "$FILE_PATH is created!"
echo "================================================"

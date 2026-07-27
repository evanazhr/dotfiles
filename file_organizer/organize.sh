#!/usr/bin/env bash

# Set target directory to organize (default: current working directory)
TARGET_DIR="${1:-.}"

cd "$TARGET_DIR" || exit 1

echo "Organizing files in: $(pwd)"

# Create category folders if they do not exist yet
mkdir -p Documents Images Videos Archives Installers Code

# Loop through files to move them based on extension (skip directories)
for file in *; do
    if [ -f "$file" ]; then
        # Extract file extension in lowercase
        ext="${file##*.}"
        ext=$(echo "$ext" | tr '[:upper:]' '[:lower:]')

        # Skip this script itself if it is inside the folder
        if [ "$file" = "organize.sh" ]; then
            continue
        fi

        case "$ext" in
            pdf|doc|docx|txt|odt|xls|xlsx|ppt|pptx)
                mv "$file" Documents/
                echo "Moved to Documents: $file"
                ;;
            jpg|jpeg|png|gif|svg|webp|ico)
                mv "$file" Images/
                echo "Moved to Images: $file"
                ;;
            mp4|mkv|avi|mov|webm)
                mv "$file" Videos/
                echo "Moved to Videos: $file"
                ;;
            zip|tar|gz|bz2|xz|rar|7z)
                mv "$file" Archives/
                echo "Moved to Archives: $file"
                ;;
            deb|rpm|AppImage|iso|bin|run)
                mv "$file" Installers/
                echo "Moved to Installers: $file"
                ;;
            sh|py|js|ts|html|css|cpp|c|json)
                mv "$file" Code/
                echo "Moved to Code: $file"
                ;;
            *)
                # Create an 'Others' folder if the extension doesn't match any category above
                mkdir -p Others
                mv "$file" Others/
                echo "Moved to Others: $file"
                ;;
        esac
    fi
done

echo "Done! Files successfully organized."
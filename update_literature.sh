#!/usr/bin/env bash
# set -x
# List of URLs for each section
section1=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/LIT/1.1.oral_literature.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/LIT/1.2.poetry.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/LIT/1.3.drama.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/LIT/1.4.prose.txt"
)
section1a=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/LIT/1.1.oral_literature.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/LIT/1.2.poetry.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/LIT/1.3.drama.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/LIT/1.4.prose.ans.txt"
)
section1b=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/LIT/1.1.oral_literature.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/LIT/1.2.poetry.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/LIT/1.3.drama.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/LIT/1.4.prose.qns.txt"
)
section2=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/LIT/2.1.oral_literature.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/LIT/2.2.poetry.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/LIT/2.3.drama.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/LIT/2.4.prose.txt"
)
section2a=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/LIT/2.1.oral_literature.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/LIT/2.2.poetry.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/LIT/2.3.drama.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/LIT/2.4.prose.ans.txt"
)
section2b=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/LIT/2.1.oral_literature.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/LIT/2.2.poetry.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/LIT/2.3.drama.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/LIT/2.4.prose.qns.txt"
)
section3=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/LIT/3.1.poetry.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/LIT/3.2.drama.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/LIT/3.3.prose.txt"
)
section3a=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/LIT/3.1.poetry.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/LIT/3.2.drama.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/LIT/3.3.prose.ans.txt"
)
section3b=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/LIT/3.1.poetry.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/LIT/3.2.drama.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/LIT/3.3.prose.qns.txt"
)
section4=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/LIT/4.1.poetry.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/LIT/4.2.drama.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/LIT/4.3.prose.txt"
)
section4a=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/LIT/4.1.poetry.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/LIT/4.2.drama.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/LIT/4.3.prose.ans.txt"
)
section4b=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/LIT/4.1.poetry.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/LIT/4.2.drama.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/LIT/4.3.prose.qns.txt"
)
section5=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/LIT/literature_samples.docx"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/LIT/e_o_c_literature.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/LIT/e_o_c_literature_1.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/LIT/e_o_c_literature_1_samples_1.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/LIT/e_o_c_literature_2.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/LIT/e_o_c_literature_2_samples_1.txt"
)
# Function to download files from a list of URLs
download_files() {
    local urls=("$@")
    for url in "${urls[@]}"; do
        curl -O -L "$url" || echo -e "\n\nError fetching material for this tutorial: $url \c"
    done
}
# Download files for each section
cd Notes/Literature/ || exit
download_files "${section1[@]}"
cd - > /dev/null 2>&1 || exit
# For Class 1
mkdir -p Students/Omd/Exercise/Literature/S1/Downloads
cd Students/Omd/Exercise/Literature/S1/Downloads || exit
download_files "${section1a[@]}"
# Loop through all .txt files in the current directory
for file in *.txt; do
    # Define the similar file in the previous directory
    similar_file="../$file"
    # Check if the similar file exists in the previous directory
    if [ -f "$similar_file" ]; then
        # Compare the current file with the similar one and capture new lines
        new_lines=$(diff --new-line-format="%L" --unchanged-line-format="" "$file" "$similar_file")
        # If there are new lines, append them to the target files
        if [ -n "$new_lines" ]; then
            # Define base directory for searching
            base_directory="$HOME/Omd"
            # Find target directories to append new lines
            find "$base_directory" -type d -path "*/Exercise/Literature/S1" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Exercise/Literature/S1" ]; then
                    echo "$new_lines" >> "$target/$file"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Exercise/Literature/S1"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Exercise/Literature/S1/Downloads
mkdir -p Students/Omd/Revision/Literature/S1/Downloads
cd Students/Omd/Revision/Literature/S1/Downloads || exit
download_files "${section1b[@]}"
# Loop through all .txt files in the current directory
for file in *.txt; do
    # Define the similar file in the previous directory
    similar_file="../$file"
    # Check if the similar file exists in the previous directory
    if [ -f "$similar_file" ]; then
        # Compare the current file with the similar one and capture new lines
        new_lines=$(diff --new-line-format="%L" --unchanged-line-format="" "$file" "$similar_file")
        # If there are new lines, append them to the target files
        if [ -n "$new_lines" ]; then
            # Define base directory for searching
            base_directory="$HOME/Omd"
            # Find target directories to append new lines
            find "$base_directory" -type d -path "*/Revision/Literature/S1" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Revision/Literature/S1" ]; then
                    echo "$new_lines" >> "$target/$file"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Revision/Literature/S1"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Revision/Literature/S1/Downloads
cd Notes/Literature/ || exit
download_files "${section2[@]}"
cd - > /dev/null 2>&1 || exit
# For Class 2
mkdir -p Students/Omd/Exercise/Literature/S2/Downloads
cd Students/Omd/Exercise/Literature/S2/Downloads || exit
download_files "${section2a[@]}"
# Loop through all .txt files in the current directory
for file in *.txt; do
    similar_file="../$file"
    if [ -f "$similar_file" ]; then
        new_lines=$(diff --new-line-format="%L" --unchanged-line-format="" "$file" "$similar_file")
        if [ -n "$new_lines" ]; then
            base_directory="$HOME/Omd"
            find "$base_directory" -type d -path "*/Exercise/Literature/S2" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Exercise/Literature/S2" ]; then
                    echo "$new_lines" >> "$target/$file"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Exercise/Literature/S2"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Exercise/Literature/S2/Downloads
mkdir -p Students/Omd/Revision/Literature/S2/Downloads
cd Students/Omd/Revision/Literature/S2/Downloads || exit
download_files "${section2b[@]}"
for file in *.txt; do
    similar_file="../$file"
    if [ -f "$similar_file" ]; then
        new_lines=$(diff --new-line-format="%L" --unchanged-line-format="" "$file" "$similar_file")
        if [ -n "$new_lines" ]; then
            base_directory="$HOME/Omd"
            find "$base_directory" -type d -path "*/Revision/Literature/S2" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Revision/Literature/S2" ]; then
                    echo "$new_lines" >> "$target/$file"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Revision/Literature/S2"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Revision/Literature/S2/Downloads
cd Notes/Literature/ || exit
download_files "${section3[@]}"
cd - > /dev/null 2>&1 || exit
# For Class 3
mkdir -p Students/Omd/Exercise/Literature/S3/Downloads
cd Students/Omd/Exercise/Literature/S3/Downloads || exit
download_files "${section3a[@]}"
for file in *.txt; do
    similar_file="../$file"
    if [ -f "$similar_file" ]; then
        new_lines=$(diff --new-line-format="%L" --unchanged-line-format="" "$file" "$similar_file")
        if [ -n "$new_lines" ]; then
            base_directory="$HOME/Omd"
            find "$base_directory" -type d -path "*/Exercise/Literature/S3" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Exercise/Literature/S3" ]; then
                    echo "$new_lines" >> "$target/$file"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Exercise/Literature/S3"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Exercise/Literature/S3/Downloads
mkdir -p Students/Omd/Revision/Literature/S3/Downloads
cd Students/Omd/Revision/Literature/S3/Downloads || exit
download_files "${section3b[@]}"
for file in *.txt; do
    similar_file="../$file"
    if [ -f "$similar_file" ]; then
        new_lines=$(diff --new-line-format="%L" --unchanged-line-format="" "$file" "$similar_file")
        if [ -n "$new_lines" ]; then
            base_directory="$HOME/Omd"
            find "$base_directory" -type d -path "*/Revision/Literature/S3" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Revision/Literature/S3" ]; then
                    echo "$new_lines" >> "$target/$file"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Revision/Literature/S3"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Revision/Literature/S3/Downloads
cd Notes/Literature/ || exit
download_files "${section4[@]}"
cd - > /dev/null 2>&1 || exit
# For Class 4
mkdir -p Students/Omd/Exercise/Literature/S4/Downloads
cd Students/Omd/Exercise/Literature/S4/Downloads || exit
download_files "${section4a[@]}"
for file in *.txt; do
    similar_file="../$file"
    if [ -f "$similar_file" ]; then
        new_lines=$(diff --new-line-format="%L" --unchanged-line-format="" "$file" "$similar_file")
        if [ -n "$new_lines" ]; then
            base_directory="$HOME/Omd"
            find "$base_directory" -type d -path "*/Exercise/Literature/S4" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Exercise/Literature/S4" ]; then
                    echo "$new_lines" >> "$target/$file"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Exercise/Literature/S4"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Exercise/Literature/S4/Downloads
mkdir -p Students/Omd/Revision/Literature/S4/Downloads
cd Students/Omd/Revision/Literature/S4/Downloads || exit
download_files "${section4b[@]}"
for file in *.txt; do
    similar_file="../$file"
    if [ -f "$similar_file" ]; then
        new_lines=$(diff --new-line-format="%L" --unchanged-line-format="" "$file" "$similar_file")
        if [ -n "$new_lines" ]; then
            base_directory="$HOME/Omd"
            find "$base_directory" -type d -path "*/Revision/Literature/S4" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Revision/Literature/S4" ]; then
                    echo "$new_lines" >> "$target/$file"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Revision/Literature/S4"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Revision/Literature/S4/Downloads
# The Items
cd Students/Omd/Revision/Literature/ || exit
download_files "${section5[@]}"
mv literature_samples.docx .literature_samples.docx
for file in e_o_c_literature.txt e_o_c_literature_1.txt e_o_c_literature_1_samples_1.txt e_o_c_literature_2.txt e_o_c_literature_2_samples_1.txt; do
    hidden_file=".$file"
    if [ -f "$hidden_file" ]; then
        # Compare the current file with the hidden one and capture new lines
        new_lines=$(diff --new-line-format="%L" --unchanged-line-format="" "$file" "$hidden_file")
        # If there are new lines, append them to the target files
        if [ -n "$new_lines" ]; then
            # Define base directory for searching
            base_directory="$HOME/Omd"
            # Find target directories and append new lines
            find "$base_directory" -type d -path "*/Revision/Literature" | while read -r target; do
                # Ensure we are not appending to the source directory
                if [ "$target" != "$HOME/Omd/Students/Omd/Revision/Literature" ]; then
                    echo "$new_lines" >> "$target/$hidden_file"
                fi
            done
        fi
    fi
    # Move the current file to make it hidden
    mv "$file" "$hidden_file"
done
cd - > /dev/null 2>&1 || exit

SRC1="$HOME/Omd/Students/Omd/Exercise/Literature"
DEST1="$HOME/Omd/Exercise/Literature"
SRC2="$HOME/Omd/Students/Omd/Revision/Literature"
DEST2="$HOME/Omd/Revision/Literature"
if ! find "$DEST1" -type f -name "*.ans.txt" | grep -q .; then
  cp -r "$SRC1"/. "$DEST1" > /dev/null 2>&1
fi
if find "$DEST2" -type f -name "*.qns.txt" | grep -q .; then
  read -rp $'\n\nExisting exercise and revision files have been detected.\n\nUpdating them now may overwrite your current progress.\n\nIf you want to continue and overwrite, type "yes" or "y".\nOtherwise, press Enter to cancel: ' prompt
  if [[ "$prompt" == "yes" || "$prompt" == "y" ]]; then
    cp -r "$SRC1"/. "$DEST1" > /dev/null 2>&1
    cp -r "$SRC2"/. "$DEST2" > /dev/null 2>&1
    echo -e "\nExercise and revision files successfully updated!"
  else
    echo -e "\nUpdate cancelled. Existing exercise and revision files remain untouched!"
  fi
else
  cp -r "$SRC2"/. "$DEST2" > /dev/null 2>&1
fi
#!/usr/bin/env bash
# set -x
# List of URLs for each section
section1=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CRE/1.1.worship.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CRE/1.2.christian_rituals_and_celebrations.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CRE/1.3.values_in_christianity_islam_and_african_traditional_religion.txt"
)
section1a=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CRE/1.1.worship.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CRE/1.2.christian_rituals_and_celebrations.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CRE/1.3.values_in_christianity_islam_and_african_traditional_religion.ans.txt"
)
section1b=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CRE/1.1.worship.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CRE/1.2.christian_rituals_and_celebrations.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CRE/1.3.values_in_christianity_islam_and_african_traditional_religion.qns.txt"
)
section2=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CRE/2.1.respect_for_human_life.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CRE/2.2.marriage.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CRE/2.3.family.txt"
)
section2a=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CRE/2.1.respect_for_human_life.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CRE/2.2.marriage.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CRE/2.3.family.ans.txt"
)
section2b=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CRE/2.1.respect_for_human_life.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CRE/2.2.marriage.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CRE/2.3.family.qns.txt"
)
section3=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CRE/3.1.work.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CRE/3.2.wealth_and_development.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CRE/3.3.leisure.txt"
)
section3a=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CRE/3.1.work.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CRE/3.2.wealth_and_development.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CRE/3.3.leisure.ans.txt"
)
section3b=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CRE/3.1.work.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CRE/3.2.wealth_and_development.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CRE/3.3.leisure.qns.txt"
)
section4=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CRE/4.1.peace.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CRE/4.2.justice.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CRE/4.3.conflict_resolution.txt"
)
section4a=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CRE/4.1.peace.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CRE/4.2.justice.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CRE/4.3.conflict_resolution.ans.txt"
)
section4b=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CRE/4.1.peace.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CRE/4.2.justice.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CRE/4.3.conflict_resolution.qns.txt"
)
section5=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CRE/cre_samples.docx"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CRE/e_o_c_cre.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CRE/e_o_c_cre_1.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CRE/e_o_c_cre_1_samples_1.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CRE/e_o_c_cre_2.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CRE/e_o_c_cre_2_samples_1.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CRE/e_o_c_cre_3.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CRE/e_o_c_cre_3_samples_1.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CRE/e_o_c_cre_4.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CRE/e_o_c_cre_4_samples_1.txt"
)
# Function to download files from a list of URLs
download_files() {
    local urls=("$@")
    for url in "${urls[@]}"; do
        curl -O -L "$url" || echo -e "\n\nError fetching material for this tutorial: $url \c"
    done
}
# Download files for each section
cd Notes/Cre/ || exit
download_files "${section1[@]}"
cd - > /dev/null 2>&1 || exit
# For Class 1
mkdir -p Students/Omd/Exercise/Cre/S1/Downloads
cd Students/Omd/Exercise/Cre/S1/Downloads || exit
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
            find "$base_directory" -type d -path "*/Exercise/Cre/S1" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Exercise/Cre/S1" ]; then
                    echo "$new_lines" >> "$target/$file"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Exercise/Cre/S1"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Exercise/Cre/S1/Downloads
mkdir -p Students/Omd/Revision/Cre/S1/Downloads
cd Students/Omd/Revision/Cre/S1/Downloads || exit
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
            find "$base_directory" -type d -path "*/Revision/Cre/S1" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Revision/Cre/S1" ]; then
                    echo "$new_lines" >> "$target/$file"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Revision/Cre/S1"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Revision/Cre/S1/Downloads
cd Notes/Cre/ || exit
download_files "${section2[@]}"
cd - > /dev/null 2>&1 || exit
# For Class 2
mkdir -p Students/Omd/Exercise/Cre/S2/Downloads
cd Students/Omd/Exercise/Cre/S2/Downloads || exit
download_files "${section2a[@]}"
# Loop through all .txt files in the current directory
for file in *.txt; do
    similar_file="../$file"
    if [ -f "$similar_file" ]; then
        new_lines=$(diff --new-line-format="%L" --unchanged-line-format="" "$file" "$similar_file")
        if [ -n "$new_lines" ]; then
            base_directory="$HOME/Omd"
            find "$base_directory" -type d -path "*/Exercise/Cre/S2" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Exercise/Cre/S2" ]; then
                    echo "$new_lines" >> "$target/$file"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Exercise/Cre/S2"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Exercise/Cre/S2/Downloads
mkdir -p Students/Omd/Revision/Cre/S2/Downloads
cd Students/Omd/Revision/Cre/S2/Downloads || exit
download_files "${section2b[@]}"
for file in *.txt; do
    similar_file="../$file"
    if [ -f "$similar_file" ]; then
        new_lines=$(diff --new-line-format="%L" --unchanged-line-format="" "$file" "$similar_file")
        if [ -n "$new_lines" ]; then
            base_directory="$HOME/Omd"
            find "$base_directory" -type d -path "*/Revision/Cre/S2" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Revision/Cre/S2" ]; then
                    echo "$new_lines" >> "$target/$file"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Revision/Cre/S2"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Revision/Cre/S2/Downloads
cd Notes/Cre/ || exit
download_files "${section3[@]}"
cd - > /dev/null 2>&1 || exit
# For Class 3
mkdir -p Students/Omd/Exercise/Cre/S3/Downloads
cd Students/Omd/Exercise/Cre/S3/Downloads || exit
download_files "${section3a[@]}"
for file in *.txt; do
    similar_file="../$file"
    if [ -f "$similar_file" ]; then
        new_lines=$(diff --new-line-format="%L" --unchanged-line-format="" "$file" "$similar_file")
        if [ -n "$new_lines" ]; then
            base_directory="$HOME/Omd"
            find "$base_directory" -type d -path "*/Exercise/Cre/S3" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Exercise/Cre/S3" ]; then
                    echo "$new_lines" >> "$target/$file"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Exercise/Cre/S3"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Exercise/Cre/S3/Downloads
mkdir -p Students/Omd/Revision/Cre/S3/Downloads
cd Students/Omd/Revision/Cre/S3/Downloads || exit
download_files "${section3b[@]}"
for file in *.txt; do
    similar_file="../$file"
    if [ -f "$similar_file" ]; then
        new_lines=$(diff --new-line-format="%L" --unchanged-line-format="" "$file" "$similar_file")
        if [ -n "$new_lines" ]; then
            base_directory="$HOME/Omd"
            find "$base_directory" -type d -path "*/Revision/Cre/S3" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Revision/Cre/S3" ]; then
                    echo "$new_lines" >> "$target/$file"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Revision/Cre/S3"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Revision/Cre/S3/Downloads
cd Notes/Cre/ || exit
download_files "${section4[@]}"
cd - > /dev/null 2>&1 || exit
# For Class 4
mkdir -p Students/Omd/Exercise/Cre/S4/Downloads
cd Students/Omd/Exercise/Cre/S4/Downloads || exit
download_files "${section4a[@]}"
for file in *.txt; do
    similar_file="../$file"
    if [ -f "$similar_file" ]; then
        new_lines=$(diff --new-line-format="%L" --unchanged-line-format="" "$file" "$similar_file")
        if [ -n "$new_lines" ]; then
            base_directory="$HOME/Omd"
            find "$base_directory" -type d -path "*/Exercise/Cre/S4" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Exercise/Cre/S4" ]; then
                    echo "$new_lines" >> "$target/$file"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Exercise/Cre/S4"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Exercise/Cre/S4/Downloads
mkdir -p Students/Omd/Revision/Cre/S4/Downloads
cd Students/Omd/Revision/Cre/S4/Downloads || exit
download_files "${section4b[@]}"
for file in *.txt; do
    similar_file="../$file"
    if [ -f "$similar_file" ]; then
        new_lines=$(diff --new-line-format="%L" --unchanged-line-format="" "$file" "$similar_file")
        if [ -n "$new_lines" ]; then
            base_directory="$HOME/Omd"
            find "$base_directory" -type d -path "*/Revision/Cre/S4" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Revision/Cre/S4" ]; then
                    echo "$new_lines" >> "$target/$file"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Revision/Cre/S4"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Revision/Cre/S4/Downloads
# The Items
cd Students/Omd/Revision/Cre/ || exit
download_files "${section5[@]}"
mv cre_samples.docx .cre_samples.docx
for file in e_o_c_cre.txt e_o_c_cre_1.txt e_o_c_cre_1_samples_1.txt e_o_c_cre_2.txt e_o_c_cre_2_samples_1.txt e_o_c_cre_3.txt e_o_c_cre_3_samples_1.txt e_o_c_cre_4.txt e_o_c_cre_4_samples_1.txt; do
    hidden_file=".$file"
    if [ -f "$hidden_file" ]; then
        # Compare the current file with the hidden one and capture new lines
        new_lines=$(diff --new-line-format="%L" --unchanged-line-format="" "$file" "$hidden_file")
        # If there are new lines, append them to the target files
        if [ -n "$new_lines" ]; then
            # Define base directory for searching
            base_directory="$HOME/Omd"
            # Find target directories and append new lines
            find "$base_directory" -type d -path "*/Revision/Cre" | while read -r target; do
                # Ensure we are not appending to the source directory
                if [ "$target" != "$HOME/Omd/Students/Omd/Revision/Cre" ]; then
                    echo "$new_lines" >> "$target/$hidden_file"
                fi
            done
        fi
    fi
    # Move the current file to make it hidden
    mv "$file" "$hidden_file"
done
cd - > /dev/null 2>&1 || exit

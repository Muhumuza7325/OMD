#!/usr/bin/env bash
# set -x
# List of URLs for each section
section1=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ICT/1.1.introduction_to_ict.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ICT/1.2.computer_hardware_and_system_start_up.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ICT/1.3.file_and_folder_management.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ICT/1.4.word_processing_1.txt"
)
section1a=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ICT/1.1.introduction_to_ict.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ICT/1.2.computer_hardware_and_system_start_up.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ICT/1.3.file_and_folder_management.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ICT/1.4.word_processing_1.ans.txt"
)
section1b=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ICT/1.1.introduction_to_ict.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ICT/1.2.computer_hardware_and_system_start_up.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ICT/1.3.file_and_folder_management.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ICT/1.4.word_processing_1.qns.txt"
)
section2=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ICT/2.1.spreadsheet_1.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ICT/2.2.electronic_presentation.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ICT/2.3.information_access_and_sharing.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ICT/2.4.health_and_safety.txt"
)
section2a=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ICT/2.1.spreadsheet_1.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ICT/2.2.electronic_presentation.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ICT/2.3.information_access_and_sharing.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ICT/2.4.health_and_safety.ans.txt"
)
section2b=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ICT/2.1.spreadsheet_1.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ICT/2.2.electronic_presentation.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ICT/2.3.information_access_and_sharing.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ICT/2.4.health_and_safety.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ICT/6.1.the_internet_and_digital_communications.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ICT/6.2.electronic_publication.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ICT/6.3.electronic_databases.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ICT/6.4.artificial_intelligence_and_related_emerging_technologies.qns.txt"
)
section3=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ICT/3.1.word_processing_ii.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ICT/3.2.spreadsheet_ii.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ICT/3.3.electronic_publication.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ICT/3.4.database_management_systems.txt"
)
section3a=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ICT/3.1.word_processing_ii.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ICT/3.2.spreadsheet_ii.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ICT/3.3.electronic_publication.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ICT/3.4.database_management_systems.ans.txt"
)
section3b=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ICT/3.1.word_processing_ii.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ICT/3.2.spreadsheet_ii.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ICT/3.3.electronic_publication.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ICT/3.4.database_management_systems.qns.txt"
)
section4=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ICT/4.1.web_design.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ICT/4.2.electronic_waste_management.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ICT/4.3.basic_software_management.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ICT/4.4.system_and_data_security.txt"
)
section4a=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ICT/4.1.web_design.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ICT/4.2.electronic_waste_management.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ICT/4.3.basic_software_management.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ICT/4.4.system_and_data_security.ans.txt"
)
section4b=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ICT/4.1.web_design.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ICT/4.2.electronic_waste_management.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ICT/4.3.basic_software_management.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ICT/4.4.system_and_data_security.qns.txt"
)
section5=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ICT/ict_samples.docx"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ICT/e_o_c_ict.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ICT/e_o_c_ict_1.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ICT/e_o_c_ict_1_samples_1.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ICT/e_o_c_ict_2.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ICT/e_o_c_ict_2_samples_1.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ICT/e_o_c_ict_3.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ICT/e_o_c_ict_3_samples_1.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ICT/e_o_c_ict_4.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ICT/e_o_c_ict_4_samples_1.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ICT/e_o_c_ict_5.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ICT/e_o_c_ict_5_samples_1.txt"
)
# Function to download files from a list of URLs
download_files() {
    local urls=("$@")
    for url in "${urls[@]}"; do
        curl -O -L "$url" || echo -e "\n\nError fetching material for this tutorial: $url \c"
    done
}
# Download files for each section
cd Notes/Ict/ || exit
download_files "${section1[@]}"
cd - > /dev/null 2>&1 || exit
# For Class 1
mkdir -p Students/Omd/Exercise/Ict/S1/Downloads
cd Students/Omd/Exercise/Ict/S1/Downloads || exit
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
            find "$base_directory" -type d -path "*/Exercise/Ict/S1" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Exercise/Ict/S1" ]; then
                    echo "$new_lines" >> "$target/$file"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Exercise/Ict/S1"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Exercise/Ict/S1/Downloads
mkdir -p Students/Omd/Revision/Ict/S1/Downloads
cd Students/Omd/Revision/Ict/S1/Downloads || exit
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
            find "$base_directory" -type d -path "*/Revision/Ict/S1" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Revision/Ict/S1" ]; then
                    echo "$new_lines" >> "$target/$file"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Revision/Ict/S1"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Revision/Ict/S1/Downloads
cd Notes/Ict/ || exit
download_files "${section2[@]}"
cd - > /dev/null 2>&1 || exit
# For Class 2
mkdir -p Students/Omd/Exercise/Ict/S2/Downloads
cd Students/Omd/Exercise/Ict/S2/Downloads || exit
download_files "${section2a[@]}"
# Loop through all .txt files in the current directory
for file in *.txt; do
    similar_file="../$file"
    if [ -f "$similar_file" ]; then
        new_lines=$(diff --new-line-format="%L" --unchanged-line-format="" "$file" "$similar_file")
        if [ -n "$new_lines" ]; then
            base_directory="$HOME/Omd"
            find "$base_directory" -type d -path "*/Exercise/Ict/S2" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Exercise/Ict/S2" ]; then
                    echo "$new_lines" >> "$target/$file"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Exercise/Ict/S2"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Exercise/Ict/S2/Downloads
mkdir -p Students/Omd/Revision/Ict/S2/Downloads
cd Students/Omd/Revision/Ict/S2/Downloads || exit
download_files "${section2b[@]}"
for file in *.txt; do
    similar_file="../$file"
    if [ -f "$similar_file" ]; then
        new_lines=$(diff --new-line-format="%L" --unchanged-line-format="" "$file" "$similar_file")
        if [ -n "$new_lines" ]; then
            base_directory="$HOME/Omd"
            find "$base_directory" -type d -path "*/Revision/Ict/S2" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Revision/Ict/S2" ]; then
                    echo "$new_lines" >> "$target/$file"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Revision/Ict/S2"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Revision/Ict/S2/Downloads
cd Notes/Ict/ || exit
download_files "${section3[@]}"
cd - > /dev/null 2>&1 || exit
# For Class 3
mkdir -p Students/Omd/Exercise/Ict/S3/Downloads
cd Students/Omd/Exercise/Ict/S3/Downloads || exit
download_files "${section3a[@]}"
for file in *.txt; do
    similar_file="../$file"
    if [ -f "$similar_file" ]; then
        new_lines=$(diff --new-line-format="%L" --unchanged-line-format="" "$file" "$similar_file")
        if [ -n "$new_lines" ]; then
            base_directory="$HOME/Omd"
            find "$base_directory" -type d -path "*/Exercise/Ict/S3" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Exercise/Ict/S3" ]; then
                    echo "$new_lines" >> "$target/$file"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Exercise/Ict/S3"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Exercise/Ict/S3/Downloads
mkdir -p Students/Omd/Revision/Ict/S3/Downloads
cd Students/Omd/Revision/Ict/S3/Downloads || exit
download_files "${section3b[@]}"
for file in *.txt; do
    similar_file="../$file"
    if [ -f "$similar_file" ]; then
        new_lines=$(diff --new-line-format="%L" --unchanged-line-format="" "$file" "$similar_file")
        if [ -n "$new_lines" ]; then
            base_directory="$HOME/Omd"
            find "$base_directory" -type d -path "*/Revision/Ict/S3" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Revision/Ict/S3" ]; then
                    echo "$new_lines" >> "$target/$file"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Revision/Ict/S3"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Revision/Ict/S3/Downloads
cd Notes/Ict/ || exit
download_files "${section4[@]}"
cd - > /dev/null 2>&1 || exit
# For Class 4
mkdir -p Students/Omd/Exercise/Ict/S4/Downloads
cd Students/Omd/Exercise/Ict/S4/Downloads || exit
download_files "${section4a[@]}"
for file in *.txt; do
    similar_file="../$file"
    if [ -f "$similar_file" ]; then
        new_lines=$(diff --new-line-format="%L" --unchanged-line-format="" "$file" "$similar_file")
        if [ -n "$new_lines" ]; then
            base_directory="$HOME/Omd"
            find "$base_directory" -type d -path "*/Exercise/Ict/S4" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Exercise/Ict/S4" ]; then
                    echo "$new_lines" >> "$target/$file"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Exercise/Ict/S4"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Exercise/Ict/S4/Downloads
mkdir -p Students/Omd/Revision/Ict/S4/Downloads
cd Students/Omd/Revision/Ict/S4/Downloads || exit
download_files "${section4b[@]}"
for file in *.txt; do
    similar_file="../$file"
    if [ -f "$similar_file" ]; then
        new_lines=$(diff --new-line-format="%L" --unchanged-line-format="" "$file" "$similar_file")
        if [ -n "$new_lines" ]; then
            base_directory="$HOME/Omd"
            find "$base_directory" -type d -path "*/Revision/Ict/S4" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Revision/Ict/S4" ]; then
                    echo "$new_lines" >> "$target/$file"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Revision/Ict/S4"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Revision/Ict/S4/Downloads
# The Items
cd Students/Omd/Revision/Ict/ || exit
download_files "${section5[@]}"
mv ict_samples.docx .ict_samples.docx
for file in e_o_c_ict.txt e_o_c_ict_1.txt e_o_c_ict_1_samples_1.txt e_o_c_ict_2.txt e_o_c_ict_2_samples_1.txt e_o_c_ict_3.txt e_o_c_ict_3_samples_1.txt e_o_c_ict_4.txt e_o_c_ict_4_samples_1.txt e_o_c_ict_5.txt e_o_c_ict_5_samples_1.txt; do
    hidden_file=".$file"
    if [ -f "$hidden_file" ]; then
        # Compare the current file with the hidden one and capture new lines
        new_lines=$(diff --new-line-format="%L" --unchanged-line-format="" "$file" "$hidden_file")
        # If there are new lines, append them to the target files
        if [ -n "$new_lines" ]; then
            # Define base directory for searching
            base_directory="$HOME/Omd"
            # Find target directories and append new lines
            find "$base_directory" -type d -path "*/Revision/Ict" | while read -r target; do
                # Ensure we are not appending to the source directory
                if [ "$target" != "$HOME/Omd/Students/Omd/Revision/Ict" ]; then
                    echo "$new_lines" >> "$target/$hidden_file"
                fi
            done
        fi
    fi
    # Move the current file to make it hidden
    mv "$file" "$hidden_file"
done
cd - > /dev/null 2>&1 || exit

SRC1="$HOME/Omd/Students/Omd/Exercise/Ict"
DEST1="$HOME/Omd/Exercise/Ict"
SRC2="$HOME/Omd/Students/Omd/Revision/Ict"
DEST2="$HOME/Omd/Revision/Ict"
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

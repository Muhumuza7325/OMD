#!/usr/bin/env bash
# set -x
# List of URLs for each section
section1=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHINESE/1.1.introduction_to_chinese_pronounciation.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHINESE/1.2.greetings.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHINESE/1.3.introduction_of_self_and_others.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHINESE/1.4.identification.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHINESE/1.5.my_family.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHINESE/1.6.food.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHINESE/1.7.school_life.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHINESE/1.8.telling_time.txt"
)
section1a=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHINESE/1.1.introduction_to_chinese_pronounciation.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHINESE/1.2.greetings.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHINESE/1.3.introduction_of_self_and_others.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHINESE/1.4.identification.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHINESE/1.5.my_family.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHINESE/1.6.food.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHINESE/1.7.school_life.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHINESE/1.8.telling_time.ans.txt"
)
section1b=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHINESE/1.1.introduction_to_chinese_pronounciation.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHINESE/1.2.greetings.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHINESE/1.3.introduction_of_self_and_others.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHINESE/1.4.identification.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHINESE/1.5.my_family.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHINESE/1.6.food.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHINESE/1.7.school_life.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHINESE/1.8.telling_time.qns.txt"
)
section2=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHINESE/2.1.market.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHINESE/2.2.weather.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHINESE/2.3.job_and_careers.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHINESE/2.4.hobbies.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHINESE/2.5.transport.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHINESE/2.6.travel_and_tourism.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHINESE/2.7.friends.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHINESE/2.8.my_house.txt"
)
section2a=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHINESE/2.1.market.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHINESE/2.2.weather.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHINESE/2.3.job_and_careers.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHINESE/2.4.hobbies.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHINESE/2.5.transport.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHINESE/2.6.travel_and_tourism.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHINESE/2.7.friends.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHINESE/2.8.my_house.ans.txt"
)
section2b=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHINESE/2.1.market.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHINESE/2.2.weather.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHINESE/2.3.job_and_careers.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHINESE/2.4.hobbies.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHINESE/2.5.transport.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHINESE/2.6.travel_and_tourism.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHINESE/2.7.friends.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHINESE/2.8.my_house.qns.txt"
)
section3=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHINESE/3.1.shopping.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHINESE/3.2.the_environment.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHINESE/3.3.health.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHINESE/3.4.fashion.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHINESE/3.5.entertainment.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHINESE/3.6.media.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHINESE/3.7.travel.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHINESE/3.8.custom.txt"
)
section3a=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHINESE/3.1.shopping.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHINESE/3.2.the_environment.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHINESE/3.3.health.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHINESE/3.4.fashion.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHINESE/3.5.entertainment.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHINESE/3.6.media.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHINESE/3.7.travel.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHINESE/3.8.custom.ans.txt"
)
section3b=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHINESE/3.1.shopping.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHINESE/3.2.the_environment.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHINESE/3.3.health.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHINESE/3.4.fashion.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHINESE/3.5.entertainment.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHINESE/3.6.media.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHINESE/3.7.travel.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHINESE/3.8.custom.qns.txt"
)
section4=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHINESE/4.1.personal_profile.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHINESE/4.2.recommendation.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHINESE/4.3.environment_part_2.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHINESE/4.4.house_and_furniture.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHINESE/4.5.school_life.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHINESE/4.6.health_part_2.txt"
)
section4a=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHINESE/4.1.personal_profile.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHINESE/4.2.recommendation.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHINESE/4.3.environment_part_2.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHINESE/4.4.house_and_furniture.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHINESE/4.5.school_life.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHINESE/4.6.health_part_2.ans.txt"
)
section4b=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHINESE/4.1.personal_profile.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHINESE/4.2.recommendation.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHINESE/4.3.environment_part_2.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHINESE/4.4.house_and_furniture.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHINESE/4.5.school_life.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHINESE/4.6.health_part_2.qns.txt"
)
section5=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHINESE/chinese_samples.docx"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHINESE/e_o_c_chinese.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHINESE/e_o_c_chinese_1.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHINESE/e_o_c_chinese_1_samples_1.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHINESE/e_o_c_chinese_2.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHINESE/e_o_c_chinese_2_samples_1.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHINESE/e_o_c_chinese_3.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHINESE/e_o_c_chinese_3_samples_1.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHINESE/e_o_c_chinese_4.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHINESE/e_o_c_chinese_4_samples_1.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHINESE/e_o_c_chinese_5.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHINESE/e_o_c_chinese_5_samples_1.txt"
)
# Function to download files from a list of URLs
download_files() {
    local urls=("$@")
    for url in "${urls[@]}"; do
        curl -O -L "$url" || echo -e "\n\nError fetching material for this tutorial: $url \c"
    done
}
# Download files for each section
cd Notes/Chinese/ || exit
download_files "${section1[@]}"
cd - > /dev/null 2>&1 || exit
# For Class 1
mkdir -p Students/Omd/Exercise/Chinese/S1/Downloads
cd Students/Omd/Exercise/Chinese/S1/Downloads || exit
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
            find "$base_directory" -type d -path "*/Exercise/Chinese/S1" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Exercise/Chinese/S1" ]; then
                    echo "$new_lines" >> "$target/$file"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Exercise/Chinese/S1"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Exercise/Chinese/S1/Downloads
mkdir -p Students/Omd/Revision/Chinese/S1/Downloads
cd Students/Omd/Revision/Chinese/S1/Downloads || exit
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
            find "$base_directory" -type d -path "*/Revision/Chinese/S1" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Revision/Chinese/S1" ]; then
                    echo "$new_lines" >> "$target/$file"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Revision/Chinese/S1"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Revision/Chinese/S1/Downloads
cd Notes/Chinese/ || exit
download_files "${section2[@]}"
cd - > /dev/null 2>&1 || exit
# For Class 2
mkdir -p Students/Omd/Exercise/Chinese/S2/Downloads
cd Students/Omd/Exercise/Chinese/S2/Downloads || exit
download_files "${section2a[@]}"
# Loop through all .txt files in the current directory
for file in *.txt; do
    similar_file="../$file"
    if [ -f "$similar_file" ]; then
        new_lines=$(diff --new-line-format="%L" --unchanged-line-format="" "$file" "$similar_file")
        if [ -n "$new_lines" ]; then
            base_directory="$HOME/Omd"
            find "$base_directory" -type d -path "*/Exercise/Chinese/S2" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Exercise/Chinese/S2" ]; then
                    echo "$new_lines" >> "$target/$file"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Exercise/Chinese/S2"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Exercise/Chinese/S2/Downloads
mkdir -p Students/Omd/Revision/Chinese/S2/Downloads
cd Students/Omd/Revision/Chinese/S2/Downloads || exit
download_files "${section2b[@]}"
for file in *.txt; do
    similar_file="../$file"
    if [ -f "$similar_file" ]; then
        new_lines=$(diff --new-line-format="%L" --unchanged-line-format="" "$file" "$similar_file")
        if [ -n "$new_lines" ]; then
            base_directory="$HOME/Omd"
            find "$base_directory" -type d -path "*/Revision/Chinese/S2" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Revision/Chinese/S2" ]; then
                    echo "$new_lines" >> "$target/$file"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Revision/Chinese/S2"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Revision/Chinese/S2/Downloads
cd Notes/Chinese/ || exit
download_files "${section3[@]}"
cd - > /dev/null 2>&1 || exit
# For Class 3
mkdir -p Students/Omd/Exercise/Chinese/S3/Downloads
cd Students/Omd/Exercise/Chinese/S3/Downloads || exit
download_files "${section3a[@]}"
for file in *.txt; do
    similar_file="../$file"
    if [ -f "$similar_file" ]; then
        new_lines=$(diff --new-line-format="%L" --unchanged-line-format="" "$file" "$similar_file")
        if [ -n "$new_lines" ]; then
            base_directory="$HOME/Omd"
            find "$base_directory" -type d -path "*/Exercise/Chinese/S3" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Exercise/Chinese/S3" ]; then
                    echo "$new_lines" >> "$target/$file"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Exercise/Chinese/S3"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Exercise/Chinese/S3/Downloads
mkdir -p Students/Omd/Revision/Chinese/S3/Downloads
cd Students/Omd/Revision/Chinese/S3/Downloads || exit
download_files "${section3b[@]}"
for file in *.txt; do
    similar_file="../$file"
    if [ -f "$similar_file" ]; then
        new_lines=$(diff --new-line-format="%L" --unchanged-line-format="" "$file" "$similar_file")
        if [ -n "$new_lines" ]; then
            base_directory="$HOME/Omd"
            find "$base_directory" -type d -path "*/Revision/Chinese/S3" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Revision/Chinese/S3" ]; then
                    echo "$new_lines" >> "$target/$file"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Revision/Chinese/S3"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Revision/Chinese/S3/Downloads
cd Notes/Chinese/ || exit
download_files "${section4[@]}"
cd - > /dev/null 2>&1 || exit
# For Class 4
mkdir -p Students/Omd/Exercise/Chinese/S4/Downloads
cd Students/Omd/Exercise/Chinese/S4/Downloads || exit
download_files "${section4a[@]}"
for file in *.txt; do
    similar_file="../$file"
    if [ -f "$similar_file" ]; then
        new_lines=$(diff --new-line-format="%L" --unchanged-line-format="" "$file" "$similar_file")
        if [ -n "$new_lines" ]; then
            base_directory="$HOME/Omd"
            find "$base_directory" -type d -path "*/Exercise/Chinese/S4" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Exercise/Chinese/S4" ]; then
                    echo "$new_lines" >> "$target/$file"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Exercise/Chinese/S4"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Exercise/Chinese/S4/Downloads
mkdir -p Students/Omd/Revision/Chinese/S4/Downloads
cd Students/Omd/Revision/Chinese/S4/Downloads || exit
download_files "${section4b[@]}"
for file in *.txt; do
    similar_file="../$file"
    if [ -f "$similar_file" ]; then
        new_lines=$(diff --new-line-format="%L" --unchanged-line-format="" "$file" "$similar_file")
        if [ -n "$new_lines" ]; then
            base_directory="$HOME/Omd"
            find "$base_directory" -type d -path "*/Revision/Chinese/S4" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Revision/Chinese/S4" ]; then
                    echo "$new_lines" >> "$target/$file"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Revision/Chinese/S4"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Revision/Chinese/S4/Downloads
# The Items
cd Students/Omd/Revision/Chinese/ || exit
download_files "${section5[@]}"
mv chinese_samples.docx .chinese_samples.docx
for file in e_o_c_chinese.txt e_o_c_chinese_1.txt e_o_c_chinese_1_samples_1.txt e_o_c_chinese_2.txt e_o_c_chinese_2_samples_1.txt e_o_c_chinese_3.txt e_o_c_chinese_3_samples_1.txt e_o_c_chinese_4.txt e_o_c_chinese_4_samples_1.txt e_o_c_chinese_5.txt e_o_c_chinese_5_samples_1.txt; do
    hidden_file=".$file"
    if [ -f "$hidden_file" ]; then
        # Compare the current file with the hidden one and capture new lines
        new_lines=$(diff --new-line-format="%L" --unchanged-line-format="" "$file" "$hidden_file")
        # If there are new lines, append them to the target files
        if [ -n "$new_lines" ]; then
            # Define base directory for searching
            base_directory="$HOME/Omd"
            # Find target directories and append new lines
            find "$base_directory" -type d -path "*/Revision/Chinese" | while read -r target; do
                # Ensure we are not appending to the source directory
                if [ "$target" != "$HOME/Omd/Students/Omd/Revision/Chinese" ]; then
                    echo "$new_lines" >> "$target/$hidden_file"
                fi
            done
        fi
    fi
    # Move the current file to make it hidden
    mv "$file" "$hidden_file"
done
cd - > /dev/null 2>&1 || exit

SRC1="$HOME/Omd/Students/Omd/Exercise/Chinese"
DEST1="$HOME/Omd/Exercise/Chinese"
SRC2="$HOME/Omd/Students/Omd/Revision/Chinese"
DEST2="$HOME/Omd/Revision/Chinese"
if ! find "$DEST1" -type f -name "*.ans.txt" | grep -q .; then
  cp -r "$SRC1"/* "$DEST1"
fi
if find "$DEST2" -type f -name "*.qns.txt" | grep -q .; then
  read -rp $'\n\nExisting exercise and revision files have been detected.\n\nUpdating them now may overwrite your current progress.\n\nIf you want to continue and overwrite, type "yes" or "y".\nOtherwise, press Enter to cancel: ' prompt
  if [[ "$prompt" == "yes" || "$prompt" == "y" ]]; then
    cp -r "$SRC1"/* "$DEST1"
    cp -r "$SRC2"/* "$DEST2"
    echo -e "\nExercise and revision files successfully updated!"
  else
    echo -e "\nUpdate cancelled. Existing exercise and revision files remain untouched!"
  fi
else
  cp -r "$SRC2"/* "$DEST2"
fi
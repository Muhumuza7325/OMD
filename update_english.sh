#!/usr/bin/env bash
# set -x
# List of URLs for each section
section1=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.1.personal_life_and_family.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.2.finding_information.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.3.food.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.4.at_the_market.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.5.children_at_work.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.6.environment_and_pollution.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.7.urban_and_rural_life.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.8.travel.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.9.experience_of_secondary_school.txt"
)
section1a=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.1.personal_life_and_family.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.2.finding_information.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.3.food.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.4.at_the_market.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.5.children_at_work.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.6.environment_and_pollution.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.7.urban_and_rural_life.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.8.travel.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.9.experience_of_secondary_school.ans.txt"
)
section1b=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.1.personal_life_and_family.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.2.finding_information.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.3.food.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.4.at_the_market.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.5.children_at_work.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.6.environment_and_pollution.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.7.urban_and_rural_life.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.8.travel.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.9.experience_of_secondary_school.qns.txt"
)
section2=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.1.modern_communication_technology.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.2.celebrations.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.3.parents_and_children.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.4.anti-corruption.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.5.human_rights_gender_and_responsibilities.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.6.tourism_maps_and_giving_directions.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.7.leisure.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.8.appearance_and_grooming.txt"
)
section2a=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.1.modern_communication_technology.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.2.celebrations.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.3.parents_and_children.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.4.anti-corruption.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.5.human_rights_gender_and_responsibilities.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.6.tourism_maps_and_giving_directions.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.7.leisure.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.8.appearance_and_grooming.ans.txt"
)
section2b=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.1.modern_communication_technology.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.2.celebrations.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.3.parents_and_children.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.4.anti-corruption.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.5.human_rights_gender_and_responsibilities.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.6.tourism_maps_and_giving_directions.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.7.leisure.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.8.appearance_and_grooming.qns.txt"
)
section3=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.1.childhood_memories.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.2.school_clubs.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.3.integrity.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.4.identity_crisis.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.5.relationships_and_emotions.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.6.patriotism.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.7.further_education.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.8.banking_or_money.txt"
)
section3a=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.1.childhood_memories.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.2.school_clubs.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.3.integrity.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.4.identity_crisis.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.5.relationships_and_emotions.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.6.patriotism.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.7.further_education.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.8.banking_or_money.ans.txt"
)
section3b=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.1.childhood_memories.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.2.school_clubs.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.3.integrity.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.4.identity_crisis.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.5.relationships_and_emotions.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.6.patriotism.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.7.further_education.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.8.banking_or_money.qns.txt"
)
section4=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.1.leadership.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.2.the_media.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.3.culture.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.4.choosing_a_career.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.5.applying_for_a_job.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.6.globalisation.txt"
)
section4a=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.1.leadership.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.2.the_media.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.3.culture.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.4.choosing_a_career.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.5.applying_for_a_job.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.6.globalisation.ans.txt"
)
section4b=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.1.leadership.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.2.the_media.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.3.culture.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.4.choosing_a_career.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.5.applying_for_a_job.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.6.globalisation.qns.txt"
)
section5=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/english_samples.docx"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/e_o_c_english.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/e_o_c_english_1.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/e_o_c_english_1_samples_1.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/e_o_c_english_2.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/e_o_c_english_2_samples_1.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/e_o_c_english_3.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/e_o_c_english_3_samples_1.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/e_o_c_english_4.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/e_o_c_english_4_samples_1.txt"
)
# Function to download files from a list of URLs
download_files() {
    local urls=("$@")
    for url in "${urls[@]}"; do
        curl -O -L "$url" || echo -e "\n\nError fetching material for this tutorial: $url \c"
    done
}
# Download files for each section
cd Notes/English/ || exit
download_files "${section1[@]}"
cd - > /dev/null 2>&1 || exit
# For Class 1
mkdir -p Students/Omd/Exercise/English/S1/Downloads
cd Students/Omd/Exercise/English/S1/Downloads || exit
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
            find "$base_directory" -type d -path "*/Exercise/English/S1" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Exercise/English/S1" ]; then
                    echo "$new_lines" >> "$target/$file"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Exercise/English/S1"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Exercise/English/S1/Downloads
mkdir -p Students/Omd/Revision/English/S1/Downloads
cd Students/Omd/Revision/English/S1/Downloads || exit
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
            find "$base_directory" -type d -path "*/Revision/English/S1" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Revision/English/S1" ]; then
                    echo "$new_lines" >> "$target/$file"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Revision/English/S1"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Revision/English/S1/Downloads
cd Notes/English/ || exit
download_files "${section2[@]}"
cd - > /dev/null 2>&1 || exit
# For Class 2
mkdir -p Students/Omd/Exercise/English/S2/Downloads
cd Students/Omd/Exercise/English/S2/Downloads || exit
download_files "${section2a[@]}"
# Loop through all .txt files in the current directory
for file in *.txt; do
    similar_file="../$file"
    if [ -f "$similar_file" ]; then
        new_lines=$(diff --new-line-format="%L" --unchanged-line-format="" "$file" "$similar_file")
        if [ -n "$new_lines" ]; then
            base_directory="$HOME/Omd"
            find "$base_directory" -type d -path "*/Exercise/English/S2" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Exercise/English/S2" ]; then
                    echo "$new_lines" >> "$target/$file"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Exercise/English/S2"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Exercise/English/S2/Downloads
mkdir -p Students/Omd/Revision/English/S2/Downloads
cd Students/Omd/Revision/English/S2/Downloads || exit
download_files "${section2b[@]}"
for file in *.txt; do
    similar_file="../$file"
    if [ -f "$similar_file" ]; then
        new_lines=$(diff --new-line-format="%L" --unchanged-line-format="" "$file" "$similar_file")
        if [ -n "$new_lines" ]; then
            base_directory="$HOME/Omd"
            find "$base_directory" -type d -path "*/Revision/English/S2" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Revision/English/S2" ]; then
                    echo "$new_lines" >> "$target/$file"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Revision/English/S2"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Revision/English/S2/Downloads
cd Notes/English/ || exit
download_files "${section3[@]}"
cd - > /dev/null 2>&1 || exit
# For Class 3
mkdir -p Students/Omd/Exercise/English/S3/Downloads
cd Students/Omd/Exercise/English/S3/Downloads || exit
download_files "${section3a[@]}"
for file in *.txt; do
    similar_file="../$file"
    if [ -f "$similar_file" ]; then
        new_lines=$(diff --new-line-format="%L" --unchanged-line-format="" "$file" "$similar_file")
        if [ -n "$new_lines" ]; then
            base_directory="$HOME/Omd"
            find "$base_directory" -type d -path "*/Exercise/English/S3" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Exercise/English/S3" ]; then
                    echo "$new_lines" >> "$target/$file"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Exercise/English/S3"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Exercise/English/S3/Downloads
mkdir -p Students/Omd/Revision/English/S3/Downloads
cd Students/Omd/Revision/English/S3/Downloads || exit
download_files "${section3b[@]}"
for file in *.txt; do
    similar_file="../$file"
    if [ -f "$similar_file" ]; then
        new_lines=$(diff --new-line-format="%L" --unchanged-line-format="" "$file" "$similar_file")
        if [ -n "$new_lines" ]; then
            base_directory="$HOME/Omd"
            find "$base_directory" -type d -path "*/Revision/English/S3" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Revision/English/S3" ]; then
                    echo "$new_lines" >> "$target/$file"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Revision/English/S3"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Revision/English/S3/Downloads
cd Notes/English/ || exit
download_files "${section4[@]}"
cd - > /dev/null 2>&1 || exit
# For Class 4
mkdir -p Students/Omd/Exercise/English/S4/Downloads
cd Students/Omd/Exercise/English/S4/Downloads || exit
download_files "${section4a[@]}"
for file in *.txt; do
    similar_file="../$file"
    if [ -f "$similar_file" ]; then
        new_lines=$(diff --new-line-format="%L" --unchanged-line-format="" "$file" "$similar_file")
        if [ -n "$new_lines" ]; then
            base_directory="$HOME/Omd"
            find "$base_directory" -type d -path "*/Exercise/English/S4" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Exercise/English/S4" ]; then
                    echo "$new_lines" >> "$target/$file"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Exercise/English/S4"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Exercise/English/S4/Downloads
mkdir -p Students/Omd/Revision/English/S4/Downloads
cd Students/Omd/Revision/English/S4/Downloads || exit
download_files "${section4b[@]}"
for file in *.txt; do
    similar_file="../$file"
    if [ -f "$similar_file" ]; then
        new_lines=$(diff --new-line-format="%L" --unchanged-line-format="" "$file" "$similar_file")
        if [ -n "$new_lines" ]; then
            base_directory="$HOME/Omd"
            find "$base_directory" -type d -path "*/Revision/English/S4" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Revision/English/S4" ]; then
                    echo "$new_lines" >> "$target/$file"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Revision/English/S4"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Revision/English/S4/Downloads
# The Items
cd Students/Omd/Revision/English/ || exit
download_files "${section5[@]}"
mv english_samples.docx .english_samples.docx
for file in e_o_c_english.txt e_o_c_english_1.txt e_o_c_english_1_samples_1.txt e_o_c_english_2.txt e_o_c_english_2_samples_1.txt e_o_c_english_3.txt e_o_c_english_3_samples_1.txt e_o_c_english_4.txt e_o_c_english_4_samples_1.txt; do
    hidden_file=".$file"
    if [ -f "$hidden_file" ]; then
        # Compare the current file with the hidden one and capture new lines
        new_lines=$(diff --new-line-format="%L" --unchanged-line-format="" "$file" "$hidden_file")
        # If there are new lines, append them to the target files
        if [ -n "$new_lines" ]; then
            # Define base directory for searching
            base_directory="$HOME/Omd"
            # Find target directories and append new lines
            find "$base_directory" -type d -path "*/Revision/English" | while read -r target; do
                # Ensure we are not appending to the source directory
                if [ "$target" != "$HOME/Omd/Students/Omd/Revision/English" ]; then
                    echo "$new_lines" >> "$target/$hidden_file"
                fi
            done
        fi
    fi
    # Move the current file to make it hidden
    mv "$file" "$hidden_file"
done
cd - > /dev/null 2>&1 || exit

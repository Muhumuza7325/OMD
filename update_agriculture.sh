#!/usr/bin/env bash
# set -x
# List of URLs for each section
section1=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/AGRIC/1.1.introduction_to_agriculture.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/AGRIC/1.2.farm_tools_equipment_and_implements.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/AGRIC/1.3.soil_science.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/AGRIC/1.4.vegetable_growing.txt"
)
section1a=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/AGRIC/1.1.introduction_to_agriculture.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/AGRIC/1.2.farm_tools_equipment_and_implements.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/AGRIC/1.3.soil_science.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/AGRIC/1.4.vegetable_growing.ans.txt"
)
section1b=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/AGRIC/1.1.introduction_to_agriculture.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/AGRIC/1.2.farm_tools_equipment_and_implements.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/AGRIC/1.3.soil_science.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/AGRIC/1.4.vegetable_growing.qns.txt"
)
section2=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/AGRIC/2.1.cereal_growing.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/AGRIC/2.2.root_and_stem_tuber_growing_or_legume_and_oil_seed.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/AGRIC/2.3.domestic_animal_rearing.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/AGRIC/2.4.perennial_crop_production.txt"
)
section2a=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/AGRIC/2.1.cereal_growing.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/AGRIC/2.2.root_and_stem_tuber_growing_or_legume_and_oil_seed.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/AGRIC/2.3.domestic_animal_rearing.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/AGRIC/2.4.perennial_crop_production.ans.txt"
)
section2b=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/AGRIC/2.1.cereal_growing.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/AGRIC/2.2.root_and_stem_tuber_growing_or_legume_and_oil_seed.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/AGRIC/2.3.domestic_animal_rearing.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/AGRIC/2.4.perennial_crop_production.qns.txt"
)
section3=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/AGRIC/3.1.cattle_production.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/AGRIC/3.2.livestock_feed_making.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/AGRIC/3.3.pasture_management_and_conservation_or_hydroponic_farming.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/AGRIC/3.4.financial_services_and_money_in_agriculture.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/AGRIC/3.5.farm_buildings_and_farm_structures.txt"
)
section3a=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/AGRIC/3.1.cattle_production.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/AGRIC/3.2.livestock_feed_making.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/AGRIC/3.3.pasture_management_and_conservation_or_hydroponic_farming.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/AGRIC/3.4.financial_services_and_money_in_agriculture.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/AGRIC/3.5.farm_buildings_and_farm_structures.ans.txt"
)
section3b=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/AGRIC/3.1.cattle_production.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/AGRIC/3.2.livestock_feed_making.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/AGRIC/3.3.pasture_management_and_conservation_or_hydroponic_farming.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/AGRIC/3.4.financial_services_and_money_in_agriculture.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/AGRIC/3.5.farm_buildings_and_farm_structures.qns.txt"
)
section4=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/AGRIC/4.1.value_addition_to_domestic_milk_products.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/AGRIC/4.2.value_addition_to_domestic_meat_products.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/AGRIC/4.3.biotechnology_and_biosafety_in_agriculture.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/AGRIC/4.4.land_tenure_system.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/AGRIC/4.5.cooperatives_and_self-help_groups.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/AGRIC/4.6.value_addition_to_agro-wastes_and_by-products.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/AGRIC/4.7.value_addition_to_vegetables_or_value_addition_to_fruits.txt"
)
section4a=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/AGRIC/4.1.value_addition_to_domestic_milk_products.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/AGRIC/4.2.value_addition_to_domestic_meat_products.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/AGRIC/4.3.biotechnology_and_biosafety_in_agriculture.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/AGRIC/4.4.land_tenure_system.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/AGRIC/4.5.cooperatives_and_self-help_groups.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/AGRIC/4.6.value_addition_to_agro-wastes_and_by-products.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/AGRIC/4.7.value_addition_to_vegetables_or_value_addition_to_fruits.ans.txt"
)
section4b=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/AGRIC/4.1.value_addition_to_domestic_milk_products.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/AGRIC/4.2.value_addition_to_domestic_meat_products.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/AGRIC/4.3.biotechnology_and_biosafety_in_agriculture.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/AGRIC/4.4.land_tenure_system.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/AGRIC/4.5.cooperatives_and_self-help_groups.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/AGRIC/4.6.value_addition_to_agro-wastes_and_by-products.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/AGRIC/4.7.value_addition_to_vegetables_or_value_addition_to_fruits.qns.txt"
)
section5=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/AGRIC/agriculture_samples.docx"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/AGRIC/e_o_c_agriculture.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/AGRIC/e_o_c_agriculture_1.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/AGRIC/e_o_c_agriculture_1_samples_1.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/AGRIC/e_o_c_agriculture_2.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/AGRIC/e_o_c_agriculture_2_samples_1.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/AGRIC/e_o_c_agriculture_3.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/AGRIC/e_o_c_agriculture_3_samples_1.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/AGRIC/e_o_c_agriculture_4.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/AGRIC/e_o_c_agriculture_4_samples_1.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/AGRIC/e_o_c_agriculture_5.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/AGRIC/e_o_c_agriculture_5_samples_1.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/AGRIC/e_o_c_agriculture_6.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/AGRIC/e_o_c_agriculture_6_samples_1.txt"
)
# Function to download files from a list of URLs
download_files() {
    local urls=("$@")
    for url in "${urls[@]}"; do
        curl -O -L "$url" || echo -e "\n\nError fetching material for this tutorial: $url \c"
    done
}
# Download files for each section
cd Notes/Agriculture/ || exit
download_files "${section1[@]}"
cd - > /dev/null 2>&1 || exit
# For Class 1
mkdir -p Students/Omd/Exercise/Agriculture/S1/Downloads
cd Students/Omd/Exercise/Agriculture/S1/Downloads || exit
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
            find "$base_directory" -type d -path "*/Exercise/Agriculture/S1" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Exercise/Agriculture/S1" ]; then
                    echo "$new_lines" >> "$target/$file"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Exercise/Agriculture/S1"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Exercise/Agriculture/S1/Downloads
mkdir -p Students/Omd/Revision/Agriculture/S1/Downloads
cd Students/Omd/Revision/Agriculture/S1/Downloads || exit
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
            find "$base_directory" -type d -path "*/Revision/Agriculture/S1" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Revision/Agriculture/S1" ]; then
                    echo "$new_lines" >> "$target/$file"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Revision/Agriculture/S1"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Revision/Agriculture/S1/Downloads
cd Notes/Agriculture/ || exit
download_files "${section2[@]}"
cd - > /dev/null 2>&1 || exit
# For Class 2
mkdir -p Students/Omd/Exercise/Agriculture/S2/Downloads
cd Students/Omd/Exercise/Agriculture/S2/Downloads || exit
download_files "${section2a[@]}"
# Loop through all .txt files in the current directory
for file in *.txt; do
    similar_file="../$file"
    if [ -f "$similar_file" ]; then
        new_lines=$(diff --new-line-format="%L" --unchanged-line-format="" "$file" "$similar_file")
        if [ -n "$new_lines" ]; then
            base_directory="$HOME/Omd"
            find "$base_directory" -type d -path "*/Exercise/Agriculture/S2" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Exercise/Agriculture/S2" ]; then
                    echo "$new_lines" >> "$target/$file"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Exercise/Agriculture/S2"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Exercise/Agriculture/S2/Downloads
mkdir -p Students/Omd/Revision/Agriculture/S2/Downloads
cd Students/Omd/Revision/Agriculture/S2/Downloads || exit
download_files "${section2b[@]}"
for file in *.txt; do
    similar_file="../$file"
    if [ -f "$similar_file" ]; then
        new_lines=$(diff --new-line-format="%L" --unchanged-line-format="" "$file" "$similar_file")
        if [ -n "$new_lines" ]; then
            base_directory="$HOME/Omd"
            find "$base_directory" -type d -path "*/Revision/Agriculture/S2" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Revision/Agriculture/S2" ]; then
                    echo "$new_lines" >> "$target/$file"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Revision/Agriculture/S2"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Revision/Agriculture/S2/Downloads
cd Notes/Agriculture/ || exit
download_files "${section3[@]}"
cd - > /dev/null 2>&1 || exit
# For Class 3
mkdir -p Students/Omd/Exercise/Agriculture/S3/Downloads
cd Students/Omd/Exercise/Agriculture/S3/Downloads || exit
download_files "${section3a[@]}"
for file in *.txt; do
    similar_file="../$file"
    if [ -f "$similar_file" ]; then
        new_lines=$(diff --new-line-format="%L" --unchanged-line-format="" "$file" "$similar_file")
        if [ -n "$new_lines" ]; then
            base_directory="$HOME/Omd"
            find "$base_directory" -type d -path "*/Exercise/Agriculture/S3" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Exercise/Agriculture/S3" ]; then
                    echo "$new_lines" >> "$target/$file"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Exercise/Agriculture/S3"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Exercise/Agriculture/S3/Downloads
mkdir -p Students/Omd/Revision/Agriculture/S3/Downloads
cd Students/Omd/Revision/Agriculture/S3/Downloads || exit
download_files "${section3b[@]}"
for file in *.txt; do
    similar_file="../$file"
    if [ -f "$similar_file" ]; then
        new_lines=$(diff --new-line-format="%L" --unchanged-line-format="" "$file" "$similar_file")
        if [ -n "$new_lines" ]; then
            base_directory="$HOME/Omd"
            find "$base_directory" -type d -path "*/Revision/Agriculture/S3" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Revision/Agriculture/S3" ]; then
                    echo "$new_lines" >> "$target/$file"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Revision/Agriculture/S3"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Revision/Agriculture/S3/Downloads
cd Notes/Agriculture/ || exit
download_files "${section4[@]}"
cd - > /dev/null 2>&1 || exit
# For Class 4
mkdir -p Students/Omd/Exercise/Agriculture/S4/Downloads
cd Students/Omd/Exercise/Agriculture/S4/Downloads || exit
download_files "${section4a[@]}"
for file in *.txt; do
    similar_file="../$file"
    if [ -f "$similar_file" ]; then
        new_lines=$(diff --new-line-format="%L" --unchanged-line-format="" "$file" "$similar_file")
        if [ -n "$new_lines" ]; then
            base_directory="$HOME/Omd"
            find "$base_directory" -type d -path "*/Exercise/Agriculture/S4" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Exercise/Agriculture/S4" ]; then
                    echo "$new_lines" >> "$target/$file"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Exercise/Agriculture/S4"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Exercise/Agriculture/S4/Downloads
mkdir -p Students/Omd/Revision/Agriculture/S4/Downloads
cd Students/Omd/Revision/Agriculture/S4/Downloads || exit
download_files "${section4b[@]}"
for file in *.txt; do
    similar_file="../$file"
    if [ -f "$similar_file" ]; then
        new_lines=$(diff --new-line-format="%L" --unchanged-line-format="" "$file" "$similar_file")
        if [ -n "$new_lines" ]; then
            base_directory="$HOME/Omd"
            find "$base_directory" -type d -path "*/Revision/Agriculture/S4" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Revision/Agriculture/S4" ]; then
                    echo "$new_lines" >> "$target/$file"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Revision/Agriculture/S4"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Revision/Agriculture/S4/Downloads
# The Items
cd Students/Omd/Revision/Agriculture/ || exit
download_files "${section5[@]}"
mv agriculture_samples.docx .agriculture_samples.docx
for file in e_o_c_agriculture.txt e_o_c_agriculture_1.txt e_o_c_agriculture_1_samples_1.txt e_o_c_agriculture_2.txt e_o_c_agriculture_2_samples_1.txt e_o_c_agriculture_3.txt e_o_c_agriculture_3_samples_1.txt e_o_c_agriculture_4.txt e_o_c_agriculture_4_samples_1.txt e_o_c_agriculture_5.txt e_o_c_agriculture_5_samples_1.txt e_o_c_agriculture_6.txt e_o_c_agriculture_6_samples_1.txt; do
    hidden_file=".$file"
    if [ -f "$hidden_file" ]; then
        # Compare the current file with the hidden one and capture new lines
        new_lines=$(diff --new-line-format="%L" --unchanged-line-format="" "$file" "$hidden_file")
        # If there are new lines, append them to the target files
        if [ -n "$new_lines" ]; then
            # Define base directory for searching
            base_directory="$HOME/Omd"
            # Find target directories and append new lines
            find "$base_directory" -type d -path "*/Revision/Agriculture" | while read -r target; do
                # Ensure we are not appending to the source directory
                if [ "$target" != "$HOME/Omd/Students/Omd/Revision/Agriculture" ]; then
                    echo "$new_lines" >> "$target/$hidden_file"
                fi
            done
        fi
    fi
    # Move the current file to make it hidden
    mv "$file" "$hidden_file"
done
cd - > /dev/null 2>&1 || exit

SRC1="$HOME/Omd/Students/Omd/Exercise/Agriculture"
DEST1="$HOME/Omd/Exercise/Agriculture"
SRC2="$HOME/Omd/Students/Omd/Revision/Agriculture"
DEST2="$HOME/Omd/Revision/Agriculture"
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
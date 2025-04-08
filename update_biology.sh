#!/usr/bin/env bash
# set -x
# List of URLs for each section
section1=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.1.introduction_to_biology.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.2.cells.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.3.classification.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.4.the_five_kingdoms_of_living_organisms.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.5.viruses.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.6.insects.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.7.flowering_plants.txt"
)
section1a=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.1.introduction_to_biology.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.2.cells.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.3.classification.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.4.the_five_kingdoms_of_living_organisms.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.5.viruses.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.6.insects.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.7.flowering_plants.ans.txt"
)
section1b=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.1.introduction_to_biology.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.2.cells.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.3.classification.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.4.the_five_kingdoms_of_living_organisms.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.5.viruses.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.6.insects.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.7.flowering_plants.qns.txt"
)
section2=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.1.physical_and_chemical_properties_of_soil.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.2.soil_erosion_and_conservation.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.3.nutrition_types_and_nutrient_compounds.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.4.nutrition_in_green_plants.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.5.nutrition_in_mammals.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.6.transport_in_plants.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.7.transport_in_animals.txt"
)
section2a=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.1.physical_and_chemical_properties_of_soil.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.2.soil_erosion_and_conservation.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.3.nutrition_types_and_nutrient_compounds.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.4.nutrition_in_green_plants.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.5.nutrition_in_mammals.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.6.transport_in_plants.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.7.transport_in_animals.ans.txt"
)
section2b=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.1.physical_and_chemical_properties_of_soil.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.2.soil_erosion_and_conservation.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.3.nutrition_types_and_nutrient_compounds.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.4.nutrition_in_green_plants.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.5.nutrition_in_mammals.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.6.transport_in_plants.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.7.transport_in_animals.qns.txt"
)
section3=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.1.gaseous_exchange.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.2.aerobic_and_anaerobic_respiration.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.3.excretion_in_animals.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.4.chemical_coordination_in_humans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.5.nervous_coordination_in_humans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.6.receptor_organs_in_man.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.7.locomotion_in_mammals.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.8.growth_in_plants_and_animals.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.9.development_in_plants_and_animals.txt"
)
section3a=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.1.gaseous_exchange.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.2.aerobic_and_anaerobic_respiration.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.3.excretion_in_animals.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.4.chemical_coordination_in_humans.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.5.nervous_coordination_in_humans.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.6.receptor_organs_in_man.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.7.locomotion_in_mammals.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.8.growth_in_plants_and_animals.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.9.development_in_plants_and_animals.ans.txt"
)
section3b=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.1.gaseous_exchange.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.2.aerobic_and_anaerobic_respiration.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.3.excretion_in_animals.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.4.chemical_coordination_in_humans.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.5.nervous_coordination_in_humans.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.6.receptor_organs_in_man.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.7.locomotion_in_mammals.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.8.growth_in_plants_and_animals.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.9.development_in_plants_and_animals.qns.txt"
)
section4=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.1.asexual_reproduction_in_plants_vegetative_reproduction.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.2.sexual_reproduction_in_plants.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.3.sexual_reproduction_in_humans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.4.inheritance.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.5.variation_and_selection.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.6.concept_of_ecology.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.7.food_chains_and_food_webs.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.8.associations_in_biological_communities.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.9.humans_and_the_natural_environment.txt"
)
section4a=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.1.asexual_reproduction_in_plants_vegetative_reproduction.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.2.sexual_reproduction_in_plants.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.3.sexual_reproduction_in_humans.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.4.inheritance.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.5.variation_and_selection.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.6.concept_of_ecology.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.7.food_chains_and_food_webs.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.8.associations_in_biological_communities.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.9.humans_and_the_natural_environment.ans.txt"
)
section4b=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.1.asexual_reproduction_in_plants_vegetative_reproduction.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.2.sexual_reproduction_in_plants.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.3.sexual_reproduction_in_humans.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.4.inheritance.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.5.variation_and_selection.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.6.concept_of_ecology.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.7.food_chains_and_food_webs.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.8.associations_in_biological_communities.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.9.humans_and_the_natural_environment.qns.txt"
)
section5=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/biology_samples.docx"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/e_o_c_biology.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/e_o_c_biology_1.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/e_o_c_biology_1_samples_1.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/e_o_c_biology_2.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/e_o_c_biology_2_samples_1.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/e_o_c_biology_3.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/e_o_c_biology_3_samples_1.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/e_o_c_biology_4.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/e_o_c_biology_4_samples_1.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/e_o_c_biology_5.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/e_o_c_biology_5_samples_1.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/e_o_c_biology_6.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/e_o_c_biology_6_samples_1.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/e_o_c_biology_7.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/e_o_c_biology_7_samples_1.txt"
)
# Function to download s from a list of URLs
download_s() {
    local urls=("$@")
    for url in "${urls[@]}"; do
        curl -O -L "$url" || echo -e "\n\nError fetching material for this tutorial: $url \c"
    done
}
# Download s for each section
cd Notes/Biology/ || exit
download_s "${section1[@]}"
cd - > /dev/null 2>&1 || exit
# For Class 1
mkdir -p Students/Omd/Exercise/Biology/S1/Downloads
cd Students/Omd/Exercise/Biology/S1/Downloads || exit
download_s "${section1a[@]}"
# Loop through all .txt s in the current directory
for  in *.txt; do
    # Define the similar  in the previous directory
    similar_="../$"
    # Check if the similar  exists in the previous directory
    if [ -f "$similar_" ]; then
        # Compare the current  with the similar one and capture new lines
        new_lines=$(diff --new-line-format="%L" --unchanged-line-format="" "$" "$similar_")
        # If there are new lines, append them to the target s
        if [ -n "$new_lines" ]; then
            # Define base directory for searching
            base_directory="$HOME/Omd"
            # Find target directories to append new lines
            find "$base_directory" -type d -path "*/Exercise/Biology/S1" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Exercise/Biology/S1" ]; then
                    echo "$new_lines" >> "$target/$"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Exercise/Biology/S1"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Exercise/Biology/S1/Downloads
mkdir -p Students/Omd/Revision/Biology/S1/Downloads
cd Students/Omd/Revision/Biology/S1/Downloads || exit
download_s "${section1b[@]}"
# Loop through all .txt s in the current directory
for  in *.txt; do
    # Define the similar  in the previous directory
    similar_="../$"
    # Check if the similar  exists in the previous directory
    if [ -f "$similar_" ]; then
        # Compare the current  with the similar one and capture new lines
        new_lines=$(diff --new-line-format="%L" --unchanged-line-format="" "$" "$similar_")
        # If there are new lines, append them to the target s
        if [ -n "$new_lines" ]; then
            # Define base directory for searching
            base_directory="$HOME/Omd"
            # Find target directories to append new lines
            find "$base_directory" -type d -path "*/Revision/Biology/S1" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Revision/Biology/S1" ]; then
                    echo "$new_lines" >> "$target/$"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Revision/Biology/S1"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Revision/Biology/S1/Downloads
cd Notes/Biology/ || exit
download_s "${section2[@]}"
cd - > /dev/null 2>&1 || exit
# For Class 2
mkdir -p Students/Omd/Exercise/Biology/S2/Downloads
cd Students/Omd/Exercise/Biology/S2/Downloads || exit
download_s "${section2a[@]}"
# Loop through all .txt s in the current directory
for  in *.txt; do
    similar_="../$"
    if [ -f "$similar_" ]; then
        new_lines=$(diff --new-line-format="%L" --unchanged-line-format="" "$" "$similar_")
        if [ -n "$new_lines" ]; then
            base_directory="$HOME/Omd"
            find "$base_directory" -type d -path "*/Exercise/Biology/S2" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Exercise/Biology/S2" ]; then
                    echo "$new_lines" >> "$target/$"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Exercise/Biology/S2"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Exercise/Biology/S2/Downloads
mkdir -p Students/Omd/Revision/Biology/S2/Downloads
cd Students/Omd/Revision/Biology/S2/Downloads || exit
download_s "${section2b[@]}"
for  in *.txt; do
    similar_="../$"
    if [ -f "$similar_" ]; then
        new_lines=$(diff --new-line-format="%L" --unchanged-line-format="" "$" "$similar_")
        if [ -n "$new_lines" ]; then
            base_directory="$HOME/Omd"
            find "$base_directory" -type d -path "*/Revision/Biology/S2" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Revision/Biology/S2" ]; then
                    echo "$new_lines" >> "$target/$"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Revision/Biology/S2"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Revision/Biology/S2/Downloads
cd Notes/Biology/ || exit
download_s "${section3[@]}"
cd - > /dev/null 2>&1 || exit
# For Class 3
mkdir -p Students/Omd/Exercise/Biology/S3/Downloads
cd Students/Omd/Exercise/Biology/S3/Downloads || exit
download_s "${section3a[@]}"
for  in *.txt; do
    similar_="../$"
    if [ -f "$similar_" ]; then
        new_lines=$(diff --new-line-format="%L" --unchanged-line-format="" "$" "$similar_")
        if [ -n "$new_lines" ]; then
            base_directory="$HOME/Omd"
            find "$base_directory" -type d -path "*/Exercise/Biology/S3" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Exercise/Biology/S3" ]; then
                    echo "$new_lines" >> "$target/$"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Exercise/Biology/S3"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Exercise/Biology/S3/Downloads
mkdir -p Students/Omd/Revision/Biology/S3/Downloads
cd Students/Omd/Revision/Biology/S3/Downloads || exit
download_s "${section3b[@]}"
for  in *.txt; do
    similar_="../$"
    if [ -f "$similar_" ]; then
        new_lines=$(diff --new-line-format="%L" --unchanged-line-format="" "$" "$similar_")
        if [ -n "$new_lines" ]; then
            base_directory="$HOME/Omd"
            find "$base_directory" -type d -path "*/Revision/Biology/S3" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Revision/Biology/S3" ]; then
                    echo "$new_lines" >> "$target/$"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Revision/Biology/S3"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Revision/Biology/S3/Downloads
cd Notes/Biology/ || exit
download_s "${section4[@]}"
cd - > /dev/null 2>&1 || exit
# For Class 4
mkdir -p Students/Omd/Exercise/Biology/S4/Downloads
cd Students/Omd/Exercise/Biology/S4/Downloads || exit
download_s "${section4a[@]}"
for  in *.txt; do
    similar_="../$"
    if [ -f "$similar_" ]; then
        new_lines=$(diff --new-line-format="%L" --unchanged-line-format="" "$" "$similar_")
        if [ -n "$new_lines" ]; then
            base_directory="$HOME/Omd"
            find "$base_directory" -type d -path "*/Exercise/Biology/S4" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Exercise/Biology/S4" ]; then
                    echo "$new_lines" >> "$target/$"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Exercise/Biology/S4"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Exercise/Biology/S4/Downloads
mkdir -p Students/Omd/Revision/Biology/S4/Downloads
cd Students/Omd/Revision/Biology/S4/Downloads || exit
download_s "${section4b[@]}"
for  in *.txt; do
    similar_="../$"
    if [ -f "$similar_" ]; then
        new_lines=$(diff --new-line-format="%L" --unchanged-line-format="" "$" "$similar_")
        if [ -n "$new_lines" ]; then
            base_directory="$HOME/Omd"
            find "$base_directory" -type d -path "*/Revision/Biology/S4" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Revision/Biology/S4" ]; then
                    echo "$new_lines" >> "$target/$"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Revision/Biology/S4"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Revision/Biology/S4/Downloads
# The Items
cd Students/Omd/Revision/Biology/ || exit
download_s "${section5[@]}"
mv biology_samples.docx .biology_samples.docx
for  in e_o_c_biology.txt e_o_c_biology_1.txt e_o_c_biology_1_samples_1.txt e_o_c_biology_2.txt e_o_c_biology_2_samples_1.txt e_o_c_biology_3.txt e_o_c_biology_3_samples_1.txt e_o_c_biology_4.txt e_o_c_biology_4_samples_1.txt e_o_c_biology_5.txt e_o_c_biology_5_samples_1.txt e_o_c_biology_6.txt e_o_c_biology_6_samples_1.txt e_o_c_biology_7.txt e_o_c_biology_7_samples_1.txt; do
    hidden_=".$"
    if [ -f "$hidden_" ]; then
        # Compare the current  with the hidden one and capture new lines
        new_lines=$(diff --new-line-format="%L" --unchanged-line-format="" "$" "$hidden_")
        # If there are new lines, append them to the target s
        if [ -n "$new_lines" ]; then
            # Define base directory for searching
            base_directory="$HOME/Omd"
            # Find target directories and append new lines
            find "$base_directory" -type d -path "*/Revision/Biology" | while read -r target; do
                # Ensure we are not appending to the source directory
                if [ "$target" != "$HOME/Omd/Students/Omd/Revision/Biology" ]; then
                    echo "$new_lines" >> "$target/$hidden_"
                fi
            done
        fi
    fi
    # Move the current  to make it hidden
    mv "$" "$hidden_"
done
cd - > /dev/null 2>&1 || exit

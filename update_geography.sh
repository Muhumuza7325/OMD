#!/usr/bin/env bash
# set -x
# List of URLs for each section
section1=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/GEOG/1.1.introduction.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/GEOG/1.2.showing_the_local_area_on_a_map.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/GEOG/1.3.maps_and_their_uses.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/GEOG/1.4.ways_of_studying_geography.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/GEOG/1.5.the_earth_and_its_movements.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/GEOG/1.6.weather_and_climate.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/GEOG/1.7.location_size_and_relief_regions_of_east_africa.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/GEOG/1.8.formation_of_major_landforms_and_drainage_in_east_africa.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/GEOG/1.9.climate_and_natural_vegetation_of_east_africa.txt"
)
section1a=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/GEOG/1.1.introduction.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/GEOG/1.2.showing_the_local_area_on_a_map.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/GEOG/1.3.maps_and_their_uses.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/GEOG/1.4.ways_of_studying_geography.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/GEOG/1.5.the_earth_and_its_movements.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/GEOG/1.6.weather_and_climate.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/GEOG/1.7.location_size_and_relief_regions_of_east_africa.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/GEOG/1.8.formation_of_major_landforms_and_drainage_in_east_africa.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/GEOG/1.9.climate_and_natural_vegetation_of_east_africa.ans.txt"
)
section1b=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/GEOG/1.1.introduction.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/GEOG/1.2.showing_the_local_area_on_a_map.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/GEOG/1.3.maps_and_their_uses.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/GEOG/1.4.ways_of_studying_geography.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/GEOG/1.5.the_earth_and_its_movements.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/GEOG/1.6.weather_and_climate.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/GEOG/1.7.location_size_and_relief_regions_of_east_africa.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/GEOG/1.8.formation_of_major_landforms_and_drainage_in_east_africa.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/GEOG/1.9.climate_and_natural_vegetation_of_east_africa.qns.txt"
)
section2=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/GEOG/2.1.climate_change_in_east_africa_and_the_world.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/GEOG/2.2.major_climatic_zones_of_the_world.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/GEOG/2.3.mining_in_east_africa.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/GEOG/2.4.development_of_manufacturing_industries_in_east_africa.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/GEOG/2.5.sustainable_use_of_fisheries_resources_in_east_africa.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/GEOG/2.6.wildlife_conservation_and_tourism_in_east_africa.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/GEOG/2.7.population_and_urbanisation_in_east_africa.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/GEOG/2.8.transport_and_communication_in_east_africa.txt"
)
section2a=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/GEOG/2.1.climate_change_in_east_africa_and_the_world.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/GEOG/2.2.major_climatic_zones_of_the_world.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/GEOG/2.3.mining_in_east_africa.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/GEOG/2.4.development_of_manufacturing_industries_in_east_africa.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/GEOG/2.5.sustainable_use_of_fisheries_resources_in_east_africa.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/GEOG/2.6.wildlife_conservation_and_tourism_in_east_africa.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/GEOG/2.7.population_and_urbanisation_in_east_africa.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/GEOG/2.8.transport_and_communication_in_east_africa.ans.txt"
)
section2b=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/GEOG/2.1.climate_change_in_east_africa_and_the_world.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/GEOG/2.2.major_climatic_zones_of_the_world.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/GEOG/2.3.mining_in_east_africa.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/GEOG/2.4.development_of_manufacturing_industries_in_east_africa.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/GEOG/2.5.sustainable_use_of_fisheries_resources_in_east_africa.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/GEOG/2.6.wildlife_conservation_and_tourism_in_east_africa.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/GEOG/2.7.population_and_urbanisation_in_east_africa.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/GEOG/2.8.transport_and_communication_in_east_africa.qns.txt"
)
section3=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/GEOG/3.1.trade_within_and_outside_east_africa.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/GEOG/3.2.further_skills_in_map_reading_and_map_use.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/GEOG/3.3.location_and_size_of_africa.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/GEOG/3.4.the_relief_regions_and_drainage_of_africa.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/GEOG/3.5.the_climate_and_vegetation_of_africa.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/GEOG/3.6.forests_forest_resources_and_forestry_in_africa.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/GEOG/3.7.irrigation_farming_in_africa_and_china.txt"
)
section3a=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/GEOG/3.1.trade_within_and_outside_east_africa.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/GEOG/3.2.further_skills_in_map_reading_and_map_use.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/GEOG/3.3.location_and_size_of_africa.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/GEOG/3.4.the_relief_regions_and_drainage_of_africa.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/GEOG/3.5.the_climate_and_vegetation_of_africa.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/GEOG/3.6.forests_forest_resources_and_forestry_in_africa.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/GEOG/3.7.irrigation_farming_in_africa_and_china.ans.txt"
)
section3b=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/GEOG/3.1.trade_within_and_outside_east_africa.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/GEOG/3.2.further_skills_in_map_reading_and_map_use.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/GEOG/3.3.location_and_size_of_africa.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/GEOG/3.4.the_relief_regions_and_drainage_of_africa.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/GEOG/3.5.the_climate_and_vegetation_of_africa.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/GEOG/3.6.forests_forest_resources_and_forestry_in_africa.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/GEOG/3.7.irrigation_farming_in_africa_and_china.qns.txt"
)
section4=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/GEOG/4.1.mineral_resources_and_mining_in_africa.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/GEOG/4.2.industrial_development_in_africa.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/GEOG/4.3.mining_and_industrial_development_in_china.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/GEOG/4.4.population_and_urbanisation_in_africa.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/GEOG/4.5.population_and_urbanisation_in_china.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/GEOG/4.6.development_of_transport_communication_and_trade_in_africa.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/GEOG/4.7.trade_between_africa_and_the_rest_of_the_world.txt"
)
section4a=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/GEOG/4.1.mineral_resources_and_mining_in_africa.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/GEOG/4.2.industrial_development_in_africa.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/GEOG/4.3.mining_and_industrial_development_in_china.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/GEOG/4.4.population_and_urbanisation_in_africa.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/GEOG/4.5.population_and_urbanisation_in_china.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/GEOG/4.6.development_of_transport_communication_and_trade_in_africa.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/GEOG/4.7.trade_between_africa_and_the_rest_of_the_world.ans.txt"
)
section4b=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/GEOG/4.1.mineral_resources_and_mining_in_africa.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/GEOG/4.2.industrial_development_in_africa.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/GEOG/4.3.mining_and_industrial_development_in_china.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/GEOG/4.4.population_and_urbanisation_in_africa.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/GEOG/4.5.population_and_urbanisation_in_china.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/GEOG/4.6.development_of_transport_communication_and_trade_in_africa.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/GEOG/4.7.trade_between_africa_and_the_rest_of_the_world.qns.txt"
)
section5=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/GEOG/geography_samples.docx"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/GEOG/e_o_c_geography.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/GEOG/e_o_c_geography_1.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/GEOG/e_o_c_geography_1_samples_1.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/GEOG/e_o_c_geography_2.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/GEOG/e_o_c_geography_2_samples_1.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/GEOG/e_o_c_geography_3.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/GEOG/e_o_c_geography_3_samples_1.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/GEOG/e_o_c_geography_4.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/GEOG/e_o_c_geography_4_samples_1.txt"
)
# Function to download files from a list of URLs
download_files() {
    local urls=("$@")
    for url in "${urls[@]}"; do
        curl -O -L "$url" || echo -e "\n\nError fetching material for this tutorial: $url \c"
    done
}
# Download files for each section
cd Notes/Geography/ || exit
download_files "${section1[@]}"
cd - > /dev/null 2>&1 || exit
# For Class 1
mkdir -p Students/Omd/Exercise/Geography/S1/Downloads
cd Students/Omd/Exercise/Geography/S1/Downloads || exit
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
            find "$base_directory" -type d -path "*/Exercise/Geography/S1" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Exercise/Geography/S1" ]; then
                    echo "$new_lines" >> "$target/$file"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Exercise/Geography/S1"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Exercise/Geography/S1/Downloads
mkdir -p Students/Omd/Revision/Geography/S1/Downloads
cd Students/Omd/Revision/Geography/S1/Downloads || exit
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
            find "$base_directory" -type d -path "*/Revision/Geography/S1" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Revision/Geography/S1" ]; then
                    echo "$new_lines" >> "$target/$file"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Revision/Geography/S1"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Revision/Geography/S1/Downloads
cd Notes/Geography/ || exit
download_files "${section2[@]}"
cd - > /dev/null 2>&1 || exit
# For Class 2
mkdir -p Students/Omd/Exercise/Geography/S2/Downloads
cd Students/Omd/Exercise/Geography/S2/Downloads || exit
download_files "${section2a[@]}"
# Loop through all .txt files in the current directory
for file in *.txt; do
    similar_file="../$file"
    if [ -f "$similar_file" ]; then
        new_lines=$(diff --new-line-format="%L" --unchanged-line-format="" "$file" "$similar_file")
        if [ -n "$new_lines" ]; then
            base_directory="$HOME/Omd"
            find "$base_directory" -type d -path "*/Exercise/Geography/S2" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Exercise/Geography/S2" ]; then
                    echo "$new_lines" >> "$target/$file"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Exercise/Geography/S2"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Exercise/Geography/S2/Downloads
mkdir -p Students/Omd/Revision/Geography/S2/Downloads
cd Students/Omd/Revision/Geography/S2/Downloads || exit
download_files "${section2b[@]}"
for file in *.txt; do
    similar_file="../$file"
    if [ -f "$similar_file" ]; then
        new_lines=$(diff --new-line-format="%L" --unchanged-line-format="" "$file" "$similar_file")
        if [ -n "$new_lines" ]; then
            base_directory="$HOME/Omd"
            find "$base_directory" -type d -path "*/Revision/Geography/S2" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Revision/Geography/S2" ]; then
                    echo "$new_lines" >> "$target/$file"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Revision/Geography/S2"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Revision/Geography/S2/Downloads
cd Notes/Geography/ || exit
download_files "${section3[@]}"
cd - > /dev/null 2>&1 || exit
# For Class 3
mkdir -p Students/Omd/Exercise/Geography/S3/Downloads
cd Students/Omd/Exercise/Geography/S3/Downloads || exit
download_files "${section3a[@]}"
for file in *.txt; do
    similar_file="../$file"
    if [ -f "$similar_file" ]; then
        new_lines=$(diff --new-line-format="%L" --unchanged-line-format="" "$file" "$similar_file")
        if [ -n "$new_lines" ]; then
            base_directory="$HOME/Omd"
            find "$base_directory" -type d -path "*/Exercise/Geography/S3" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Exercise/Geography/S3" ]; then
                    echo "$new_lines" >> "$target/$file"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Exercise/Geography/S3"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Exercise/Geography/S3/Downloads
mkdir -p Students/Omd/Revision/Geography/S3/Downloads
cd Students/Omd/Revision/Geography/S3/Downloads || exit
download_files "${section3b[@]}"
for file in *.txt; do
    similar_file="../$file"
    if [ -f "$similar_file" ]; then
        new_lines=$(diff --new-line-format="%L" --unchanged-line-format="" "$file" "$similar_file")
        if [ -n "$new_lines" ]; then
            base_directory="$HOME/Omd"
            find "$base_directory" -type d -path "*/Revision/Geography/S3" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Revision/Geography/S3" ]; then
                    echo "$new_lines" >> "$target/$file"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Revision/Geography/S3"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Revision/Geography/S3/Downloads
cd Notes/Geography/ || exit
download_files "${section4[@]}"
cd - > /dev/null 2>&1 || exit
# For Class 4
mkdir -p Students/Omd/Exercise/Geography/S4/Downloads
cd Students/Omd/Exercise/Geography/S4/Downloads || exit
download_files "${section4a[@]}"
for file in *.txt; do
    similar_file="../$file"
    if [ -f "$similar_file" ]; then
        new_lines=$(diff --new-line-format="%L" --unchanged-line-format="" "$file" "$similar_file")
        if [ -n "$new_lines" ]; then
            base_directory="$HOME/Omd"
            find "$base_directory" -type d -path "*/Exercise/Geography/S4" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Exercise/Geography/S4" ]; then
                    echo "$new_lines" >> "$target/$file"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Exercise/Geography/S4"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Exercise/Geography/S4/Downloads
mkdir -p Students/Omd/Revision/Geography/S4/Downloads
cd Students/Omd/Revision/Geography/S4/Downloads || exit
download_files "${section4b[@]}"
for file in *.txt; do
    similar_file="../$file"
    if [ -f "$similar_file" ]; then
        new_lines=$(diff --new-line-format="%L" --unchanged-line-format="" "$file" "$similar_file")
        if [ -n "$new_lines" ]; then
            base_directory="$HOME/Omd"
            find "$base_directory" -type d -path "*/Revision/Geography/S4" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Revision/Geography/S4" ]; then
                    echo "$new_lines" >> "$target/$file"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Revision/Geography/S4"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Revision/Geography/S4/Downloads
# The Items
cd Students/Omd/Revision/Geography/ || exit
download_files "${section5[@]}"
mv geography_samples.docx .geography_samples.docx
for file in e_o_c_geography.txt e_o_c_geography_1.txt e_o_c_geography_1_samples_1.txt e_o_c_geography_2.txt e_o_c_geography_2_samples_1.txt e_o_c_geography_3.txt e_o_c_geography_3_samples_1.txt e_o_c_geography_4.txt e_o_c_geography_4_samples_1.txt; do
    hidden_file=".$file"
    if [ -f "$hidden_file" ]; then
        # Compare the current file with the hidden one and capture new lines
        new_lines=$(diff --new-line-format="%L" --unchanged-line-format="" "$file" "$hidden_file")
        # If there are new lines, append them to the target files
        if [ -n "$new_lines" ]; then
            # Define base directory for searching
            base_directory="$HOME/Omd"
            # Find target directories and append new lines
            find "$base_directory" -type d -path "*/Revision/Geography" | while read -r target; do
                # Ensure we are not appending to the source directory
                if [ "$target" != "$HOME/Omd/Students/Omd/Revision/Geography" ]; then
                    echo "$new_lines" >> "$target/$hidden_file"
                fi
            done
        fi
    fi
    # Move the current file to make it hidden
    mv "$file" "$hidden_file"
done
cd - > /dev/null 2>&1 || exit

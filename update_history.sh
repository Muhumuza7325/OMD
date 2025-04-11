#!/usr/bin/env bash
# set -x
# List of URLs for each section
section1=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.1.finding_out_about_our_past.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.2.the_origin_of_man.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.3.migration_and_settlement_into_east_africa_since_1000_ad.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.4.culture_and_key_ethnic_groups_in_east_africa.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.5.state_formation_in_east_africa.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.6.religions_in_east_africa.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.7.local_and_external_trade_contacts_in_east_africa_before_1880.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.8.scramble_partition_and_colonisation_of_east_africa.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.9.response_to_the_establishment_of_colonial_rule_in_east_africa.txt"
)
section1a=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.1.finding_out_about_our_past.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.2.the_origin_of_man.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.3.migration_and_settlement_into_east_africa_since_1000_ad.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.4.culture_and_key_ethnic_groups_in_east_africa.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.5.state_formation_in_east_africa.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.6.religions_in_east_africa.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.7.local_and_external_trade_contacts_in_east_africa_before_1880.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.8.scramble_partition_and_colonisation_of_east_africa.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.9.response_to_the_establishment_of_colonial_rule_in_east_africa.ans.txt"
)
section1b=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.1.finding_out_about_our_past.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.2.the_origin_of_man.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.3.migration_and_settlement_into_east_africa_since_1000_ad.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.4.culture_and_key_ethnic_groups_in_east_africa.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.5.state_formation_in_east_africa.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.6.religions_in_east_africa.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.7.local_and_external_trade_contacts_in_east_africa_before_1880.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.8.scramble_partition_and_colonisation_of_east_africa.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.9.response_to_the_establishment_of_colonial_rule_in_east_africa.qns.txt"
)
section2=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.1.the_colonial_administrative_systems_in_east_africa.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.2.the_colonial_economy_in_east_africa.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.3.world_wars_and_their_impact_in_east_africa.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.4.struggle_for_indepedence_in_east_africa.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.5.post_indepedence_socio-economic_challenges_in_east_africa.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.6.civil_society_and_non-government_organisations_in_east_africa.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.7.changing_land_tenure_system_in_east_africa.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.8.key_personalities_in_the_history_of_east_africa_before_independence.txt"
)
section2a=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.1.the_colonial_administrative_systems_in_east_africa.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.2.the_colonial_economy_in_east_africa.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.3.world_wars_and_their_impact_in_east_africa.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.4.struggle_for_indepedence_in_east_africa.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.5.post_indepedence_socio-economic_challenges_in_east_africa.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.6.civil_society_and_non-government_organisations_in_east_africa.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.7.changing_land_tenure_system_in_east_africa.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.8.key_personalities_in_the_history_of_east_africa_before_independence.ans.txt"
)
section2b=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.1.the_colonial_administrative_systems_in_east_africa.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.2.the_colonial_economy_in_east_africa.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.3.world_wars_and_their_impact_in_east_africa.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.4.struggle_for_indepedence_in_east_africa.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.5.post_indepedence_socio-economic_challenges_in_east_africa.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.6.civil_society_and_non-government_organisations_in_east_africa.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.7.changing_land_tenure_system_in_east_africa.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.8.key_personalities_in_the_history_of_east_africa_before_independence.qns.txt"
)
section3=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.1.the_structure_of_government.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.2.the_local_government_systems_in_uganda.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.3.constitutionalism_in_uganda.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.4.democracy_and_leadership_in_east_africa.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.5.the_role_of_the_united_nations_in_development_and_its_impact_on_uganda.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.6.the_evolution_of_human_rights_in_uganda.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.7.the_post-independence_liberation_struggles_in_uganda.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.8.patriotism_in_uganda.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.9.key_contributors_to_nation_building_in_the_post-colonial_uganda.txt"
)
section3a=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.1.the_structure_of_government.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.2.the_local_government_systems_in_uganda.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.3.constitutionalism_in_uganda.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.4.democracy_and_leadership_in_east_africa.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.5.the_role_of_the_united_nations_in_development_and_its_impact_on_uganda.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.6.the_evolution_of_human_rights_in_uganda.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.7.the_post-independence_liberation_struggles_in_uganda.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.8.patriotism_in_uganda.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.9.key_contributors_to_nation_building_in_the_post-colonial_uganda.ans.txt"
)
section3b=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.1.the_structure_of_government.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.2.the_local_government_systems_in_uganda.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.3.constitutionalism_in_uganda.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.4.democracy_and_leadership_in_east_africa.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.5.the_role_of_the_united_nations_in_development_and_its_impact_on_uganda.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.6.the_evolution_of_human_rights_in_uganda.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.7.the_post-independence_liberation_struggles_in_uganda.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.8.patriotism_in_uganda.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.9.key_contributors_to_nation_building_in_the_post-colonial_uganda.qns.txt"
)
section4=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.1.lessons_from_world_economic_transformations.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.2.evolution_of_pan-africanism.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.3.neo-colonialism_in_east_africa.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.4.globalisation.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.5.the_struggle_and_liberation_of_south_africa.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.6.peace_and_conflict_resolution_in_east_africa.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.7.topical_reviews.txt"
)
section4a=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.1.lessons_from_world_economic_transformations.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.2.evolution_of_pan-africanism.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.3.neo-colonialism_in_east_africa.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.4.globalisation.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.5.the_struggle_and_liberation_of_south_africa.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.6.peace_and_conflict_resolution_in_east_africa.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.7.topical_reviews.ans.txt"
)
section4b=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.1.lessons_from_world_economic_transformations.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.2.evolution_of_pan-africanism.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.3.neo-colonialism_in_east_africa.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.4.globalisation.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.5.the_struggle_and_liberation_of_south_africa.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.6.peace_and_conflict_resolution_in_east_africa.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.7.topical_reviews.qns.txt"
)
section5=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/history_samples.docx"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/e_o_c_history.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/e_o_c_history_1.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/e_o_c_history_1_samples_1.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/e_o_c_history_2.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/e_o_c_history_2_samples_1.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/e_o_c_history_3.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/e_o_c_history_3_samples_1.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/e_o_c_history_4.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/e_o_c_history_4_samples_1.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/e_o_c_history_5.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/e_o_c_history_5_samples_1.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/e_o_c_history_6.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/e_o_c_history_6_samples_1.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/e_o_c_history_7.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/e_o_c_history_7_samples_1.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/e_o_c_history_8.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/e_o_c_history_8_samples_1.txt"
)
# Function to download s from a list of URLs
download_s() {
    local urls=("$@")
    for url in "${urls[@]}"; do
        curl -O -L "$url" || echo -e "\n\nError fetching material for this tutorial: $url \c"
    done
}
# Download s for each section
cd Notes/History/ || exit
download_s "${section1[@]}"
cd - > /dev/null 2>&1 || exit
# For Class 1
mkdir -p Students/Omd/Exercise/History/S1/Downloads
cd Students/Omd/Exercise/History/S1/Downloads || exit
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
            find "$base_directory" -type d -path "*/Exercise/History/S1" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Exercise/History/S1" ]; then
                    echo "$new_lines" >> "$target/$"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Exercise/History/S1"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Exercise/History/S1/Downloads
mkdir -p Students/Omd/Revision/History/S1/Downloads
cd Students/Omd/Revision/History/S1/Downloads || exit
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
            find "$base_directory" -type d -path "*/Revision/History/S1" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Revision/History/S1" ]; then
                    echo "$new_lines" >> "$target/$"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Revision/History/S1"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Revision/History/S1/Downloads
cd Notes/History/ || exit
download_s "${section2[@]}"
cd - > /dev/null 2>&1 || exit
# For Class 2
mkdir -p Students/Omd/Exercise/History/S2/Downloads
cd Students/Omd/Exercise/History/S2/Downloads || exit
download_s "${section2a[@]}"
# Loop through all .txt s in the current directory
for  in *.txt; do
    similar_="../$"
    if [ -f "$similar_" ]; then
        new_lines=$(diff --new-line-format="%L" --unchanged-line-format="" "$" "$similar_")
        if [ -n "$new_lines" ]; then
            base_directory="$HOME/Omd"
            find "$base_directory" -type d -path "*/Exercise/History/S2" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Exercise/History/S2" ]; then
                    echo "$new_lines" >> "$target/$"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Exercise/History/S2"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Exercise/History/S2/Downloads
mkdir -p Students/Omd/Revision/History/S2/Downloads
cd Students/Omd/Revision/History/S2/Downloads || exit
download_s "${section2b[@]}"
for  in *.txt; do
    similar_="../$"
    if [ -f "$similar_" ]; then
        new_lines=$(diff --new-line-format="%L" --unchanged-line-format="" "$" "$similar_")
        if [ -n "$new_lines" ]; then
            base_directory="$HOME/Omd"
            find "$base_directory" -type d -path "*/Revision/History/S2" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Revision/History/S2" ]; then
                    echo "$new_lines" >> "$target/$"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Revision/History/S2"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Revision/History/S2/Downloads
cd Notes/History/ || exit
download_s "${section3[@]}"
cd - > /dev/null 2>&1 || exit
# For Class 3
mkdir -p Students/Omd/Exercise/History/S3/Downloads
cd Students/Omd/Exercise/History/S3/Downloads || exit
download_s "${section3a[@]}"
for  in *.txt; do
    similar_="../$"
    if [ -f "$similar_" ]; then
        new_lines=$(diff --new-line-format="%L" --unchanged-line-format="" "$" "$similar_")
        if [ -n "$new_lines" ]; then
            base_directory="$HOME/Omd"
            find "$base_directory" -type d -path "*/Exercise/History/S3" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Exercise/History/S3" ]; then
                    echo "$new_lines" >> "$target/$"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Exercise/History/S3"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Exercise/History/S3/Downloads
mkdir -p Students/Omd/Revision/History/S3/Downloads
cd Students/Omd/Revision/History/S3/Downloads || exit
download_s "${section3b[@]}"
for  in *.txt; do
    similar_="../$"
    if [ -f "$similar_" ]; then
        new_lines=$(diff --new-line-format="%L" --unchanged-line-format="" "$" "$similar_")
        if [ -n "$new_lines" ]; then
            base_directory="$HOME/Omd"
            find "$base_directory" -type d -path "*/Revision/History/S3" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Revision/History/S3" ]; then
                    echo "$new_lines" >> "$target/$"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Revision/History/S3"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Revision/History/S3/Downloads
cd Notes/History/ || exit
download_s "${section4[@]}"
cd - > /dev/null 2>&1 || exit
# For Class 4
mkdir -p Students/Omd/Exercise/History/S4/Downloads
cd Students/Omd/Exercise/History/S4/Downloads || exit
download_s "${section4a[@]}"
for  in *.txt; do
    similar_="../$"
    if [ -f "$similar_" ]; then
        new_lines=$(diff --new-line-format="%L" --unchanged-line-format="" "$" "$similar_")
        if [ -n "$new_lines" ]; then
            base_directory="$HOME/Omd"
            find "$base_directory" -type d -path "*/Exercise/History/S4" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Exercise/History/S4" ]; then
                    echo "$new_lines" >> "$target/$"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Exercise/History/S4"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Exercise/History/S4/Downloads
mkdir -p Students/Omd/Revision/History/S4/Downloads
cd Students/Omd/Revision/History/S4/Downloads || exit
download_s "${section4b[@]}"
for  in *.txt; do
    similar_="../$"
    if [ -f "$similar_" ]; then
        new_lines=$(diff --new-line-format="%L" --unchanged-line-format="" "$" "$similar_")
        if [ -n "$new_lines" ]; then
            base_directory="$HOME/Omd"
            find "$base_directory" -type d -path "*/Revision/History/S4" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Revision/History/S4" ]; then
                    echo "$new_lines" >> "$target/$"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Revision/History/S4"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Revision/History/S4/Downloads
# The Items
cd Students/Omd/Revision/History/ || exit
download_s "${section5[@]}"
mv history_samples.docx .history_samples.docx
for  in e_o_c_history.txt e_o_c_history_1.txt e_o_c_history_1_samples_1.txt e_o_c_history_2.txt e_o_c_history_2_samples_1.txt e_o_c_history_3.txt e_o_c_history_3_samples_1.txt e_o_c_history_4.txt e_o_c_history_4_samples_1.txt e_o_c_history_5.txt e_o_c_history_5_samples_1.txt e_o_c_history_6.txt e_o_c_history_6_samples_1.txt e_o_c_history_7.txt e_o_c_history_7_samples_1.txt e_o_c_history_8.txt e_o_c_history_8_samples_1.txt; do
    hidden_=".$"
    if [ -f "$hidden_" ]; then
        # Compare the current  with the hidden one and capture new lines
        new_lines=$(diff --new-line-format="%L" --unchanged-line-format="" "$" "$hidden_")
        # If there are new lines, append them to the target s
        if [ -n "$new_lines" ]; then
            # Define base directory for searching
            base_directory="$HOME/Omd"
            # Find target directories and append new lines
            find "$base_directory" -type d -path "*/Revision/History" | while read -r target; do
                # Ensure we are not appending to the source directory
                if [ "$target" != "$HOME/Omd/Students/Omd/Revision/History" ]; then
                    echo "$new_lines" >> "$target/$hidden_"
                fi
            done
        fi
    fi
    # Move the current  to make it hidden
    mv "$" "$hidden_"
done
cd - > /dev/null 2>&1 || exit
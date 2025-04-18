#!/usr/bin/env bash
# set -x

# List of URLs for each section
section1=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHEM/1.1.chemistry_and_society.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHEM/1.2.experimental_chemistry.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHEM/1.3.states_and_changes_of_states_of_matter.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHEM/1.4.using_materials.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHEM/1.5.temporary_and_permanent_changes.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHEM/1.6.mixtures_elements_and_compounds.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHEM/1.7.air.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHEM/1.8.water.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHEM/1.9.rocks_and_minerals.txt"
)

section1a=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHEM/1.1.chemistry_and_society.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHEM/1.2.experimental_chemistry.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHEM/1.3.states_and_changes_of_states_of_matter.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHEM/1.4.using_materials.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHEM/1.5.temporary_and_permanent_changes.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHEM/1.6.mixtures_elements_and_compounds.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHEM/1.7.air.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHEM/1.8.water.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHEM/1.9.rocks_and_minerals.ans.txt"
)

section1b=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHEM/1.1.chemistry_and_society.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHEM/1.2.experimental_chemistry.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHEM/1.3.states_and_changes_of_states_of_matter.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHEM/1.4.using_materials.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHEM/1.5.temporary_and_permanent_changes.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHEM/1.6.mixtures_elements_and_compounds.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHEM/1.7.air.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHEM/1.8.water.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHEM/1.9.rocks_and_minerals.qns.txt"
)

section2=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHEM/2.1.acids_and_alkalis.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHEM/2.2.salts.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHEM/2.3.the_periodic_table.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHEM/2.4.carbon_in_the_environment.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHEM/2.5.the_reactivity_series.txt"
)

section2a=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHEM/2.1.acids_and_alkalis.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHEM/2.2.salts.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHEM/2.3.the_periodic_table.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHEM/2.4.carbon_in_the_environment.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHEM/2.5.the_reactivity_series.ans.txt"
)

section2b=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHEM/2.1.acids_and_alkalis.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHEM/2.2.salts.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHEM/2.3.the_periodic_table.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHEM/2.4.carbon_in_the_environment.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHEM/2.5.the_reactivity_series.qns.txt"
)

section3=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHEM/3.1.carbon_in_life.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHEM/3.2.structures_and_bonds.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHEM/3.3.formulae_stoichiometry_and_mole_concept.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHEM/3.4.properties_and_structures_of_substances.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHEM/3.5.fossil_fuels.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHEM/3.6.chemical_reactions.txt"
)

section3a=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHEM/3.1.carbon_in_life.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHEM/3.2.structures_and_bonds.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHEM/3.3.formulae_stoichiometry_and_mole_concept.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHEM/3.4.properties_and_structures_of_substances.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHEM/3.5.fossil_fuels.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHEM/3.6.chemical_reactions.ans.txt"
)

section3b=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHEM/3.1.carbon_in_life.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHEM/3.2.structures_and_bonds.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHEM/3.3.formulae_stoichiometry_and_mole_concept.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHEM/3.4.properties_and_structures_of_substances.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHEM/3.5.fossil_fuels.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHEM/3.6.chemical_reactions.qns.txt"
)

section4=(

    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHEM/4.1.oxidation_and_reduction_reactions.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHEM/4.2.industrial_processes.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHEM/4.3.trends_in_the_periodic_table.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHEM/4.4.energy_changes_during_chemical_reactions.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHEM/4.5.chemicals_for_consumers.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHEM/4.6.nuclear_processes.txt"
)

section4a=(

    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHEM/4.1.oxidation_and_reduction_reactions.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHEM/4.2.industrial_processes.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHEM/4.3.trends_in_the_periodic_table.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHEM/4.4.energy_changes_during_chemical_reactions.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHEM/4.5.chemicals_for_consumers.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHEM/4.6.nuclear_processes.ans.txt"
)

section4b=(

    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHEM/4.1.oxidation_and_reduction_reactions.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHEM/4.2.industrial_processes.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHEM/4.3.trends_in_the_periodic_table.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHEM/4.4.energy_changes_during_chemical_reactions.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHEM/4.5.chemicals_for_consumers.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHEM/4.6.nuclear_processes.qns.txt"
)

section5=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHEM/chemistry_samples.docx"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHEM/e_o_c.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHEM/e_o_c_1.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHEM/e_o_c_1_samples_1.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHEM/e_o_c_2.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHEM/e_o_c_2_samples_1.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHEM/e_o_c_3.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHEM/e_o_c_3_samples_1.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHEM/e_o_c_4.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHEM/e_o_c_4_samples_1.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHEM/e_o_c_5.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/CHEM/e_o_c_5_samples_1.txt"
)

# Function to download files from a list of URLs
download_files() {
    local urls=("$@")
    for url in "${urls[@]}"; do
        curl -O -L "$url" || echo -e "\n\nError fetching material for this tutorial: $url \c"
    done
}

# Download files for each section

cd Notes/Chemistry/ || exit
download_files "${section1[@]}"
cd - > /dev/null 2>&1 || exit
# For Class 1
mkdir -p Students/Omd/Exercise/Chemistry/S1/Downloads
cd Students/Omd/Exercise/Chemistry/S1/Downloads || exit
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
            find "$base_directory" -type d -path "*/Exercise/Chemistry/S1" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Exercise/Chemistry/S1" ]; then
                    echo "$new_lines" >> "$target/$file"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Exercise/Chemistry/S1"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Exercise/Chemistry/S1/Downloads

mkdir -p Students/Omd/Revision/Chemistry/S1/Downloads
cd Students/Omd/Revision/Chemistry/S1/Downloads || exit
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
            find "$base_directory" -type d -path "*/Revision/Chemistry/S1" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Revision/Chemistry/S1" ]; then
                    echo "$new_lines" >> "$target/$file"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Revision/Chemistry/S1"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Revision/Chemistry/S1/Downloads
cd Notes/Chemistry/ || exit
download_files "${section2[@]}"
cd - > /dev/null 2>&1 || exit
# For Class 2
mkdir -p Students/Omd/Exercise/Chemistry/S2/Downloads
cd Students/Omd/Exercise/Chemistry/S2/Downloads || exit
download_files "${section2a[@]}"
# Loop through all .txt files in the current directory
for file in *.txt; do
    similar_file="../$file"
    if [ -f "$similar_file" ]; then
        new_lines=$(diff --new-line-format="%L" --unchanged-line-format="" "$file" "$similar_file")
        if [ -n "$new_lines" ]; then
            base_directory="$HOME/Omd"
            find "$base_directory" -type d -path "*/Exercise/Chemistry/S2" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Exercise/Chemistry/S2" ]; then
                    echo "$new_lines" >> "$target/$file"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Exercise/Chemistry/S2"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Exercise/Chemistry/S2/Downloads

mkdir -p Students/Omd/Revision/Chemistry/S2/Downloads
cd Students/Omd/Revision/Chemistry/S2/Downloads || exit
download_files "${section2b[@]}"
for file in *.txt; do
    similar_file="../$file"
    if [ -f "$similar_file" ]; then
        new_lines=$(diff --new-line-format="%L" --unchanged-line-format="" "$file" "$similar_file")
        if [ -n "$new_lines" ]; then
            base_directory="$HOME/Omd"
            find "$base_directory" -type d -path "*/Revision/Chemistry/S2" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Revision/Chemistry/S2" ]; then
                    echo "$new_lines" >> "$target/$file"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Revision/Chemistry/S2"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Revision/Chemistry/S2/Downloads
cd Notes/Chemistry/ || exit
download_files "${section3[@]}"
cd - > /dev/null 2>&1 || exit
# For Class 3
mkdir -p Students/Omd/Exercise/Chemistry/S3/Downloads
cd Students/Omd/Exercise/Chemistry/S3/Downloads || exit
download_files "${section3a[@]}"
for file in *.txt; do
    similar_file="../$file"
    if [ -f "$similar_file" ]; then
        new_lines=$(diff --new-line-format="%L" --unchanged-line-format="" "$file" "$similar_file")
        if [ -n "$new_lines" ]; then
            base_directory="$HOME/Omd"
            find "$base_directory" -type d -path "*/Exercise/Chemistry/S3" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Exercise/Chemistry/S3" ]; then
                    echo "$new_lines" >> "$target/$file"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Exercise/Chemistry/S3"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Exercise/Chemistry/S3/Downloads

mkdir -p Students/Omd/Revision/Chemistry/S3/Downloads
cd Students/Omd/Revision/Chemistry/S3/Downloads || exit
download_files "${section3b[@]}"
for file in *.txt; do
    similar_file="../$file"
    if [ -f "$similar_file" ]; then
        new_lines=$(diff --new-line-format="%L" --unchanged-line-format="" "$file" "$similar_file")
        if [ -n "$new_lines" ]; then
            base_directory="$HOME/Omd"
            find "$base_directory" -type d -path "*/Revision/Chemistry/S3" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Revision/Chemistry/S3" ]; then
                    echo "$new_lines" >> "$target/$file"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Revision/Chemistry/S3"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Revision/Chemistry/S3/Downloads
cd Notes/Chemistry/ || exit
download_files "${section4[@]}"
cd - > /dev/null 2>&1 || exit
# For Class 4
mkdir -p Students/Omd/Exercise/Chemistry/S4/Downloads
cd Students/Omd/Exercise/Chemistry/S4/Downloads || exit
download_files "${section4a[@]}"
for file in *.txt; do
    similar_file="../$file"
    if [ -f "$similar_file" ]; then
        new_lines=$(diff --new-line-format="%L" --unchanged-line-format="" "$file" "$similar_file")
        if [ -n "$new_lines" ]; then
            base_directory="$HOME/Omd"
            find "$base_directory" -type d -path "*/Exercise/Chemistry/S4" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Exercise/Chemistry/S4" ]; then
                    echo "$new_lines" >> "$target/$file"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Exercise/Chemistry/S4"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Exercise/Chemistry/S4/Downloads

mkdir -p Students/Omd/Revision/Chemistry/S4/Downloads
cd Students/Omd/Revision/Chemistry/S4/Downloads || exit
download_files "${section4b[@]}"
for file in *.txt; do
    similar_file="../$file"
    if [ -f "$similar_file" ]; then
        new_lines=$(diff --new-line-format="%L" --unchanged-line-format="" "$file" "$similar_file")
        if [ -n "$new_lines" ]; then
            base_directory="$HOME/Omd"
            find "$base_directory" -type d -path "*/Revision/Chemistry/S4" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Revision/Chemistry/S4" ]; then
                    echo "$new_lines" >> "$target/$file"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Revision/Chemistry/S4"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Revision/Chemistry/S4/Downloads
# The Items
cd Students/Omd/Revision/Chemistry/ || exit
download_files "${section5[@]}"
mv chemistry_samples.docx .chemistry_samples.docx
for file in e_o_c.txt e_o_c_1.txt e_o_c_1_samples_1.txt e_o_c_2.txt e_o_c_2_samples_1.txt e_o_c_3.txt e_o_c_3_samples_1.txt e_o_c_4.txt e_o_c_4_samples_1.txt e_o_c_5.txt e_o_c_5_samples_1.txt; do
    hidden_file=".$file"
    if [ -f "$hidden_file" ]; then
        # Compare the current file with the hidden one and capture new lines
        new_lines=$(diff --new-line-format="%L" --unchanged-line-format="" "$file" "$hidden_file")
        # If there are new lines, append them to the target files
        if [ -n "$new_lines" ]; then
            # Define base directory for searching
            base_directory="$HOME/Omd"
            # Find target directories and append new lines
            find "$base_directory" -type d -path "*/Revision/Chemistry" | while read -r target; do
                # Ensure we are not appending to the source directory
                if [ "$target" != "$HOME/Omd/Students/Omd/Revision/Chemistry" ]; then
                    echo "$new_lines" >> "$target/$hidden_file"
                fi
            done
        fi
    fi
    # Move the current file to make it hidden
    mv "$file" "$hidden_file"
done
cd - > /dev/null 2>&1 || exit
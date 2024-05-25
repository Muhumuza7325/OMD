#!/usr/bin/env bash
# set -x
# ANSI escape codes for text formatting
t=$'\e[0m' #reset text color and style
r=$'\e[1;31m' #Red
g=$'\e[1;32m' #Green
y=$'\e[1;33m' #Yellow
b=$'\e[1;34m' #Blue
m=$'\e[1;35m' #Magenta
c=$'\e[1;36m' #Cyan


# List of URLs for each section
section1=(

    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.1.chemistry_and_society.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.2.experimental_chemistry.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.3.states_and_changes_of_states_of_matter.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.4.using_materials.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.5.temporary_and_permanent_changes.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.6.mixtures_elements_and_compounds.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.7.air.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.8.water.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.9.rocks_and_minerals.txt"
)

section1a=(

    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.1.chemistry_and_society.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.2.experimental_chemistry.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.3.states_and_changes_of_states_of_matter.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.4.using_materials.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.5.temporary_and_permanent_changes.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.6.mixtures_elements_and_compounds.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.7.air.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.8.water.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.9.rocks_and_minerals.ans.txt"
)

section2=(

    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.1.acids_and_alkalis.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.2.salts.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.3.the_periodic_table.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.4.carbon_in_the_environment.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.5.the_reactivity_series.txt"
)

section2a=(

    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.1.acids_and_alkalis.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.2.salts.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.3.the_periodic_table.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.4.carbon_in_the_environment.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.5.the_reactivity_series.ans.txt"
)

section3=(

    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.1.carbon_in_life.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.2.structures_and_bonds.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.3.formulae_stoichiometry_and_mole_concept.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.4.properties_and_structures_of_substances.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.5.fossil_fuels.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.6.chemical_reactions.txt"
)

section3a=(

    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.1.carbon_in_life.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.2.structures_and_bonds.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.3.formulae_stoichiometry_and_mole_concept.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.4.properties_and_structures_of_substances.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.5.fossil_fuels.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.6.chemical_reactions.ans.txt"
)

section4=(

    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.1.oxidation_and_reduction_reactions.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.2.industrial_processes.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.3.trends_in_the_periodic_table.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.4.energy_changes_during_chemical_reactions.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.5.chemicals_for_consumers.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.6.nuclear_processes.txt"
)

section4a=(

    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.1.oxidation_and_reduction_reactions.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.2.industrial_processes.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.3.trends_in_the_periodic_table.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.4.energy_changes_during_chemical_reactions.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.5.chemicals_for_consumers.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.6.nuclear_processes.ans.txt"
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
cd Exercise/Chemistry/S1/ || exit
download_files "${section1a[@]}"
cd - > /dev/null 2>&1 || exit
cd Notes/Chemistry/ || exit
download_files "${section2[@]}"
cd - > /dev/null 2>&1 || exit
cd Exercise/Chemistry/S2/ || exit
download_files "${section2a[@]}"
cd - > /dev/null 2>&1 || exit
cd Notes/Chemistry/ || exit
download_files "${section3[@]}"
cd - > /dev/null 2>&1 || exit
cd Exercise/Chemistry/S3/ || exit
download_files "${section3a[@]}"
cd - > /dev/null 2>&1 || exit
cd Notes/Chemistry/ || exit
download_files "${section4[@]}"
cd - > /dev/null 2>&1 || exit
cd Exercise/Chemistry/S4/ || exit
download_files "${section4a[@]}"
cd - > /dev/null 2>&1 || exit
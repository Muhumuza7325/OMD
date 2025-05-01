#!/bin/bash

clear

# Always work from ~/Omd
mkdir -p ~/Omd
cd ~/Omd || { echo "Failed to enter ~/Omd"; exit 1; }

# Colours for messaging
m="\e[91m" # red
t="\e[0m"  # reset

# Mapping: Short label -> Script filename
declare -A tutorials=(
    ["AGRIC"]="agriculture_tutorial_wsl.sh"
    ["AGRIC (A)"]="agriculture_advanced_tutorial_wsl.sh"
    ["ARABIC"]="arabic_tutorial_wsl.sh"
    ["BIO"]="biology_tutorial.sh"
    ["BIO (A)"]="biology_advanced_tutorial_wsl.sh"
    ["CHEM"]="chemistry_tutorial.sh"
    ["CHEM (A)"]="chemistry_advanced_tutorial_wsl.sh"
    ["CHINESE"]="chinese_tutorial_wsl.sh"
    ["CRE"]="cre_tutorial_wsl.sh"
    ["ECON"]="economics_tutorial_wsl.sh"
    ["ENG"]="english_tutorial.sh"
    ["ENT"]="entrepreneurship_tutorial_wsl.sh"
    ["ENT (A)"]="entrepreneurship_advanced_tutorial_wsl.sh"
    ["GEOG"]="geography_tutorial.sh"
    ["GEOG (A)"]="geography_advanced_tutorial_wsl.sh"
    ["GP"]="general_paper_tutorial_wsl.sh"
    ["ICT"]="ict_tutorial.sh"
    ["ICT (A)"]="ict_advanced_tutorial_wsl.sh"
    ["IRE"]="ire_tutorial_wsl.sh"
    ["LIT"]="literature_tutorial_wsl.sh"
    ["LUG"]="luganda_tutorial_wsl.sh"
    ["MSBT"]="msbt_tutorial_wsl.sh"
    ["MTC"]="mathematics_tutorial.sh"
    ["MTC (A)"]="principal_mathematics_tutorial_wsl.sh"
    ["NAFT"]="nutrition_and_food_technology_tutorial_wsl.sh"
    ["PE"]="physical_education_tutorial_wsl.sh"
    ["PHY"]="physics_tutorial.sh"
    ["PHY (A)"]="physics_advanced_tutorial_wsl.sh"
    ["RR"]="runyankore-rukiga_tutorial_wsl.sh"
    ["SIGN"]="ugandan_sign_language_tutorial_wsl.sh"
    ["SUB_MTC"]="subsidiary_mathematics_tutorial_wsl.sh"
    ["TD"]="technology_and_design_tutorial_wsl.sh"
)

# Menu options
mapfile -t sorted_keys < <(printf "%s\n" "${!tutorials[@]}" | sort)
options=("${sorted_keys[@]}" "Exit")

echo -e "\n${m}Select a tutorial to run:${t}"
select choice in "${options[@]}"; do
    if [[ "$choice" == "Exit" ]]; then
        echo "Goodbye!"
        break
    elif [[ -n "${tutorials[$choice]}" ]]; then
        script="${tutorials[$choice]}"
        if [[ ! -f "$script" ]]; then
            echo -e "\n${m}Missing file: $script. Attempting to download...${t}"
            curl -O -L "https://github.com/Muhumuza7325/OMD/raw/main/$script" || {
                echo -e "\n\n${m}Check your internet connection and try again!${t}" >&2
                sleep 10
                exit 1
            }
        fi
        sed -i 's/20 80/20 30/g' "$script"
        bash "$script"
        break
    else
        echo "Invalid choice."
    fi
done
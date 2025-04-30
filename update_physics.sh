#!/usr/bin/env bash
# set -x
# List of URLs for each section
section1=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/PHY/1.1.introduction_to_physics.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/PHY/1.2.measurements_in_physics.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/PHY/1.3.states_of_matter.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/PHY/1.4.effects_of_forces.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/PHY/1.5.temperature_measurements.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/PHY/1.6.heat_transfer.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/PHY/1.7.expansion_of_solids_liquids_and_gases.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/PHY/1.8.nature_of_light_reflection_of_light_at_plane_surfaces.txt"
)
section1a=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/PHY/1.1.introduction_to_physics.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/PHY/1.2.measurements_in_physics.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/PHY/1.3.states_of_matter.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/PHY/1.4.effects_of_forces.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/PHY/1.5.temperature_measurements.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/PHY/1.6.heat_transfer.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/PHY/1.7.expansion_of_solids_liquids_and_gases.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/PHY/1.8.nature_of_light_reflection_of_light_at_plane_surfaces.ans.txt"
)
section1b=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/PHY/1.1.introduction_to_physics.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/PHY/1.2.measurements_in_physics.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/PHY/1.3.states_of_matter.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/PHY/1.4.effects_of_forces.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/PHY/1.5.temperature_measurements.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/PHY/1.6.heat_transfer.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/PHY/1.7.expansion_of_solids_liquids_and_gases.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/PHY/1.8.nature_of_light_reflection_of_light_at_plane_surfaces.qns.txt"
)
section2=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/PHY/2.1.work_energy_and_power.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/PHY/2.2.turning_effect_of_forces_centre_of_gravity_and_stability.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/PHY/2.3.pressure_in_solids_and_fluids.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/PHY/2.4.mechanical_properties_of_materials_and_hookes_law.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/PHY/2.5.reflection_of_light_at_curved_surfaces.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/PHY/2.6.magnets_and_magnetic_fields.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/PHY/2.7.electrostatics.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/PHY/2.8.the_solar_system.txt"
)
section2a=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/PHY/2.1.work_energy_and_power.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/PHY/2.2.turning_effect_of_forces_centre_of_gravity_and_stability.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/PHY/2.3.pressure_in_solids_and_fluids.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/PHY/2.4.mechanical_properties_of_materials_and_hookes_law.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/PHY/2.5.reflection_of_light_at_curved_surfaces.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/PHY/2.6.magnets_and_magnetic_fields.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/PHY/2.7.electrostatics.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/PHY/2.8.the_solar_system.ans.txt"
)
section2b=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/PHY/2.1.work_energy_and_power.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/PHY/2.2.turning_effect_of_forces_centre_of_gravity_and_stability.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/PHY/2.3.pressure_in_solids_and_fluids.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/PHY/2.4.mechanical_properties_of_materials_and_hookes_law.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/PHY/2.5.reflection_of_light_at_curved_surfaces.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/PHY/2.6.magnets_and_magnetic_fields.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/PHY/2.7.electrostatics.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/PHY/2.8.the_solar_system.qns.txt"
)
section3=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/PHY/3.1.linear_and_non-linear_motion.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/PHY/3.2.refraction_dispersion_and_colour.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/PHY/3.3.lenses_and_optical_instruments.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/PHY/3.4.general_wave_properties.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/PHY/3.5.sound_waves.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/PHY/3.6.heat_quantities_and_vapours.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/PHY/3.7.stars_and_galaxies.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/PHY/3.8.satellites_and_communication.txt"
)
section3a=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/PHY/3.1.linear_and_non-linear_motion.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/PHY/3.2.refraction_dispersion_and_colour.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/PHY/3.3.lenses_and_optical_instruments.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/PHY/3.4.general_wave_properties.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/PHY/3.5.sound_waves.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/PHY/3.6.heat_quantities_and_vapours.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/PHY/3.7.stars_and_galaxies.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/PHY/3.8.satellites_and_communication.ans.txt"
)
section3b=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/PHY/3.1.linear_and_non-linear_motion.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/PHY/3.2.refraction_dispersion_and_colour.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/PHY/3.3.lenses_and_optical_instruments.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/PHY/3.4.general_wave_properties.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/PHY/3.5.sound_waves.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/PHY/3.6.heat_quantities_and_vapours.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/PHY/3.7.stars_and_galaxies.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/PHY/3.8.satellites_and_communication.qns.txt"
)
section4=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/PHY/4.1.introduction_to_current_electricity.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/PHY/4.2.voltage_resistance_and_ohms_law.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/PHY/4.3.electromagnetic_effects.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/PHY/4.4.electric_energy_distribution_and_consumption.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/PHY/4.5.atomic_models.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/PHY/4.6.nuclear_processes.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/PHY/4.7.digital_electronics.txt"
)
section4a=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/PHY/4.1.introduction_to_current_electricity.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/PHY/4.2.voltage_resistance_and_ohms_law.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/PHY/4.3.electromagnetic_effects.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/PHY/4.4.electric_energy_distribution_and_consumption.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/PHY/4.5.atomic_models.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/PHY/4.6.nuclear_processes.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/PHY/4.7.digital_electronics.ans.txt"
)
section4b=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/PHY/4.1.introduction_to_current_electricity.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/PHY/4.2.voltage_resistance_and_ohms_law.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/PHY/4.3.electromagnetic_effects.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/PHY/4.4.electric_energy_distribution_and_consumption.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/PHY/4.5.atomic_models.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/PHY/4.6.nuclear_processes.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/PHY/4.7.digital_electronics.qns.txt"
)
section5=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/PHY/physics_samples.docx"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/PHY/e_o_c_physics.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/PHY/e_o_c_physics_1.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/PHY/e_o_c_physics_1_samples_1.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/PHY/e_o_c_physics_2.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/PHY/e_o_c_physics_2_samples_1.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/PHY/e_o_c_physics_3.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/PHY/e_o_c_physics_3_samples_1.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/PHY/e_o_c_physics_4.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/PHY/e_o_c_physics_4_samples_1.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/PHY/e_o_c_physics_5.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/PHY/e_o_c_physics_5_samples_1.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/PHY/e_o_c_physics_6.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/PHY/e_o_c_physics_6_samples_1.txt"
)
# Function to download files from a list of URLs
download_files() {
    local urls=("$@")
    for url in "${urls[@]}"; do
        curl -O -L "$url" || echo -e "\n\nError fetching material for this tutorial: $url \c"
    done
}
# Download files for each section
cd Notes/Physics/ || exit
download_files "${section1[@]}"
cd - > /dev/null 2>&1 || exit
# For Class 1
mkdir -p Students/Omd/Exercise/Physics/S1/Downloads
cd Students/Omd/Exercise/Physics/S1/Downloads || exit
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
            find "$base_directory" -type d -path "*/Exercise/Physics/S1" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Exercise/Physics/S1" ]; then
                    echo "$new_lines" >> "$target/$file"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Exercise/Physics/S1"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Exercise/Physics/S1/Downloads
mkdir -p Students/Omd/Revision/Physics/S1/Downloads
cd Students/Omd/Revision/Physics/S1/Downloads || exit
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
            find "$base_directory" -type d -path "*/Revision/Physics/S1" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Revision/Physics/S1" ]; then
                    echo "$new_lines" >> "$target/$file"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Revision/Physics/S1"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Revision/Physics/S1/Downloads
cd Notes/Physics/ || exit
download_files "${section2[@]}"
cd - > /dev/null 2>&1 || exit
# For Class 2
mkdir -p Students/Omd/Exercise/Physics/S2/Downloads
cd Students/Omd/Exercise/Physics/S2/Downloads || exit
download_files "${section2a[@]}"
# Loop through all .txt files in the current directory
for file in *.txt; do
    similar_file="../$file"
    if [ -f "$similar_file" ]; then
        new_lines=$(diff --new-line-format="%L" --unchanged-line-format="" "$file" "$similar_file")
        if [ -n "$new_lines" ]; then
            base_directory="$HOME/Omd"
            find "$base_directory" -type d -path "*/Exercise/Physics/S2" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Exercise/Physics/S2" ]; then
                    echo "$new_lines" >> "$target/$file"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Exercise/Physics/S2"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Exercise/Physics/S2/Downloads
mkdir -p Students/Omd/Revision/Physics/S2/Downloads
cd Students/Omd/Revision/Physics/S2/Downloads || exit
download_files "${section2b[@]}"
for file in *.txt; do
    similar_file="../$file"
    if [ -f "$similar_file" ]; then
        new_lines=$(diff --new-line-format="%L" --unchanged-line-format="" "$file" "$similar_file")
        if [ -n "$new_lines" ]; then
            base_directory="$HOME/Omd"
            find "$base_directory" -type d -path "*/Revision/Physics/S2" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Revision/Physics/S2" ]; then
                    echo "$new_lines" >> "$target/$file"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Revision/Physics/S2"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Revision/Physics/S2/Downloads
cd Notes/Physics/ || exit
download_files "${section3[@]}"
cd - > /dev/null 2>&1 || exit
# For Class 3
mkdir -p Students/Omd/Exercise/Physics/S3/Downloads
cd Students/Omd/Exercise/Physics/S3/Downloads || exit
download_files "${section3a[@]}"
for file in *.txt; do
    similar_file="../$file"
    if [ -f "$similar_file" ]; then
        new_lines=$(diff --new-line-format="%L" --unchanged-line-format="" "$file" "$similar_file")
        if [ -n "$new_lines" ]; then
            base_directory="$HOME/Omd"
            find "$base_directory" -type d -path "*/Exercise/Physics/S3" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Exercise/Physics/S3" ]; then
                    echo "$new_lines" >> "$target/$file"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Exercise/Physics/S3"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Exercise/Physics/S3/Downloads
mkdir -p Students/Omd/Revision/Physics/S3/Downloads
cd Students/Omd/Revision/Physics/S3/Downloads || exit
download_files "${section3b[@]}"
for file in *.txt; do
    similar_file="../$file"
    if [ -f "$similar_file" ]; then
        new_lines=$(diff --new-line-format="%L" --unchanged-line-format="" "$file" "$similar_file")
        if [ -n "$new_lines" ]; then
            base_directory="$HOME/Omd"
            find "$base_directory" -type d -path "*/Revision/Physics/S3" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Revision/Physics/S3" ]; then
                    echo "$new_lines" >> "$target/$file"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Revision/Physics/S3"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Revision/Physics/S3/Downloads
cd Notes/Physics/ || exit
download_files "${section4[@]}"
cd - > /dev/null 2>&1 || exit
# For Class 4
mkdir -p Students/Omd/Exercise/Physics/S4/Downloads
cd Students/Omd/Exercise/Physics/S4/Downloads || exit
download_files "${section4a[@]}"
for file in *.txt; do
    similar_file="../$file"
    if [ -f "$similar_file" ]; then
        new_lines=$(diff --new-line-format="%L" --unchanged-line-format="" "$file" "$similar_file")
        if [ -n "$new_lines" ]; then
            base_directory="$HOME/Omd"
            find "$base_directory" -type d -path "*/Exercise/Physics/S4" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Exercise/Physics/S4" ]; then
                    echo "$new_lines" >> "$target/$file"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Exercise/Physics/S4"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Exercise/Physics/S4/Downloads
mkdir -p Students/Omd/Revision/Physics/S4/Downloads
cd Students/Omd/Revision/Physics/S4/Downloads || exit
download_files "${section4b[@]}"
for file in *.txt; do
    similar_file="../$file"
    if [ -f "$similar_file" ]; then
        new_lines=$(diff --new-line-format="%L" --unchanged-line-format="" "$file" "$similar_file")
        if [ -n "$new_lines" ]; then
            base_directory="$HOME/Omd"
            find "$base_directory" -type d -path "*/Revision/Physics/S4" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Revision/Physics/S4" ]; then
                    echo "$new_lines" >> "$target/$file"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Revision/Physics/S4"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Revision/Physics/S4/Downloads
# The Items
cd Students/Omd/Revision/Physics/ || exit
download_files "${section5[@]}"
mv physics_samples.docx .physics_samples.docx
for file in e_o_c_physics.txt e_o_c_physics_1.txt e_o_c_physics_1_samples_1.txt e_o_c_physics_2.txt e_o_c_physics_2_samples_1.txt e_o_c_physics_3.txt e_o_c_physics_3_samples_1.txt e_o_c_physics_4.txt e_o_c_physics_4_samples_1.txt e_o_c_physics_5.txt e_o_c_physics_5_samples_1.txt e_o_c_physics_6.txt e_o_c_physics_6_samples_1.txt; do
    hidden_file=".$file"
    if [ -f "$hidden_file" ]; then
        # Compare the current file with the hidden one and capture new lines
        new_lines=$(diff --new-line-format="%L" --unchanged-line-format="" "$file" "$hidden_file")
        # If there are new lines, append them to the target files
        if [ -n "$new_lines" ]; then
            # Define base directory for searching
            base_directory="$HOME/Omd"
            # Find target directories and append new lines
            find "$base_directory" -type d -path "*/Revision/Physics" | while read -r target; do
                # Ensure we are not appending to the source directory
                if [ "$target" != "$HOME/Omd/Students/Omd/Revision/Physics" ]; then
                    echo "$new_lines" >> "$target/$hidden_file"
                fi
            done
        fi
    fi
    # Move the current file to make it hidden
    mv "$file" "$hidden_file"
done
cd - > /dev/null 2>&1 || exit

SRC1="$HOME/Omd/Students/Omd/Exercise/Physics"
DEST1="$HOME/Omd/Exercise/Physics"
SRC2="$HOME/Omd/Students/Omd/Revision/Physics"
DEST2="$HOME/Omd/Revision/Physics"
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
#!/usr/bin/env bash
# set -x
# List of URLs for each section
section1=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/TD/1.1.introduction_to_design.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/TD/1.2.the_design_process.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/TD/1.3.introduction_to_drawing.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/TD/1.4.basic_shapes.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/TD/1.5.tangents_to_circles.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/TD/1.6.health_safety_security_and_environment.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/TD/1.7.tools.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/TD/1.8.materials.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/TD/1.9.making_processes.txt"
)
section1a=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/TD/1.1.introduction_to_design.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/TD/1.2.the_design_process.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/TD/1.3.introduction_to_drawing.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/TD/1.4.basic_shapes.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/TD/1.5.tangents_to_circles.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/TD/1.6.health_safety_security_and_environment.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/TD/1.7.tools.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/TD/1.8.materials.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/TD/1.9.making_processes.ans.txt"
)
section1b=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/TD/1.1.introduction_to_design.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/TD/1.2.the_design_process.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/TD/1.3.introduction_to_drawing.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/TD/1.4.basic_shapes.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/TD/1.5.tangents_to_circles.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/TD/1.6.health_safety_security_and_environment.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/TD/1.7.tools.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/TD/1.8.materials.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/TD/1.9.making_processes.qns.txt"
)
section2=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/TD/2.1.enlargement_and_reproduction.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/TD/2.2.transformation.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/TD/2.3.pictorial_drawing.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/TD/2.4.orthographic_projections.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/TD/2.5.mechanical_systems.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/TD/2.6.tools.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/TD/2.7.engineering_materials.txt"
)
section2a=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/TD/2.1.enlargement_and_reproduction.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/TD/2.2.transformation.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/TD/2.3.pictorial_drawing.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/TD/2.4.orthographic_projections.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/TD/2.5.mechanical_systems.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/TD/2.6.tools.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/TD/2.7.engineering_materials.ans.txt"
)
section2b=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/TD/2.1.enlargement_and_reproduction.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/TD/2.2.transformation.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/TD/2.3.pictorial_drawing.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/TD/2.4.orthographic_projections.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/TD/2.5.mechanical_systems.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/TD/2.6.tools.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/TD/2.7.engineering_materials.qns.txt"
)
section3=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/TD/3.1.loci.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/TD/3.10.maintenance_of_simple_machines.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/TD/3.2.plain_and_diagonal_scales.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/TD/3.3.further_orthographic_projections.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/TD/3.4.building_drawing.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/TD/3.5.mechanical_drawing.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/TD/3.6.material_preservation_and_protection.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/TD/3.7.making_processes.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/TD/3.8.materials_joining.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/TD/3.9.renewable_energy.txt"
)
section3a=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/TD/3.1.loci.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/TD/3.10.maintenance_of_simple_machines.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/TD/3.2.plain_and_diagonal_scales.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/TD/3.3.further_orthographic_projections.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/TD/3.4.building_drawing.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/TD/3.5.mechanical_drawing.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/TD/3.6.material_preservation_and_protection.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/TD/3.7.making_processes.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/TD/3.8.materials_joining.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/TD/3.9.renewable_energy.ans.txt"
)
section3b=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/TD/3.1.loci.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/TD/3.10.maintenance_of_simple_machines.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/TD/3.2.plain_and_diagonal_scales.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/TD/3.3.further_orthographic_projections.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/TD/3.4.building_drawing.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/TD/3.5.mechanical_drawing.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/TD/3.6.material_preservation_and_protection.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/TD/3.7.making_processes.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/TD/3.8.materials_joining.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/TD/3.9.renewable_energy.qns.txt"
)
section4=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/TD/4.1.sectioning.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/TD/4.2.surface_development_of_solids.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/TD/4.3.electricity_and_electronics.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/TD/4.4.construction_practice.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/TD/4.5.electronics.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/TD/4.6.maintenance_and_repair_of_simple_machines.txt"
)
section4a=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/TD/4.1.sectioning.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/TD/4.2.surface_development_of_solids.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/TD/4.3.electricity_and_electronics.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/TD/4.4.construction_practice.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/TD/4.5.electronics.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/TD/4.6.maintenance_and_repair_of_simple_machines.ans.txt"
)
section4b=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/TD/4.1.sectioning.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/TD/4.2.surface_development_of_solids.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/TD/4.3.electricity_and_electronics.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/TD/4.4.construction_practice.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/TD/4.5.electronics.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/TD/4.6.maintenance_and_repair_of_simple_machines.qns.txt"
)
section5=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/TD/technology_and_design_samples.docx"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/TD/e_o_c_technology_and_design.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/TD/e_o_c_technology_and_design_1.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/TD/e_o_c_technology_and_design_1_samples_1.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/TD/e_o_c_technology_and_design_2.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/TD/e_o_c_technology_and_design_2_samples_1.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/TD/e_o_c_technology_and_design_3.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/TD/e_o_c_technology_and_design_3_samples_1.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/TD/e_o_c_technology_and_design_4.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/TD/e_o_c_technology_and_design_4_samples_1.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/TD/e_o_c_technology_and_design_5.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/TD/e_o_c_technology_and_design_5_samples_1.txt"
)
# Function to download files from a list of URLs
download_files() {
    local urls=("$@")
    for url in "${urls[@]}"; do
        curl -O -L "$url" || echo -e "\n\nError fetching material for this tutorial: $url \c"
    done
}
# Download files for each section
cd Notes/Technology_and_design/ || exit
download_files "${section1[@]}"
cd - > /dev/null 2>&1 || exit
# For Class 1
mkdir -p Students/Omd/Exercise/Technology_and_design/S1/Downloads
cd Students/Omd/Exercise/Technology_and_design/S1/Downloads || exit
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
            find "$base_directory" -type d -path "*/Exercise/Technology_and_design/S1" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Exercise/Technology_and_design/S1" ]; then
                    echo "$new_lines" >> "$target/$file"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Exercise/Technology_and_design/S1"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Exercise/Technology_and_design/S1/Downloads
mkdir -p Students/Omd/Revision/Technology_and_design/S1/Downloads
cd Students/Omd/Revision/Technology_and_design/S1/Downloads || exit
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
            find "$base_directory" -type d -path "*/Revision/Technology_and_design/S1" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Revision/Technology_and_design/S1" ]; then
                    echo "$new_lines" >> "$target/$file"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Revision/Technology_and_design/S1"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Revision/Technology_and_design/S1/Downloads
cd Notes/Technology_and_design/ || exit
download_files "${section2[@]}"
cd - > /dev/null 2>&1 || exit
# For Class 2
mkdir -p Students/Omd/Exercise/Technology_and_design/S2/Downloads
cd Students/Omd/Exercise/Technology_and_design/S2/Downloads || exit
download_files "${section2a[@]}"
# Loop through all .txt files in the current directory
for file in *.txt; do
    similar_file="../$file"
    if [ -f "$similar_file" ]; then
        new_lines=$(diff --new-line-format="%L" --unchanged-line-format="" "$file" "$similar_file")
        if [ -n "$new_lines" ]; then
            base_directory="$HOME/Omd"
            find "$base_directory" -type d -path "*/Exercise/Technology_and_design/S2" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Exercise/Technology_and_design/S2" ]; then
                    echo "$new_lines" >> "$target/$file"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Exercise/Technology_and_design/S2"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Exercise/Technology_and_design/S2/Downloads
mkdir -p Students/Omd/Revision/Technology_and_design/S2/Downloads
cd Students/Omd/Revision/Technology_and_design/S2/Downloads || exit
download_files "${section2b[@]}"
for file in *.txt; do
    similar_file="../$file"
    if [ -f "$similar_file" ]; then
        new_lines=$(diff --new-line-format="%L" --unchanged-line-format="" "$file" "$similar_file")
        if [ -n "$new_lines" ]; then
            base_directory="$HOME/Omd"
            find "$base_directory" -type d -path "*/Revision/Technology_and_design/S2" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Revision/Technology_and_design/S2" ]; then
                    echo "$new_lines" >> "$target/$file"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Revision/Technology_and_design/S2"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Revision/Technology_and_design/S2/Downloads
cd Notes/Technology_and_design/ || exit
download_files "${section3[@]}"
cd - > /dev/null 2>&1 || exit
# For Class 3
mkdir -p Students/Omd/Exercise/Technology_and_design/S3/Downloads
cd Students/Omd/Exercise/Technology_and_design/S3/Downloads || exit
download_files "${section3a[@]}"
for file in *.txt; do
    similar_file="../$file"
    if [ -f "$similar_file" ]; then
        new_lines=$(diff --new-line-format="%L" --unchanged-line-format="" "$file" "$similar_file")
        if [ -n "$new_lines" ]; then
            base_directory="$HOME/Omd"
            find "$base_directory" -type d -path "*/Exercise/Technology_and_design/S3" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Exercise/Technology_and_design/S3" ]; then
                    echo "$new_lines" >> "$target/$file"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Exercise/Technology_and_design/S3"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Exercise/Technology_and_design/S3/Downloads
mkdir -p Students/Omd/Revision/Technology_and_design/S3/Downloads
cd Students/Omd/Revision/Technology_and_design/S3/Downloads || exit
download_files "${section3b[@]}"
for file in *.txt; do
    similar_file="../$file"
    if [ -f "$similar_file" ]; then
        new_lines=$(diff --new-line-format="%L" --unchanged-line-format="" "$file" "$similar_file")
        if [ -n "$new_lines" ]; then
            base_directory="$HOME/Omd"
            find "$base_directory" -type d -path "*/Revision/Technology_and_design/S3" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Revision/Technology_and_design/S3" ]; then
                    echo "$new_lines" >> "$target/$file"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Revision/Technology_and_design/S3"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Revision/Technology_and_design/S3/Downloads
cd Notes/Technology_and_design/ || exit
download_files "${section4[@]}"
cd - > /dev/null 2>&1 || exit
# For Class 4
mkdir -p Students/Omd/Exercise/Technology_and_design/S4/Downloads
cd Students/Omd/Exercise/Technology_and_design/S4/Downloads || exit
download_files "${section4a[@]}"
for file in *.txt; do
    similar_file="../$file"
    if [ -f "$similar_file" ]; then
        new_lines=$(diff --new-line-format="%L" --unchanged-line-format="" "$file" "$similar_file")
        if [ -n "$new_lines" ]; then
            base_directory="$HOME/Omd"
            find "$base_directory" -type d -path "*/Exercise/Technology_and_design/S4" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Exercise/Technology_and_design/S4" ]; then
                    echo "$new_lines" >> "$target/$file"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Exercise/Technology_and_design/S4"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Exercise/Technology_and_design/S4/Downloads
mkdir -p Students/Omd/Revision/Technology_and_design/S4/Downloads
cd Students/Omd/Revision/Technology_and_design/S4/Downloads || exit
download_files "${section4b[@]}"
for file in *.txt; do
    similar_file="../$file"
    if [ -f "$similar_file" ]; then
        new_lines=$(diff --new-line-format="%L" --unchanged-line-format="" "$file" "$similar_file")
        if [ -n "$new_lines" ]; then
            base_directory="$HOME/Omd"
            find "$base_directory" -type d -path "*/Revision/Technology_and_design/S4" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Revision/Technology_and_design/S4" ]; then
                    echo "$new_lines" >> "$target/$file"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Revision/Technology_and_design/S4"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Revision/Technology_and_design/S4/Downloads
# The Items
cd Students/Omd/Revision/Technology_and_design/ || exit
download_files "${section5[@]}"
mv technology_and_design_samples.docx .technology_and_design_samples.docx
for file in e_o_c_technology_and_design.txt e_o_c_technology_and_design_1.txt e_o_c_technology_and_design_1_samples_1.txt e_o_c_technology_and_design_2.txt e_o_c_technology_and_design_2_samples_1.txt e_o_c_technology_and_design_3.txt e_o_c_technology_and_design_3_samples_1.txt e_o_c_technology_and_design_4.txt e_o_c_technology_and_design_4_samples_1.txt e_o_c_technology_and_design_5.txt e_o_c_technology_and_design_5_samples_1.txt; do
    hidden_file=".$file"
    if [ -f "$hidden_file" ]; then
        # Compare the current file with the hidden one and capture new lines
        new_lines=$(diff --new-line-format="%L" --unchanged-line-format="" "$file" "$hidden_file")
        # If there are new lines, append them to the target files
        if [ -n "$new_lines" ]; then
            # Define base directory for searching
            base_directory="$HOME/Omd"
            # Find target directories and append new lines
            find "$base_directory" -type d -path "*/Revision/Technology_and_design" | while read -r target; do
                # Ensure we are not appending to the source directory
                if [ "$target" != "$HOME/Omd/Students/Omd/Revision/Technology_and_design" ]; then
                    echo "$new_lines" >> "$target/$hidden_file"
                fi
            done
        fi
    fi
    # Move the current file to make it hidden
    mv "$file" "$hidden_file"
done
cd - > /dev/null 2>&1 || exit

SRC1="$HOME/Omd/Students/Omd/Exercise/Technology_and_design"
DEST1="$HOME/Omd/Exercise/Technology_and_design"
SRC2="$HOME/Omd/Students/Omd/Revision/Technology_and_design"
DEST2="$HOME/Omd/Revision/Technology_and_design"
if ! find "$DEST1" -type f -name "*.ans.txt" | grep -q .; then
  cp -r "$SRC1"/. "$DEST1" > /dev/null 2>&1
fi
if find "$DEST2" -type f -name "*.qns.txt" | grep -q .; then
  read -rp $'\n\nExisting exercise and revision files have been detected.\n\nUpdating them now may overwrite your current progress.\n\nIf you want to continue and overwrite, type "yes" or "y".\nOtherwise, press Enter to cancel: ' prompt
  if [[ "$prompt" == "yes" || "$prompt" == "y" ]]; then
    cp -r "$SRC1"/. "$DEST1" > /dev/null 2>&1
    cp -r "$SRC2"/. "$DEST2" > /dev/null 2>&1
    echo -e "\nExercise and revision files successfully updated!"
  else
    echo -e "\nUpdate cancelled. Existing exercise and revision files remain untouched!"
  fi
else
  cp -r "$SRC2"/. "$DEST2" > /dev/null 2>&1
fi
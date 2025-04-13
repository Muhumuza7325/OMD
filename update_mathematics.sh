#!/usr/bin/env bash
# set -x
# List of URLs for each section
section1=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.1.number_bases.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.10.reflection.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.11.equation_of_lines_and_curves.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.12.algebra_1.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.13.business_arithmetic.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.14.time_and_time_tables.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.2.working_with_integers.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.3.fractions_percentages_and_decimals.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.4.rectangular_cartesian_coordinates_in_2-dimensions.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.5.geometric_construction_skills.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.6.sequence_and_patterns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.7.bearings.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.8.general_and_angle_properties_of_geometric_figures.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.9.data_collection_and_presentation.txt"
)
section1a=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.1.number_bases.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.10.reflection.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.11.equation_of_lines_and_curves.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.12.algebra_1.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.13.business_arithmetic.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.14.time_and_time_tables.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.2.working_with_integers.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.3.fractions_percentages_and_decimals.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.4.rectangular_cartesian_coordinates_in_2-dimensions.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.5.geometric_construction_skills.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.6.sequence_and_patterns.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.7.bearings.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.8.general_and_angle_properties_of_geometric_figures.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.9.data_collection_and_presentation.ans.txt"
)
section1b=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.1.number_bases.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.10.reflection.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.11.equation_of_lines_and_curves.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.12.algebra_1.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.13.business_arithmetic.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.14.time_and_time_tables.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.2.working_with_integers.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.3.fractions_percentages_and_decimals.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.4.rectangular_cartesian_coordinates_in_2-dimensions.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.5.geometric_construction_skills.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.6.sequence_and_patterns.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.7.bearings.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.8.general_and_angle_properties_of_geometric_figures.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.9.data_collection_and_presentation.qns.txt"
)
section2=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.1.mappings_and_relations.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.10.length_and_area_properties_of_two-dimensional_geometrical_figures.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.11.nets_areas_and_volumes_of_solids.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.12.numerical_concept_2_indices_logarithms_and_surds.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.13.set_theory.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.2.vectors_and_translation.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.3.graphs.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.4.numerical_concept_1_indices_and_logarithms.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.5.inequalities_and_regions.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.6.algebra_2.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.7.similarities_and_enlargement.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.8.circle.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.9.rotation.txt"
)
section2a=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.1.mappings_and_relations.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.10.length_and_area_properties_of_two-dimensional_geometrical_figures.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.11.nets_areas_and_volumes_of_solids.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.12.numerical_concept_2_indices_logarithms_and_surds.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.13.set_theory.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.2.vectors_and_translation.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.3.graphs.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.4.numerical_concept_1_indices_and_logarithms.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.5.inequalities_and_regions.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.6.algebra_2.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.7.similarities_and_enlargement.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.8.circle.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.9.rotation.ans.txt"
)
section2b=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.1.mappings_and_relations.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.10.length_and_area_properties_of_two-dimensional_geometrical_figures.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.11.nets_areas_and_volumes_of_solids.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.12.numerical_concept_2_indices_logarithms_and_surds.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.13.set_theory.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.2.vectors_and_translation.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.3.graphs.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.4.numerical_concept_1_indices_and_logarithms.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.5.inequalities_and_regions.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.6.algebra_2.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.7.similarities_and_enlargement.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.8.circle.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.9.rotation.qns.txt"
)
section3=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.1.equation_of_a_straight_line.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.10.simultaneous_equations.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.11.probability.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.12.quadratic_equations.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.13.circle_properties.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.2.trigonometry_1.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.3.data_collection_or_display.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.4.vectors.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.5.ratios_and_proportions.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.6.business_mathematics.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.7.trigonometry_2.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.8.matrices.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.9.matrix_transformations.txt"
)
section3a=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.1.equation_of_a_straight_line.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.10.simultaneous_equations.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.11.probability.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.12.quadratic_equations.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.13.circle_properties.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.2.trigonometry_1.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.3.data_collection_or_display.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.4.vectors.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.5.ratios_and_proportions.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.6.business_mathematics.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.7.trigonometry_2.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.8.matrices.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.9.matrix_transformations.ans.txt"
)
section3b=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.1.equation_of_a_straight_line.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.10.simultaneous_equations.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.11.probability.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.12.quadratic_equations.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.13.circle_properties.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.2.trigonometry_1.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.3.data_collection_or_display.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.4.vectors.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.5.ratios_and_proportions.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.6.business_mathematics.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.7.trigonometry_2.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.8.matrices.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.9.matrix_transformations.qns.txt"
)
section4=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.1.composite_functions.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.2.equations_and_inequalities.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.3.linear-programming.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.4.loci.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.5.lines_and_planes_in_three_dimensions.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.6.revision.txt"
)
section4a=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.1.composite_functions.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.2.equations_and_inequalities.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.3.linear-programming.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.4.loci.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.5.lines_and_planes_in_three_dimensions.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.6.revision.ans.txt"
)
section4b=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.1.composite_functions.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.2.equations_and_inequalities.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.3.linear-programming.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.4.loci.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.5.lines_and_planes_in_three_dimensions.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.6.revision.qns.txt"
)
section5=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/mathematics_samples.docx"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/e_o_c_mathematics.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/e_o_c_mathematics_1.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/e_o_c_mathematics_1_samples_1.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/e_o_c_mathematics_2.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/e_o_c_mathematics_2_samples_1.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/e_o_c_mathematics_3.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/e_o_c_mathematics_3_samples_1.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/e_o_c_mathematics_4.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/e_o_c_mathematics_4_samples_1.txt"
)
# Function to download files from a list of URLs
download_files() {
    local urls=("$@")
    for url in "${urls[@]}"; do
        curl -O -L "$url" || echo -e "\n\nError fetching material for this tutorial: $url \c"
    done
}
# Download files for each section
cd Notes/Mathematics/ || exit
download_files "${section1[@]}"
cd - > /dev/null 2>&1 || exit
# For Class 1
mkdir -p Students/Omd/Exercise/Mathematics/S1/Downloads
cd Students/Omd/Exercise/Mathematics/S1/Downloads || exit
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
            find "$base_directory" -type d -path "*/Exercise/Mathematics/S1" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Exercise/Mathematics/S1" ]; then
                    echo "$new_lines" >> "$target/$file"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Exercise/Mathematics/S1"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Exercise/Mathematics/S1/Downloads
mkdir -p Students/Omd/Revision/Mathematics/S1/Downloads
cd Students/Omd/Revision/Mathematics/S1/Downloads || exit
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
            find "$base_directory" -type d -path "*/Revision/Mathematics/S1" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Revision/Mathematics/S1" ]; then
                    echo "$new_lines" >> "$target/$file"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Revision/Mathematics/S1"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Revision/Mathematics/S1/Downloads
cd Notes/Mathematics/ || exit
download_files "${section2[@]}"
cd - > /dev/null 2>&1 || exit
# For Class 2
mkdir -p Students/Omd/Exercise/Mathematics/S2/Downloads
cd Students/Omd/Exercise/Mathematics/S2/Downloads || exit
download_files "${section2a[@]}"
# Loop through all .txt files in the current directory
for file in *.txt; do
    similar_file="../$file"
    if [ -f "$similar_file" ]; then
        new_lines=$(diff --new-line-format="%L" --unchanged-line-format="" "$file" "$similar_file")
        if [ -n "$new_lines" ]; then
            base_directory="$HOME/Omd"
            find "$base_directory" -type d -path "*/Exercise/Mathematics/S2" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Exercise/Mathematics/S2" ]; then
                    echo "$new_lines" >> "$target/$file"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Exercise/Mathematics/S2"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Exercise/Mathematics/S2/Downloads
mkdir -p Students/Omd/Revision/Mathematics/S2/Downloads
cd Students/Omd/Revision/Mathematics/S2/Downloads || exit
download_files "${section2b[@]}"
for file in *.txt; do
    similar_file="../$file"
    if [ -f "$similar_file" ]; then
        new_lines=$(diff --new-line-format="%L" --unchanged-line-format="" "$file" "$similar_file")
        if [ -n "$new_lines" ]; then
            base_directory="$HOME/Omd"
            find "$base_directory" -type d -path "*/Revision/Mathematics/S2" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Revision/Mathematics/S2" ]; then
                    echo "$new_lines" >> "$target/$file"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Revision/Mathematics/S2"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Revision/Mathematics/S2/Downloads
cd Notes/Mathematics/ || exit
download_files "${section3[@]}"
cd - > /dev/null 2>&1 || exit
# For Class 3
mkdir -p Students/Omd/Exercise/Mathematics/S3/Downloads
cd Students/Omd/Exercise/Mathematics/S3/Downloads || exit
download_files "${section3a[@]}"
for file in *.txt; do
    similar_file="../$file"
    if [ -f "$similar_file" ]; then
        new_lines=$(diff --new-line-format="%L" --unchanged-line-format="" "$file" "$similar_file")
        if [ -n "$new_lines" ]; then
            base_directory="$HOME/Omd"
            find "$base_directory" -type d -path "*/Exercise/Mathematics/S3" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Exercise/Mathematics/S3" ]; then
                    echo "$new_lines" >> "$target/$file"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Exercise/Mathematics/S3"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Exercise/Mathematics/S3/Downloads
mkdir -p Students/Omd/Revision/Mathematics/S3/Downloads
cd Students/Omd/Revision/Mathematics/S3/Downloads || exit
download_files "${section3b[@]}"
for file in *.txt; do
    similar_file="../$file"
    if [ -f "$similar_file" ]; then
        new_lines=$(diff --new-line-format="%L" --unchanged-line-format="" "$file" "$similar_file")
        if [ -n "$new_lines" ]; then
            base_directory="$HOME/Omd"
            find "$base_directory" -type d -path "*/Revision/Mathematics/S3" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Revision/Mathematics/S3" ]; then
                    echo "$new_lines" >> "$target/$file"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Revision/Mathematics/S3"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Revision/Mathematics/S3/Downloads
cd Notes/Mathematics/ || exit
download_files "${section4[@]}"
cd - > /dev/null 2>&1 || exit
# For Class 4
mkdir -p Students/Omd/Exercise/Mathematics/S4/Downloads
cd Students/Omd/Exercise/Mathematics/S4/Downloads || exit
download_files "${section4a[@]}"
for file in *.txt; do
    similar_file="../$file"
    if [ -f "$similar_file" ]; then
        new_lines=$(diff --new-line-format="%L" --unchanged-line-format="" "$file" "$similar_file")
        if [ -n "$new_lines" ]; then
            base_directory="$HOME/Omd"
            find "$base_directory" -type d -path "*/Exercise/Mathematics/S4" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Exercise/Mathematics/S4" ]; then
                    echo "$new_lines" >> "$target/$file"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Exercise/Mathematics/S4"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Exercise/Mathematics/S4/Downloads
mkdir -p Students/Omd/Revision/Mathematics/S4/Downloads
cd Students/Omd/Revision/Mathematics/S4/Downloads || exit
download_files "${section4b[@]}"
for file in *.txt; do
    similar_file="../$file"
    if [ -f "$similar_file" ]; then
        new_lines=$(diff --new-line-format="%L" --unchanged-line-format="" "$file" "$similar_file")
        if [ -n "$new_lines" ]; then
            base_directory="$HOME/Omd"
            find "$base_directory" -type d -path "*/Revision/Mathematics/S4" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Revision/Mathematics/S4" ]; then
                    echo "$new_lines" >> "$target/$file"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Revision/Mathematics/S4"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Revision/Mathematics/S4/Downloads
# The Items
cd Students/Omd/Revision/Mathematics/ || exit
download_files "${section5[@]}"
mv mathematics_samples.docx .mathematics_samples.docx
for file in e_o_c_mathematics.txt e_o_c_mathematics_1.txt e_o_c_mathematics_1_samples_1.txt e_o_c_mathematics_2.txt e_o_c_mathematics_2_samples_1.txt e_o_c_mathematics_3.txt e_o_c_mathematics_3_samples_1.txt e_o_c_mathematics_4.txt e_o_c_mathematics_4_samples_1.txt; do
    hidden_file=".$file"
    if [ -f "$hidden_file" ]; then
        # Compare the current file with the hidden one and capture new lines
        new_lines=$(diff --new-line-format="%L" --unchanged-line-format="" "$file" "$hidden_file")
        # If there are new lines, append them to the target files
        if [ -n "$new_lines" ]; then
            # Define base directory for searching
            base_directory="$HOME/Omd"
            # Find target directories and append new lines
            find "$base_directory" -type d -path "*/Revision/Mathematics" | while read -r target; do
                # Ensure we are not appending to the source directory
                if [ "$target" != "$HOME/Omd/Students/Omd/Revision/Mathematics" ]; then
                    echo "$new_lines" >> "$target/$hidden_file"
                fi
            done
        fi
    fi
    # Move the current file to make it hidden
    mv "$file" "$hidden_file"
done
cd - > /dev/null 2>&1 || exit

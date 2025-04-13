#!/usr/bin/env bash
# set -x
# List of URLs for each section
section1=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.1.introduction_to_pe.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.10.basic_skills_in_volleyball.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.2.safety_and_first_aid.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.3.body_conditioning.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.4.movement_concepts.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.5.exercise_rest_and_hygiene.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.6.basic_running_skills.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.7.basic_skills_in_rounders.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.8.skills_development_and_diet.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.9.basic_skills_in_netball.txt"
)
section1a=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.1.introduction_to_pe.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.10.basic_skills_in_volleyball.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.2.safety_and_first_aid.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.3.body_conditioning.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.4.movement_concepts.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.5.exercise_rest_and_hygiene.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.6.basic_running_skills.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.7.basic_skills_in_rounders.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.8.skills_development_and_diet.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.9.basic_skills_in_netball.ans.txt"
)
section1b=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.1.introduction_to_pe.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.10.basic_skills_in_volleyball.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.2.safety_and_first_aid.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.3.body_conditioning.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.4.movement_concepts.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.5.exercise_rest_and_hygiene.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.6.basic_running_skills.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.7.basic_skills_in_rounders.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.8.skills_development_and_diet.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/1.9.basic_skills_in_netball.qns.txt"
)
section2=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.1.factors_in_performance_of_physical_activities.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.2.physical_fitness.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.3.basic_skills_in_educational_gymnastics.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.4.agreeable_and_disagreeable_behaviour.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.5.basic_jumping_skills.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.6.basic_throwing_skills.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.7.leisure_and_recreation.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.8.basic_skills_in_handball.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.9.basic_skills_in_soccer.txt"
)
section2a=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.1.factors_in_performance_of_physical_activities.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.2.physical_fitness.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.3.basic_skills_in_educational_gymnastics.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.4.agreeable_and_disagreeable_behaviour.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.5.basic_jumping_skills.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.6.basic_throwing_skills.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.7.leisure_and_recreation.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.8.basic_skills_in_handball.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.9.basic_skills_in_soccer.ans.txt"
)
section2b=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.1.factors_in_performance_of_physical_activities.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.2.physical_fitness.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.3.basic_skills_in_educational_gymnastics.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.4.agreeable_and_disagreeable_behaviour.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.5.basic_jumping_skills.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.6.basic_throwing_skills.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.7.leisure_and_recreation.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.8.basic_skills_in_handball.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/2.9.basic_skills_in_soccer.qns.txt"
)
section3=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.1.the_body_and_physical_activities.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.10.game_1.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.11.game_2.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.2.development_of_running_skills.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.3.game_1.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.4.game_2.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.5.media_and_sports.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.6.aesthetics_choice_made.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.7.development_of_jumping_skills.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.8.pes_at_national_and_international_level.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.9.fitness_testing_and_training.txt"
)
section3a=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.1.the_body_and_physical_activities.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.10.game_1.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.11.game_2.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.2.development_of_running_skills.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.3.game_1.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.4.game_2.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.5.media_and_sports.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.6.aesthetics_choice_made.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.7.development_of_jumping_skills.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.8.pes_at_national_and_international_level.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.9.fitness_testing_and_training.ans.txt"
)
section3b=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.1.the_body_and_physical_activities.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.10.game_1.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.11.game_2.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.2.development_of_running_skills.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.3.game_1.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.4.game_2.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.5.media_and_sports.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.6.aesthetics_choice_made.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.7.development_of_jumping_skills.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.8.pes_at_national_and_international_level.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/3.9.fitness_testing_and_training.qns.txt"
)
section4=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.1.health_physical_activity_and_stress_management.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.2.aesthetics_choice_made.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.3.development_of_throwing_skills.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.4.access_to_sports.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.5.physical_education_and_sports_for_peace_and_development.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.6.aesthetics_choice_made.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.7.aesthetics_practical_assessment.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.8.athletics_practical_assignment.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.9.games_practical_assignment.txt"
)
section4a=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.1.health_physical_activity_and_stress_management.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.2.aesthetics_choice_made.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.3.development_of_throwing_skills.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.4.access_to_sports.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.5.physical_education_and_sports_for_peace_and_development.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.6.aesthetics_choice_made.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.7.aesthetics_practical_assessment.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.8.athletics_practical_assignment.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.9.games_practical_assignment.ans.txt"
)
section4b=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.1.health_physical_activity_and_stress_management.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.2.aesthetics_choice_made.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.3.development_of_throwing_skills.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.4.access_to_sports.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.5.physical_education_and_sports_for_peace_and_development.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.6.aesthetics_choice_made.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.7.aesthetics_practical_assessment.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.8.athletics_practical_assignment.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/4.9.games_practical_assignment.qns.txt"
)
section5=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/physical_education_samples.docx"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/e_o_c_physical_education.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/e_o_c_physical_education_1.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/e_o_c_physical_education_1_samples_1.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/e_o_c_physical_education_2.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/e_o_c_physical_education_2_samples_1.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/e_o_c_physical_education_3.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/e_o_c_physical_education_3_samples_1.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/e_o_c_physical_education_4.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/e_o_c_physical_education_4_samples_1.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/e_o_c_physical_education_5.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/e_o_c_physical_education_5_samples_1.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/e_o_c_physical_education_6.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/e_o_c_physical_education_6_samples_1.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/e_o_c_physical_education_7.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/e_o_c_physical_education_7_samples_1.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/e_o_c_physical_education_8.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/e_o_c_physical_education_8_samples_1.txt"
)
# Function to download files from a list of URLs
download_files() {
    local urls=("$@")
    for url in "${urls[@]}"; do
        curl -O -L "$url" || echo -e "\n\nError fetching material for this tutorial: $url \c"
    done
}
# Download files for each section
cd Notes/Physical_education/ || exit
download_files "${section1[@]}"
cd - > /dev/null 2>&1 || exit
# For Class 1
mkdir -p Students/Omd/Exercise/Physical_education/S1/Downloads
cd Students/Omd/Exercise/Physical_education/S1/Downloads || exit
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
            find "$base_directory" -type d -path "*/Exercise/Physical_education/S1" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Exercise/Physical_education/S1" ]; then
                    echo "$new_lines" >> "$target/$file"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Exercise/Physical_education/S1"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Exercise/Physical_education/S1/Downloads
mkdir -p Students/Omd/Revision/Physical_education/S1/Downloads
cd Students/Omd/Revision/Physical_education/S1/Downloads || exit
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
            find "$base_directory" -type d -path "*/Revision/Physical_education/S1" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Revision/Physical_education/S1" ]; then
                    echo "$new_lines" >> "$target/$file"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Revision/Physical_education/S1"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Revision/Physical_education/S1/Downloads
cd Notes/Physical_education/ || exit
download_files "${section2[@]}"
cd - > /dev/null 2>&1 || exit
# For Class 2
mkdir -p Students/Omd/Exercise/Physical_education/S2/Downloads
cd Students/Omd/Exercise/Physical_education/S2/Downloads || exit
download_files "${section2a[@]}"
# Loop through all .txt files in the current directory
for file in *.txt; do
    similar_file="../$file"
    if [ -f "$similar_file" ]; then
        new_lines=$(diff --new-line-format="%L" --unchanged-line-format="" "$file" "$similar_file")
        if [ -n "$new_lines" ]; then
            base_directory="$HOME/Omd"
            find "$base_directory" -type d -path "*/Exercise/Physical_education/S2" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Exercise/Physical_education/S2" ]; then
                    echo "$new_lines" >> "$target/$file"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Exercise/Physical_education/S2"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Exercise/Physical_education/S2/Downloads
mkdir -p Students/Omd/Revision/Physical_education/S2/Downloads
cd Students/Omd/Revision/Physical_education/S2/Downloads || exit
download_files "${section2b[@]}"
for file in *.txt; do
    similar_file="../$file"
    if [ -f "$similar_file" ]; then
        new_lines=$(diff --new-line-format="%L" --unchanged-line-format="" "$file" "$similar_file")
        if [ -n "$new_lines" ]; then
            base_directory="$HOME/Omd"
            find "$base_directory" -type d -path "*/Revision/Physical_education/S2" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Revision/Physical_education/S2" ]; then
                    echo "$new_lines" >> "$target/$file"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Revision/Physical_education/S2"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Revision/Physical_education/S2/Downloads
cd Notes/Physical_education/ || exit
download_files "${section3[@]}"
cd - > /dev/null 2>&1 || exit
# For Class 3
mkdir -p Students/Omd/Exercise/Physical_education/S3/Downloads
cd Students/Omd/Exercise/Physical_education/S3/Downloads || exit
download_files "${section3a[@]}"
for file in *.txt; do
    similar_file="../$file"
    if [ -f "$similar_file" ]; then
        new_lines=$(diff --new-line-format="%L" --unchanged-line-format="" "$file" "$similar_file")
        if [ -n "$new_lines" ]; then
            base_directory="$HOME/Omd"
            find "$base_directory" -type d -path "*/Exercise/Physical_education/S3" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Exercise/Physical_education/S3" ]; then
                    echo "$new_lines" >> "$target/$file"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Exercise/Physical_education/S3"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Exercise/Physical_education/S3/Downloads
mkdir -p Students/Omd/Revision/Physical_education/S3/Downloads
cd Students/Omd/Revision/Physical_education/S3/Downloads || exit
download_files "${section3b[@]}"
for file in *.txt; do
    similar_file="../$file"
    if [ -f "$similar_file" ]; then
        new_lines=$(diff --new-line-format="%L" --unchanged-line-format="" "$file" "$similar_file")
        if [ -n "$new_lines" ]; then
            base_directory="$HOME/Omd"
            find "$base_directory" -type d -path "*/Revision/Physical_education/S3" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Revision/Physical_education/S3" ]; then
                    echo "$new_lines" >> "$target/$file"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Revision/Physical_education/S3"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Revision/Physical_education/S3/Downloads
cd Notes/Physical_education/ || exit
download_files "${section4[@]}"
cd - > /dev/null 2>&1 || exit
# For Class 4
mkdir -p Students/Omd/Exercise/Physical_education/S4/Downloads
cd Students/Omd/Exercise/Physical_education/S4/Downloads || exit
download_files "${section4a[@]}"
for file in *.txt; do
    similar_file="../$file"
    if [ -f "$similar_file" ]; then
        new_lines=$(diff --new-line-format="%L" --unchanged-line-format="" "$file" "$similar_file")
        if [ -n "$new_lines" ]; then
            base_directory="$HOME/Omd"
            find "$base_directory" -type d -path "*/Exercise/Physical_education/S4" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Exercise/Physical_education/S4" ]; then
                    echo "$new_lines" >> "$target/$file"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Exercise/Physical_education/S4"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Exercise/Physical_education/S4/Downloads
mkdir -p Students/Omd/Revision/Physical_education/S4/Downloads
cd Students/Omd/Revision/Physical_education/S4/Downloads || exit
download_files "${section4b[@]}"
for file in *.txt; do
    similar_file="../$file"
    if [ -f "$similar_file" ]; then
        new_lines=$(diff --new-line-format="%L" --unchanged-line-format="" "$file" "$similar_file")
        if [ -n "$new_lines" ]; then
            base_directory="$HOME/Omd"
            find "$base_directory" -type d -path "*/Revision/Physical_education/S4" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Revision/Physical_education/S4" ]; then
                    echo "$new_lines" >> "$target/$file"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Revision/Physical_education/S4"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Revision/Physical_education/S4/Downloads
# The Items
cd Students/Omd/Revision/Physical_education/ || exit
download_files "${section5[@]}"
mv physical_education_samples.docx .physical_education_samples.docx
for file in e_o_c_physical_education.txt e_o_c_physical_education_1.txt e_o_c_physical_education_1_samples_1.txt e_o_c_physical_education_2.txt e_o_c_physical_education_2_samples_1.txt e_o_c_physical_education_3.txt e_o_c_physical_education_3_samples_1.txt e_o_c_physical_education_4.txt e_o_c_physical_education_4_samples_1.txt e_o_c_physical_education_5.txt e_o_c_physical_education_5_samples_1.txt e_o_c_physical_education_6.txt e_o_c_physical_education_6_samples_1.txt e_o_c_physical_education_7.txt e_o_c_physical_education_7_samples_1.txt e_o_c_physical_education_8.txt e_o_c_physical_education_8_samples_1.txt; do
    hidden_file=".$file"
    if [ -f "$hidden_file" ]; then
        # Compare the current file with the hidden one and capture new lines
        new_lines=$(diff --new-line-format="%L" --unchanged-line-format="" "$file" "$hidden_file")
        # If there are new lines, append them to the target files
        if [ -n "$new_lines" ]; then
            # Define base directory for searching
            base_directory="$HOME/Omd"
            # Find target directories and append new lines
            find "$base_directory" -type d -path "*/Revision/Physical_education" | while read -r target; do
                # Ensure we are not appending to the source directory
                if [ "$target" != "$HOME/Omd/Students/Omd/Revision/Physical_education" ]; then
                    echo "$new_lines" >> "$target/$hidden_file"
                fi
            done
        fi
    fi
    # Move the current file to make it hidden
    mv "$file" "$hidden_file"
done
cd - > /dev/null 2>&1 || exit

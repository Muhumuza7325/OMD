#!/usr/bin/env bash
# set -x
# List of URLs for each section
section1=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ENT/1.1.introduction_to_entrepreneurship_education.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ENT/1.2.business_in_uganda.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ENT/1.3.business_ideas_and_business_opportunities.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ENT/1.4.business_start-up_process.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ENT/1.5.introduction_to_government_revenue.txt"
)
section1a=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ENT/1.1.introduction_to_entrepreneurship_education.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ENT/1.2.business_in_uganda.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ENT/1.3.business_ideas_and_business_opportunities.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ENT/1.4.business_start-up_process.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ENT/1.5.introduction_to_government_revenue.ans.txt"
)
section1b=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ENT/1.1.introduction_to_entrepreneurship_education.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ENT/1.2.business_in_uganda.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ENT/1.3.business_ideas_and_business_opportunities.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ENT/1.4.business_start-up_process.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ENT/1.5.introduction_to_government_revenue.qns.txt"
)
section2=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ENT/2.1.legal_forms_of_business_ownership.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ENT/2.2.production_in_business.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ENT/2.3.marketing_in_a_small_business_enterprise.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ENT/2.4.money_and_financial_institutions.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ENT/2.5.taxation.txt"
)
section2a=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ENT/2.1.legal_forms_of_business_ownership.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ENT/2.2.production_in_business.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ENT/2.3.marketing_in_a_small_business_enterprise.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ENT/2.4.money_and_financial_institutions.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ENT/2.5.taxation.ans.txt"
)
section2b=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ENT/2.1.legal_forms_of_business_ownership.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ENT/2.2.production_in_business.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ENT/2.3.marketing_in_a_small_business_enterprise.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ENT/2.4.money_and_financial_institutions.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ENT/2.5.taxation.qns.txt"
)
section3=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ENT/3.1.business_planning.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ENT/3.2.introduction_to_principles_of_accounting.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ENT/3.3.introduction_to_principles_of_accounting.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ENT/3.4.tax_administration.txt"
)
section3a=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ENT/3.1.business_planning.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ENT/3.2.introduction_to_principles_of_accounting.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ENT/3.3.introduction_to_principles_of_accounting.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ENT/3.4.tax_administration.ans.txt"
)
section3b=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ENT/3.1.business_planning.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ENT/3.2.introduction_to_principles_of_accounting.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ENT/3.3.introduction_to_principles_of_accounting.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ENT/3.4.tax_administration.qns.txt"
)
section4=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ENT/4.1.insurance.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ENT/4.2.international_trade.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ENT/4.3.tax_compliance.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ENT/4.4.basic_tax_computations.txt"
)
section4a=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ENT/4.1.insurance.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ENT/4.2.international_trade.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ENT/4.3.tax_compliance.ans.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ENT/4.4.basic_tax_computations.ans.txt"
)
section4b=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ENT/4.1.insurance.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ENT/4.2.international_trade.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ENT/4.3.tax_compliance.qns.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ENT/4.4.basic_tax_computations.qns.txt"
)
section5=(
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ENT/entrepreneurship_samples.docx"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ENT/e_o_c_entrepreneurship.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ENT/e_o_c_entrepreneurship_1.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ENT/e_o_c_entrepreneurship_1_samples_1.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ENT/e_o_c_entrepreneurship_2.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ENT/e_o_c_entrepreneurship_2_samples_1.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ENT/e_o_c_entrepreneurship_3.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ENT/e_o_c_entrepreneurship_3_samples_1.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ENT/e_o_c_entrepreneurship_4.txt"
    "https://github.com/Muhumuza7325/Muhumuza7325/raw/main/ENT/e_o_c_entrepreneurship_4_samples_1.txt"
)
# Function to download files from a list of URLs
download_files() {
    local urls=("$@")
    for url in "${urls[@]}"; do
        curl -O -L "$url" || echo -e "\n\nError fetching material for this tutorial: $url \c"
    done
}
# Download files for each section
cd Notes/Entrepreneurship/ || exit
download_files "${section1[@]}"
cd - > /dev/null 2>&1 || exit
# For Class 1
mkdir -p Students/Omd/Exercise/Entrepreneurship/S1/Downloads
cd Students/Omd/Exercise/Entrepreneurship/S1/Downloads || exit
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
            find "$base_directory" -type d -path "*/Exercise/Entrepreneurship/S1" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Exercise/Entrepreneurship/S1" ]; then
                    echo "$new_lines" >> "$target/$file"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Exercise/Entrepreneurship/S1"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Exercise/Entrepreneurship/S1/Downloads
mkdir -p Students/Omd/Revision/Entrepreneurship/S1/Downloads
cd Students/Omd/Revision/Entrepreneurship/S1/Downloads || exit
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
            find "$base_directory" -type d -path "*/Revision/Entrepreneurship/S1" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Revision/Entrepreneurship/S1" ]; then
                    echo "$new_lines" >> "$target/$file"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Revision/Entrepreneurship/S1"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Revision/Entrepreneurship/S1/Downloads
cd Notes/Entrepreneurship/ || exit
download_files "${section2[@]}"
cd - > /dev/null 2>&1 || exit
# For Class 2
mkdir -p Students/Omd/Exercise/Entrepreneurship/S2/Downloads
cd Students/Omd/Exercise/Entrepreneurship/S2/Downloads || exit
download_files "${section2a[@]}"
# Loop through all .txt files in the current directory
for file in *.txt; do
    similar_file="../$file"
    if [ -f "$similar_file" ]; then
        new_lines=$(diff --new-line-format="%L" --unchanged-line-format="" "$file" "$similar_file")
        if [ -n "$new_lines" ]; then
            base_directory="$HOME/Omd"
            find "$base_directory" -type d -path "*/Exercise/Entrepreneurship/S2" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Exercise/Entrepreneurship/S2" ]; then
                    echo "$new_lines" >> "$target/$file"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Exercise/Entrepreneurship/S2"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Exercise/Entrepreneurship/S2/Downloads
mkdir -p Students/Omd/Revision/Entrepreneurship/S2/Downloads
cd Students/Omd/Revision/Entrepreneurship/S2/Downloads || exit
download_files "${section2b[@]}"
for file in *.txt; do
    similar_file="../$file"
    if [ -f "$similar_file" ]; then
        new_lines=$(diff --new-line-format="%L" --unchanged-line-format="" "$file" "$similar_file")
        if [ -n "$new_lines" ]; then
            base_directory="$HOME/Omd"
            find "$base_directory" -type d -path "*/Revision/Entrepreneurship/S2" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Revision/Entrepreneurship/S2" ]; then
                    echo "$new_lines" >> "$target/$file"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Revision/Entrepreneurship/S2"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Revision/Entrepreneurship/S2/Downloads
cd Notes/Entrepreneurship/ || exit
download_files "${section3[@]}"
cd - > /dev/null 2>&1 || exit
# For Class 3
mkdir -p Students/Omd/Exercise/Entrepreneurship/S3/Downloads
cd Students/Omd/Exercise/Entrepreneurship/S3/Downloads || exit
download_files "${section3a[@]}"
for file in *.txt; do
    similar_file="../$file"
    if [ -f "$similar_file" ]; then
        new_lines=$(diff --new-line-format="%L" --unchanged-line-format="" "$file" "$similar_file")
        if [ -n "$new_lines" ]; then
            base_directory="$HOME/Omd"
            find "$base_directory" -type d -path "*/Exercise/Entrepreneurship/S3" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Exercise/Entrepreneurship/S3" ]; then
                    echo "$new_lines" >> "$target/$file"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Exercise/Entrepreneurship/S3"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Exercise/Entrepreneurship/S3/Downloads
mkdir -p Students/Omd/Revision/Entrepreneurship/S3/Downloads
cd Students/Omd/Revision/Entrepreneurship/S3/Downloads || exit
download_files "${section3b[@]}"
for file in *.txt; do
    similar_file="../$file"
    if [ -f "$similar_file" ]; then
        new_lines=$(diff --new-line-format="%L" --unchanged-line-format="" "$file" "$similar_file")
        if [ -n "$new_lines" ]; then
            base_directory="$HOME/Omd"
            find "$base_directory" -type d -path "*/Revision/Entrepreneurship/S3" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Revision/Entrepreneurship/S3" ]; then
                    echo "$new_lines" >> "$target/$file"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Revision/Entrepreneurship/S3"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Revision/Entrepreneurship/S3/Downloads
cd Notes/Entrepreneurship/ || exit
download_files "${section4[@]}"
cd - > /dev/null 2>&1 || exit
# For Class 4
mkdir -p Students/Omd/Exercise/Entrepreneurship/S4/Downloads
cd Students/Omd/Exercise/Entrepreneurship/S4/Downloads || exit
download_files "${section4a[@]}"
for file in *.txt; do
    similar_file="../$file"
    if [ -f "$similar_file" ]; then
        new_lines=$(diff --new-line-format="%L" --unchanged-line-format="" "$file" "$similar_file")
        if [ -n "$new_lines" ]; then
            base_directory="$HOME/Omd"
            find "$base_directory" -type d -path "*/Exercise/Entrepreneurship/S4" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Exercise/Entrepreneurship/S4" ]; then
                    echo "$new_lines" >> "$target/$file"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Exercise/Entrepreneurship/S4"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Exercise/Entrepreneurship/S4/Downloads
mkdir -p Students/Omd/Revision/Entrepreneurship/S4/Downloads
cd Students/Omd/Revision/Entrepreneurship/S4/Downloads || exit
download_files "${section4b[@]}"
for file in *.txt; do
    similar_file="../$file"
    if [ -f "$similar_file" ]; then
        new_lines=$(diff --new-line-format="%L" --unchanged-line-format="" "$file" "$similar_file")
        if [ -n "$new_lines" ]; then
            base_directory="$HOME/Omd"
            find "$base_directory" -type d -path "*/Revision/Entrepreneurship/S4" | while read -r target; do
                if [ "$target" != "$HOME/Omd/Students/Omd/Revision/Entrepreneurship/S4" ]; then
                    echo "$new_lines" >> "$target/$file"
                fi
            done
        fi
    fi
done
cp ./*.txt "$HOME/Omd/Students/Omd/Revision/Entrepreneurship/S4"
cd - > /dev/null 2>&1 || exit
rm -rf Students/Omd/Revision/Entrepreneurship/S4/Downloads
# The Items
cd Students/Omd/Revision/Entrepreneurship/ || exit
download_files "${section5[@]}"
mv entrepreneurship_samples.docx .entrepreneurship_samples.docx
for file in e_o_c_entrepreneurship.txt e_o_c_entrepreneurship_1.txt e_o_c_entrepreneurship_1_samples_1.txt e_o_c_entrepreneurship_2.txt e_o_c_entrepreneurship_2_samples_1.txt e_o_c_entrepreneurship_3.txt e_o_c_entrepreneurship_3_samples_1.txt e_o_c_entrepreneurship_4.txt e_o_c_entrepreneurship_4_samples_1.txt; do
    hidden_file=".$file"
    if [ -f "$hidden_file" ]; then
        # Compare the current file with the hidden one and capture new lines
        new_lines=$(diff --new-line-format="%L" --unchanged-line-format="" "$file" "$hidden_file")
        # If there are new lines, append them to the target files
        if [ -n "$new_lines" ]; then
            # Define base directory for searching
            base_directory="$HOME/Omd"
            # Find target directories and append new lines
            find "$base_directory" -type d -path "*/Revision/Entrepreneurship" | while read -r target; do
                # Ensure we are not appending to the source directory
                if [ "$target" != "$HOME/Omd/Students/Omd/Revision/Entrepreneurship" ]; then
                    echo "$new_lines" >> "$target/$hidden_file"
                fi
            done
        fi
    fi
    # Move the current file to make it hidden
    mv "$file" "$hidden_file"
done
cd - > /dev/null 2>&1 || exit

SRC1="$HOME/Omd/Students/Omd/Exercise/Entrepreneurship"
DEST1="$HOME/Omd/Exercise/Entrepreneurship"
SRC2="$HOME/Omd/Students/Omd/Revision/Entrepreneurship"
DEST2="$HOME/Omd/Revision/Entrepreneurship"
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

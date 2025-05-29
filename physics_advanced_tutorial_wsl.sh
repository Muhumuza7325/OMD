#!/usr/bin/env bash
# set -x
# ANSI escape codes for text formatting
t=$'\e[0m' #reset text colour and style
r=$'\e[1;31m' #Red
g=$'\e[1;32m' #Green
y=$'\e[1;33m' #Yellow
b=$'\e[1;34m' #Blue
m=$'\e[1;35m' #Magenta
c=$'\e[1;36m' #Cyan

# Ensure the script has execute permissions
chmod +x "$0"
cd "$(dirname "$0")" || exit
wait_for_a_key_press() {
  read -rsn 1 key
  if [[ "$key" == $'\x7f' ]]; then
    # Connect to internet
    geminichat
  fi
  if [[ "$key" == $'\e' ]]; then
    echo -e "\n"
    exit 1
  fi
  if [[ "$key" == $'\x0a' ]]; then
    # Do something if a key is pressed
    return 0
  fi
  # Default: Do nothing if another key is pressed
  return 1
}

clear_and_center() {
 if [ "$cleared" != "true" ]; then
  clear
  cleared="true"
 else
  wait_for_a_key_press
  clear
 fi
 local term_height
 term_height=$(tput lines)
 local text_height
 text_height=$(echo -e "$1" | wc -l)
 local start_line=$(( (term_height - text_height) / 6 ))
 tput cup $start_line 0
 echo -e "$1 \\c"
}

# Function to handle exit
quit() {
  echo -e "\nExiting... \n\c"
  exit
}

# Function to handle maximum attempts exceeded
quit1() {
  echo -e "\n\nSorry, you've exceeded the maximum number of attempts. Exiting...\n\n"
  exit 1
}

function save_state {
  echo "$sentence_count" > "$STATE_FILE"
}

function load_state {
  if [ -f "$STATE_FILE" ]; then
    sentence_count=$(<"$STATE_FILE" tr -d '[:space:]')
  else
    sentence_count=0
  fi
}

# Function to handle user input for class selection
function handle_class_input() {
  if { [ -n "$last_class" ] || [ -z "$last_topic" ]; } && [ -f .physics_advanced_surveyor ]; then
		while true; do
	    read -rp $'\n\nPlease enter '"${r}5 or 6${t}"' to go to your class or '"${r}x${t}"' to exit'$'\n\n> ' class
      if [ "$class" == "x" ]; then
        exit
      fi
		  # Check if .current_physics_advanced_class is accidentally empty
		  if [ ! -s .current_physics_advanced_class ]; then
		    # echo 5 to .current_physics_advanced_class
		    echo "5" > .current_physics_advanced_class
		  fi
		  # Read the value from the file
		  current_physics_advanced_class=$(<.current_physics_advanced_class) 2>/dev/null
		  # Check if the value is equal to $class
		  if [ "$current_physics_advanced_class" -lt "$class" 2>/dev/null ]; then
		    echo -e "\n${y}Your progress can't be tracked.${t} ${g}You either havent completed your current final assignment${t} ${r}or${t}\n\nYour files have been interfered with! You need ${b}to go back${t} and progress the right way! \c"
		    wait_for_a_key_press
				continue
			else
	      rm -f ".physics_advanced_topic_selected"
	      # Update the state file with the class
	      if [ "$class" != "x" ]; then
	        echo "$class" > .physics_advanced_user_state 2>/dev/null
	      fi
				break
	  	fi
		done
  fi
}

# Function to handle S6 user input for topic selection
function handle_s6_topic_input() {
  if [ -f .resume_to_class ]; then
    rm -f .resume_to_class
    rm -f .physics_advanced_topic_selected
  fi
  if [ -z "$last_topic" ] || [ -f .physics_advanced_topic_selected ]; then
    read -rp $'\n\nChoose either topic '"${g}1 or 2 or 3 or 4 or 5 or 6 or 7 or 8 or 9 or 10 or 11 or 12 or 13${t}"' to learn'$'\nor enter '"${r}z${t}"' for an adventure or '"${r}r${t}"' to revise or '"${r}s${t}"' to get sample_items'$'\nor '"${r}a${t}"' to get an activity of integration or '"${r}q${t}"' to get a short answer question'$'\nor '"${r}n${t}"' to do your final class assignment and if necessary, gain access to the next class'$'\nor '"${r}p${t}"' to track academic progress or '"${r}x${t}"' to exit'$'\n\n1. Circular motion '"${r}Term1${t}"''$'\n\n2. Simple harmonic motion '"${r}Term1${t}"''$'\n\n3. Gravitation '"${r}Term1${t}"''$'\n\n4. Progressive waves '"${r}Term1${t}"''$'\n\n5. Stationary waves '"${r}Term1${t}"''$'\n\n6. Current electricity '"${r}Term2${t}"''$'\n\n7. Magnetism in Matter '"${r}Term2${t}"''$'\n\n8. Magnetic effect of an electric current '"${r}Term2${t}"''$'\n\n9. Electromagnetic induction '"${r}Term2${t}"''$'\n\n10. A.C Circuits '"${r}Term2${t}"''$'\n\n11. Atomic particles '"${r}Term3${t}"''$'\n\n12. Quantum theory '"${r}Term3${t}"''$'\n\n13. Nuclear processes '"${r}Term3${t}"' '$'\n\n> ' topic
    touch .physics_advanced_surveyor
    touch .physics_advanced_topic_selected
    # Update the state file with the topic
    # Check if the state file exists, and the topic is not "x"
    if [ -f .physics_advanced_user_state ] && [ "$topic" != "x" ]; then
      # Get the current class value from the state file
      existing_class=$(awk '{print $1}' .physics_advanced_user_state)
      # Update the state file with the topic, preserving the existing class value
      echo "$existing_class $topic" > .physics_advanced_user_state 2>/dev/null
    fi
  fi
}
# Function to handle S5 user input for topic selection
function handle_s5_topic_input() {
  if [ -f .resume_to_class ]; then
    rm -f .resume_to_class
    rm -f .physics_advanced_topic_selected
  fi
  if [ -z "$last_topic" ] || [ -f .physics_advanced_topic_selected ]; then
    read -rp $'\n\nChoose either topic '"${g}1 or 2 or 3 or 4 or 5 or 6 or 7 or 8 or 9 or 10 or 11 or 12 or 13 or 14 or 15 or 16 or 17 or 18 or 19${t}"' to learn'$'\nor enter '"${r}z${t}"' for an adventure or '"${r}r${t}"' to revise or '"${r}s${t}"' to get sample_items'$'\nor '"${r}a${t}"' to get an activity of integration or '"${r}q${t}"' to get a short answer question'$'\nor '"${r}n${t}"' to do your final class assignment and if necessary, gain access to the next class'$'\nor '"${r}p${t}"' to track academic progress or '"${r}x${t}"' to exit'$'\n\n1. Measurement and dimensions of physical quantities '"${r}Term1${t}"''$'\n\n2. Statics '"${r}Term1${t}"''$'\n\n3. Linear motion '"${r}Term1${t}"''$'\n\n4. Motion under gravity '"${r}Term1${t}"''$'\n\n5. Work, energy and power '"${r}Term1${t}"''$'\n\n6. Solid friction '"${r}Term1${t}"''$'\n\n7. Fluid mechanics '"${r}Term2${t}"''$'\n\n8. Mechanical properties of matter '"${r}Term2${t}"''$'\n\n9. Thermometry '"${r}Term2${t}"''$'\n\n10. Heat quantities '"${r}Term2${t}"''$'\n\n11. Transfer of heat '"${r}Term2${t}"''$'\n\n12. Behaviour of gases '"${r}Term2${t}"''$'\n\n13. Thermodynamics '"${r}Term2${t}"''$'\n\n14. Reflection of light '"${r}Term3${t}"''$'\n\n15. Refraction of light '"${r}Term3${t}"''$'\n\n16. Optical instruments '"${r}Term3${t}"''$'\n\n17. Electrostatics '"${r}Term3${t}"''$'\n\n18. Capacitors '"${r}Term3${t}"''$'\n\n19. Digital electronics '"${r}Term3${t}"''$'\n\n> ' topic
    touch .physics_advanced_surveyor
    touch .physics_advanced_topic_selected
    # Update the state file with the topic
    # Check if the state file exists, and the topic is not "x"
    if [ -f .physics_advanced_user_state ] && [ "$topic" != "x" ]; then
      # Get the current class value from the state file
      existing_class=$(awk '{print $1}' .physics_advanced_user_state)
      # Update the state file with the topic, preserving the existing class value
      echo "$existing_class $topic" > .physics_advanced_user_state 2>/dev/null
    fi
  fi
}

# Function to process reminders from file
process_reminders_from_file() {
  # Check if a file is provided as an argument
  if [ $# -eq 0 ]; then
    echo "Usage: $0 <filename>"
    exit 1
  fi

  # Read the file line by line
  prev_sentence=""
  echo_next=false
	echo -n > .physics_advanced_reminder

  while IFS= read -r line || [ -n "$line" ]; do
    # Use a semi-colon as a secondary delimiter and read into an array
    IFS=';' read -r -a sentences <<< "$line"
    # Print each element of the array on a new line
    for sentence in "${sentences[@]}"; do
      if [[ $echo_next == true ]]; then
				sentence=$(echo "$sentence" | sed -e 's/\bet[.]*c\b//gi' -e '0,/and/{s/\band\b/,/}' -e 's/\s*,\s*/,/g')
				# Remove trailing comma if present, then introduce a semicolon
				sentence="${sentence%,};"

        # Split the obtained sentence into multiple sentences using a comma as the delimiter
        IFS=',' read -ra split_sentences <<< "$sentence"
        for split_sentence in "${split_sentences[@]}"; do
					echo "$split_sentence" >> .physics_advanced_reminder
        done
      echo_next=false
      fi

			if [[ "$sentence" =~ (Examples\ of|examples\ of|example\ of) && "$sentence" =~ include ]]; then

        lower_cased_sentence=${sentence,}

        echo "Did you know that $lower_cased_sentence" >> .physics_advanced_reminder

        # Set flag to echo the next sentence
        echo_next=true


			elif [[ "$sentence" =~ (is|are)\ used\ (in|for|to|as) ]]; then

  			lower_cased_sentence=${sentence,}

 				echo "Did you know that $lower_cased_sentence;" >> .physics_advanced_reminder

			elif [[ "$sentence" =~ ^(An\ |A\ ) && "$sentence" =~ (\ is\ ) ]]; then

				lower_cased_sentence=${sentence,}

  			echo "Do you recall that $lower_cased_sentence;" >> .physics_advanced_reminder

			elif [[ "$sentence" =~ " → " ]]; then
  			echo "Hope you know that: $sentence;" >> .physics_advanced_reminder

      elif [[ "$sentence" =~ " ↔ " ]]; then
        echo "Hope you know that: $sentence;" >> .physics_advanced_reminder

      elif [[ "$sentence" =~ (Generally|general) ]]; then
        echo "Note: $sentence;" >> .physics_advanced_reminder

			fi
    done
    # Update the previous sentence
    prev_sentence="$sentence"
  done < "$1"
}


# Function to process random reminder
process_random_reminder() {
  # Check if a file is provided as an argument
  if [ $# -eq 0 ]; then
    echo "Usage: $0 <filename>"
    exit 1
  fi

  # Check if .physics_advanced_reminder exists
  if [ -f .physics_advanced_reminder ]; then
		# Remove empty lines from .physics_advanced_reminder
  	sed -i '/^[[:space:]]*$/d' .physics_advanced_reminder 2>/dev/null
    # Randomly select a non-empty sentence
    local reminder # Declare the variable
		reminder=$(awk -v RS=';' 'BEGIN{srand();}{gsub(/^[[:space:]]+|[[:space:]]+$/, ""); if (length > 0) a[++n]=$0}END{if (n > 0) print a[int(rand()*n)+1]}' .physics_advanced_reminder)
    # Check if selected sentence is not empty and contains non-whitespace characters
    if [[ -n "$reminder" && "$reminder" =~ [[:graph:]] ]]; then
			modified_reminder="\n\n$reminder"
			current_datetime=$(date)
			whiptail --msgbox "Hey! It is $current_datetime: Welcome back dear! $modified_reminder" 20 80
			return
		fi
	fi
}

geminichat() {
  { read -r API_KEY < "$HOME/.gemini_api"; } 2>/dev/null
  conversation_history="Please, all responses MUST be in British English and do not begin by confirming that you have understood the instruction......"

  # Loop for interactive input
  while true; do
    # Prompt for input
    read -rp $'\nPrompt: ' prompt

    # Skip exit request
    if [[ "$prompt" == "q" ]]; then
      break
    fi

    # Combine prompt with conversation history
    combined_prompt="$conversation_history $prompt"

    # Call API and capture generated text with a 20-second timeout
    generated_text=$(curl -s \
      --max-time 20 \
      https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash:generateContent?key=$API_KEY \
      -H 'Content-Type: application/json' \
      -X POST \
      -d '{"contents": [{"parts":[{"text": "'"$combined_prompt"'"}]}]}' \
      2> /dev/null | grep "text")

    # Extract generated text
    generated_text=$(echo "$generated_text" | sed 's/^[ \t]*"text": "//g' | sed 's|\\"||g' | tr -d '*' | rev | sed 's/"//1' | rev)

    # Update conversation history
    conversation_history="$conversation_history $generated_text"

    # Print generated text
    echo -e "\n$generated_text"
  done
}

replace_prompt() {
  local prompt=$1
  local replacement_variable=$2

  read -erp $'\n'"${r}${prompt}${t}"': ' replace

  if [[ -n "$replace" ]]; then
    eval "$replacement_variable=\"$replace\""
    return 0
  else
    return 1
  fi
}

track_student_progress() {
echo -e 'School:                         ?
Class on joining:               ?
DateTime:                       ?
1   Name:                       surname given
    ID:                         ?
    contact(s):                 ?
2   Residence
             Village:           ?
             Parish:            ?
             Subcounty:         ?
             District:          ?
3   Age:                        Age
4   Sex:                        Male or Female
5   Parent/Guardian:            Surname Given
    Contact(s):                 ?
PROGRESSIVE ASSESSMENT' > student
    temp_file4=$(mktemp)
    temp_file3=$(mktemp)
    temp_file2=$(mktemp)
    temp_file=$(mktemp)
    trap 'rm -f student .temmmm "$temp_file" "$temp_file2" "$temp_file3" "$temp_file4" .student.txt' EXIT
    if [ -f .school_name ]; then
        read -r school_name < .school_name
        school_name="${school_name// /_}"
        touch ."$school_name"_students_file.txt
        sed -i '/^[[:space:]]*$/d' ."$school_name"_students_file.txt
    fi
    if [ -f .student_number.txt ]; then
        student_number=$(<.student_number.txt)
        if [ "$student_number" == "0" ]; then
            echo -e "\n\nHey! You currently have no records... Please take records \c"
            wait_for_a_key_press
        elif [ -n "$student_number" ] && [ "$student_number" -gt 1 ]; then
            echo -e "\n\nHey! You currently have records for $student_number students \c"
            wait_for_a_key_press
        fi
    else
        echo "0" > .student_number.txt
    fi
    clear
    # Initialize user_input variable
    user_input=""
    while true; do
        local user_input
        # Prompt the user for input
        if [ "$student_number" == "0" ]; then
            echo -e "\nPress "${r}Esc key${t}" to capture student details: $user_input\c"
        elif [ "$student_number" == "1" ]; then
            echo -e "\nTo track your progress, press the Tab key or Press "${r}Esc key${t}" to capture details of another student: $user_input\c"
        else
            echo -ne "\nTo search for student details, Enter "${y}Student Name${t}"\nor "${r}Esc key${t}" to capture new student details or "${r}qq${t}" to return to your session: $user_input\c"
        fi
        read -rsn1 char
        if [[ $char == $'\e' ]]; then
            break
        fi
        # Handle backspace
        if [[ $char == $'\x7f' ]]; then  # Check if the input is the backspace key
            user_input="${user_input%?}" # Remove the last character from user_input
        else
            user_input="${user_input}${char}"
        fi
        if [[ "$user_input" == "qq" ]]; then
            return
        fi
        clear
        # Define the file path
        file=."$school_name"_students_file.txt
        # Search for the pattern and capture the result
        match=$(sed 's/;/\n/g' "$file" | grep -i "Name:.*$user_input.*")
        colon_count=$(grep -o ":" <<< "$match" | wc -l)
        # Set initial flag to false
        flag=false
        if [[ $colon_count -eq 1 ]]; then
            matched="$match"
            flag=true
        else
            if [[ $char != $'\x7f' ]]; then
                if [[ $colon_count -eq 0 ]]; then
                    echo "Press the back space key and enter a "${r}Valid Name${t}"........."
                else
                    echo "${g}Close! A few more characters to refine your search.........${t}"
                fi
            fi
        fi
        if $flag; then
        awk -v user_input="$matched" 'tolower($0) ~ tolower(user_input) { print }' ."$school_name"_students_file.txt |
            while IFS= read -r line; do
                if [[ $char != $'\x7f' ]]; then
                   echo "$line" | sed 's/;/\n/g'
                fi
            done
        fi
    done
    # Prompt for user input
    echo -e "\n\n${y}By just pressing Enter; it means yes or skip${t} \c"
    echo -e ""
    if ! [ -f .school_name ]; then
        echo -e "\nPlease Enter the name of your school... This option is only available once \c"
        echo -e ""
        if replace_prompt "" replacement; then
            replacement=${replacement^^}  # Convert to uppercase
            # Store the value in the school_name file
            echo "$replacement" > .school_name
        fi
    else
        read -r replacement < .school_name
        current_datetime=$(date)
        echo -e "\nYou are at ${g}"$replacement"${t} and it is ${b}$current_datetime${t} \c"
        echo ""
    fi
    sed -i "s/School:                         ?/School:                         $replacement/" student
    current_datetime=$(date)
    sed -i "s/DateTime:                       ?/Date + Time:                    $current_datetime/" student
    if replace_prompt 'What is the '"client's"' current class (just a single digit)?' replacement; then
        sed -i "s/Class on joining:               ?/Class on joining:               S$replacement/" student
    fi
    if replace_prompt  ''"Client's"' SurName' replacement; then
        replacement=${replacement^}
        echo "$replacement" > "$temp_file"
        sed -i "s/surname/$replacement/" student
    fi
    read -r surname < "$temp_file"
    if replace_prompt  ''"Client's"' Given name' replacement; then
        replacement=${replacement^}
        sed -i "s/given/$replacement/" student
        echo -e "\nYou are highly welcome "$surname" "$replacement"... You are reminded that your education is our future \c"
        echo ""
    fi
    if replace_prompt  ''"$surname's"' Contact(s) (space separated)' replacement; then
        sed -i "s/contact(s):                 ?/Contact(s):                 $replacement/" student
    fi
    if replace_prompt  ''"$surname's"' Village' replacement; then
        replacement=${replacement^}
        sed -i "s/Village:           ?/Village:           $replacement/" student
    fi
    if replace_prompt  ''"$surname's"' Parish' replacement; then
        replacement=${replacement^}
        sed -i "s/Parish:            ?/Parish:            $replacement/" student
    fi
    if replace_prompt  ''"$surname's"' Subcounty' replacement; then
        replacement=${replacement^}
        sed -i "s/Subcounty:         ?/Subcounty:         $replacement/" student
    fi
    if replace_prompt  ''"$surname's"' District' replacement; then
        replacement=${replacement^}
        sed -i "s/District:          ?/District:          $replacement/" student
    fi
    if replace_prompt  ''"$surname's"' Age (Enter digits)' replacement; then
        sed -i "s/Age:                        Age/Age:                        $replacement/" student
    fi
    while true; do
        if replace_prompt  ''"$surname's"' Sex (M or F)' replacement; then
            replacement=${replacement^}
            if [ "$replacement" == "M" ]; then
                sed -i "s/Male or Female/"$replacement"ale/" student
                echo "him" > "$temp_file3"
                break
            elif [ "$replacement" == "F" ]; then
                sed -i "s/Male or Female/"$replacement"emale/" student
                echo "her" > "$temp_file3"
                break
            elif [ "$replacement" == "Female" ]; then
                sed -i "s/Male or Female/"$replacement"/" student
                echo "her" > "$temp_file3"
                break
            elif [ "$replacement" == "Male" ]; then
                sed -i "s/Male or Female/"$replacement"/" student
                echo "him" > "$temp_file3"
                break
            else
                echo -e "\nInvalid choice... Please choose either m or f \c"
                continue
            fi
        fi
    done
    if replace_prompt  'Please Enter the SurName of '"$surname's"' Parent/Guardian' replacement; then
        replacement=${replacement^}
        echo "$replacement" > "$temp_file2"
        sed -i "s/Surname/$replacement/" student
    fi
    read -r surname_nok < "$temp_file2"
    read -r gender < "$temp_file3"
    if [ "$gender" == "him" ]; then
        echo "his" > "$temp_file4"
    else
        echo "her" > "$temp_file4"
    fi
    read -r gender1 < "$temp_file4"
    if replace_prompt  ''"$surname_nok's"' Given name' replacement; then
        replacement=${replacement^}
        sed -i "s/Given/$replacement/" student
        echo -e "\n"$surname" is hereby reminded that "$gender1" Parent/Guardian is "$surname_nok" "$replacement" \c"
        echo ""
    fi
    if replace_prompt  ''"$surname_nok's"' Contact(s) (space separated)' replacement; then
        sed -i "s/Contact(s):                 ?/Contact(s):                 $replacement/" student
    fi
    read -r school_name < .school_name
    school_name="${school_name// /_}"
    touch ."$school_name"_students_file.txt
    sed -i '/^[[:space:]]*$/d' ."$school_name"_students_file.txt
    # Count the number of students
    student_number=$(grep -c "^School" ."$school_name"_students_file.txt)
    (( student_number++ ))
    sed -i -e 's/surname/?/gi' \
            -e 's/given/?/gi' \
            -e 's/? ?/?/gi' student
    cp student .student.txt
    sed -i "s/ID:                         ?/ID:                         $student_number/" .student.txt
    echo -e "\n"$surname"'s identification number is: "$student_number" \c"
    echo -e "\n\nYou can now make any changes to the provided details directly from the text editor. Don't edit your ID_No please! If necessary, note it down instead... \c"
    wait_for_a_key_press
    if grep -q Microsoft /proc/version; then
        explorer.exe .student.txt
    else
        xdg-open .student.txt
    fi
    wait_for_a_key_press
    sed -e ':a;N;$!ba;s/\n/;/g' .student.txt >> ."$school_name"_students_file.txt
    sort -f ."$school_name"_students_file.txt | uniq -i > .temmmm && mv .temmmm ."$school_name"_students_file.txt
    rm -f student .temmmm "$temp_file" "$temp_file2" "$temp_file3" "$temp_file4" .student.txt
    echo "$student_number" > .student_number.txt
    echo " "
}

#Function to process file
process_file() {
  # Check if a file is provided as an argument
  if [ $# -eq 0 ]; then
    echo "Usage: $0 <filename>"
    exit 1
  fi

  load_state
  sed -i "s/^\([^;]*;\)\{$sentence_count\}//" "$1" 2>/dev/null
  # Subtract 1 from sentence_count
  ((sentence_count--))
  # Read the file line by line
  while IFS= read -r line || [ -n "$line" ]; do
    # Use a semi-colon as a secondary delimiter and read into an array
    IFS=';' read -r -a sentences <<< "$line"

    # Loop through each sentence
    for sentence in "${sentences[@]}"; do
        if [[ -n "$sentence" && "$sentence" =~ [[:graph:]] ]]; then
        if [[ $sentence == *"Figure"* ]]; then
          modified_sentence=$(echo "$sentence" | sed 's/.*\(Figure.*\.jpg\).*$/\1/')
          # Change to the "Figures/Physics_advanced" directory
          cd Figures/Physics_advanced || { echo "Failed to change to Figures/Physics_advanced"; return; }
          # Open the file using explorer.exe
          explorer.exe "$modified_sentence" > /dev/null 2>&1 &
          # Go back to the original directory
          cd ../.. || { echo "Failed to change back to the original directory \c"; exit 1; }
        fi

        if [[ $sentence == *"Table"* ]]; then
          cd Tables/Physics_advanced || { echo -e "\nFailed to change to Tables/Physics_advanced \c"; return; }
          explorer.exe "$sentence" > /dev/null 2>&1 &
          cd ../.. || { echo -e "\nFailed to change back to the original directory \c"; exit 1; }
        fi

        if [[ $sentence == *"Video"* ]]; then
          cd Videos/Physics_advanced || { echo -e "\nFailed to change to Videos/Physics_advanced \c"; return; }
          explorer.exe "$sentence" > /dev/null 2>&1 &
          cd ../.. || { echo -e "\nFailed to change back to the original directory \c"; exit 1; }
        fi
        if [ $((sentence_count % 5)) -eq 0 ]; then
          # Clear and center for every 5th sentence
          clear_and_center "${y}$sentence${t} \c"
        elif [ $((sentence_count % 7)) -eq 0 ]; then
          # Display the sentence in green for every 7th sentence
          echo -e "\n\n${g}$sentence${t} \c"
        elif [ $((sentence_count % 6)) -eq 0 ]; then
          # Display the sentence in magenta for every 6th sentence
          echo -e "\n\n${m}$sentence${t} \c"
        elif [ $((sentence_count % 8)) -eq 0 ]; then
          echo -e "\n\n${c}$sentence${t} \c"
        elif [ $((sentence_count % 3)) -eq 0 ]; then
          # Display the sentence in blue for every 3rd sentence
          echo -e "\n\n${b}$sentence${t} \c"
        elif [ $((sentence_count % 2)) -eq 0 ] || [ $((sentence_count % 4)) -eq 0 ]; then
          # Display the sentence in green for every 4th sentence
          echo -e "\n\n${g}$sentence${t} \c"
        else
          # Display the sentence in red for other sentences
          echo -e "\n\n${r}$sentence${t} \c"
        fi
      else
        echo -e "\n\nKind regards @OMD \c"
      fi
      ((sentence_count++))
      save_state
      # Wait for a keypress
      read -rsn 1 </dev/tty
      if [[ $REPLY == $'\x7f' ]]; then
        touch .connect_to_ai && break
      fi
      if [[ $REPLY == $'\e' ]]; then
        echo -e "\n"
        touch .skip_exercises && break
      fi
    done
  done < "$1"
}

contact_ai() {
  last_topic=$(awk -F' ' '{print $2}' .physics_advanced_user_state)
  if [ -f .connect_to_ai ]; then
    echo ""
    # Connect to internet
    geminichat
    rm -f .connect_to_ai
    touch .resume_to_class
  fi
}

# Function to process random communication
process_random_communication() {
  # Check if a file is provided as an argument
  if [ $# -eq 0 ]; then
    echo "Usage: $0 <filename>"
    exit 1
  fi
  local file="$1"
  # Check if the communication file exists
  if [ -f "$file" ]; then
    # Remove empty lines (including whitespace-only) from the file
    sed -i '/^[[:space:]]*$/d' "$file" 2>/dev/null
    # Extract subomdject name from the script name
    script_base=$(basename "$0" .sh) # Remove .sh extension
    subomdject_raw="${script_base%%_tutorial*}"
    subomdject_cap="${subomdject_raw^}" # Capitalise first letter
    # Extract a random matching sentence
    communication=$(awk -v RS=';' -v subomdject="$subomdject_cap" '
      BEGIN {
        srand();
        pattern = "^[[:space:]]*\\[(All|" subomdject ")\\][[:space:]]*"
      }
      {
        gsub(/^[[:space:]]+|[[:space:]]+$/, ""); # Trim leading/trailing spaces
        if ($0 ~ pattern) {
          a_raw[++n] = $0;              # Original (with prefix)
          gsub(pattern, "", $0);  a_clean[n] = $0;  # Cleaned (no prefix)
        }
      }
      END {
        if (n > 0) {
          pick = int(rand() * n) + 1;
          print a_raw[pick] > "/tmp/selected_comm_raw";
          print a_clean[pick];
        }
      }
    ' "$file")
    # If the selected communication is not empty and has visible characters
    if [[ -n "$communication" && "$communication" =~ [[:graph:]] ]]; then
      local modified_communication="\n\n$communication"
      whiptail --msgbox "$modified_communication" 20 80
			# Delete the selected sentence from the file (multiline-aware)
			selected_raw=$(cat /tmp/selected_comm_raw)
			# Escape special characters for use in a literal match
			escaped_block=$(printf '%s\n' "$selected_raw;" | sed 's/[]\/$*.^[]/\\&/g')
			# Delete the exact block including line breaks using awk
			awk -v RS=';' -v ORS=';' -v target="$selected_raw" '
			{
			  gsub(/^[[:space:]]+|[[:space:]]+$/, "", $0)
			  if ($0 != target) print $0
			}
			' "$file" > "$file.tmp" && mv "$file.tmp" "$file"
      # Clean up temp file
      rm -f /tmp/selected_comm_raw
      # Check if any entries remain that start with [All] or [subomdject]
      remaining=$(awk -v RS=';' -v subomdject="$subomdject_cap" '
        {
          gsub(/^[[:space:]]+|[[:space:]]+$/, "", $0);
          if ($0 ~ "^[[:space:]]*\\[(All|" subomdject ")\\]") found=1;
        }
        END { exit !found }
      ' "$file")
      # If no matching entries remain, delete the file
      if [ $? -ne 0 ]; then
        mv "$file" .skip_"$file"
      fi
    fi
  else
    echo "File '$file' not found."
    exit 1
  fi
}

# Show messages before opening the file
show_communication_info() {
  echo -e "\n${g}A text file with communications is about to open!${t}"
  echo -e "${r}==============================================${t}"
  echo -e "${b} Browse for:${t}"
  echo -e "${m} • Scheduled Zoom and/or Google Meet class sessions${t}"
  echo -e "${c} • Opportunities or offers${t}"
  echo -e "${y} • Something good — You never know!${t}"
  echo -e "${r}==============================================${t}\n"
  sleep 3
}

# Download the file if needed
download_and_open() {
  if curl -s --head --max-time 5 https://google.com > /dev/null && curl --max-time 10 -O -L "$github_url"; then
    echo -e "\n${g}====================Trying to download the latest communication file====================${t}"
    cp "$communication_file" "$backup_file" 2>/dev/null
    show_communication_info
    explorer.exe "$communication_file" > /dev/null 2>&1 &
  fi
  clear
}

get_and_display_pattern() {
while true; do
  # Initialize and declare user_input as a local variable
  local user_input=""
  trap 'rm -f videos.txt figures.txt tables.txt' EXIT

  # Prompt the user for input
  if [ -z "$(find ./Notes/Physics_advanced -mindepth 1 -maxdepth 1 -type f -name "*.txt" 2>/dev/null)" ]; then
	read -rp $'\n\nEnter '"${g}cl${t}"' to get to class or '"${r}x${t}"' to exit: ' user_input
  else
    echo -e "\n\nYou can search your Notes by topic using uppercase letters or just feed in key words \c"
	read -rp $'\n\nEnter '"${y}Keywords...${t}"' to search or type '"${g}cl${t}"' to get to class or '"${g}sh${t}"' to share anything with us or '"${b}sr${t}"' to check out shared resources or '"${b}ch${t}"' to connect to chatgpt or '"${r}ge${t}"' to connect to Google AI or '"${m}zz${t}"' to update the code or '"${m}xx${t}"' to update learning materials or '"${c}nw${t}"' to create new workspace or '"${r}x${t}"' to exit: ' user_input
  fi

  # Check if user_input is not empty
  if [[ -n "$user_input" ]]; then
		if [[ "$user_input" == "sh" ]]; then
		  Response="We are looking forward to receiving your economic support, thoughts, suggestions, and any files you feel should reach out to everyone of our children. Please remember to label the files you are to attach using the format: Your_name_School_Subject_File_content (e.g., Muhumuza_Omega_Kasule_High_School_O_level_Chemistry_Answered_EOC1_Items.pdf). Thanks a lot for your contributions."  
		  physics_advanced="$(basename "$0") - $(date +"%Y-%m-%d %H:%M:%S") - Thoughts, suggestions, and contributions"
		  encoded_physics_advanced=$(echo "$physics_advanced" | sed 's/ /%20/g; s/\n/%0A/g')
		  encoded_body=$(echo "$Response" | sed 's/ /%20/g; s/\n/%0A/g')
		  # Open the email in the browser with the encoded physics_advanced and body
		  powershell.exe -Command "Start-Process 'https://mail.google.com/mail/?view=cm&to=2024omd256@gmail.com&su=${encoded_physics_advanced}&body=${encoded_body}'"
			return
		fi
     if [[ "$user_input" == "cl" ]]; then
      return # Exit the loop if the user enters 'cl'
     fi
     if [[ "$user_input" == "sr" ]]; then
      echo -e "\n\033[1;34mShared Resources can be found online at:\033[0m \033[4;34mhttps://muhumuza7325.github.io/OMD/\033[0m\c"
      wait_for_a_key_press
      cd Resources || { echo "Failed to access the resources... Contact OMD for help!"; return; }
      explorer.exe Physics_advanced > /dev/null 2>&1 &
      cd - > /dev/null 2>&1 || { echo "Failed to return to the original directory!"; exit 1; }
      return
     fi
    if [[ "$user_input" == "ch" ]]; then
      chatgpt #connect to chatgpt
      return
     fi
    if [[ "$user_input" == "ge" ]]; then
        echo -e "\nYou can quit with "${y}q${t}""
        geminichat
        return
     fi
    if [[ "$user_input" == "zz" ]]; then
      echo -e "\n"
      if [ "$(basename "$(pwd)")" != "Omd" ]; then
        echo -e "You can only update your code using the parent code. And then create new workspace ... \c"
        sleep 2
        return
      fi
      TEMP_FILE=$(mktemp) && curl -o "$TEMP_FILE" -L "https://github.com/Muhumuza7325/OMD/raw/main/physics_advanced_tutorial_wsl.sh" && mv "$TEMP_FILE" physics_advanced_tutorial_wsl.sh && chmod +x physics_advanced_tutorial_wsl.sh && echo -e "\n\n${y}Code successfully updated.. You will have to restart a new session${t} \c" && sleep 4 && exit || (echo -e "\n\n${m}Error updating code!... Please check your internet connection and try again!${t} \c" && rm -f "$TEMP_FILE" && return)
    fi
    if [[ "$user_input" == "xx" ]]; then
      current_datetime=$(date)
      echo -e "\nIt is  ........  ""${r}$current_datetime${t}""  ........\n\nPlease understand that the content upon which the code runs is always updated on the "${y}first day of every month${t}"  ........ \c"
      read -rp $'\n\nEnsure the code is up to date and enter '"${m}y${t}"' to proceed to the update or simply press '"${y}Enter${t}"' to get to class  ........  '$'\n> ' input
      if [[ "$input" == "y" || "$input" == "Y" ]]; then
        echo -e "\n"
        if [ "$(basename "$(pwd)")" != "Omd" ]; then
          echo -e "You can only update your learning material using the parent code ... \c"
          sleep 2
          return
        fi
        curl -O -L "https://github.com/Muhumuza7325/OMD/raw/main/update_physics_advanced.sh" || { echo -e "\n\n${m}Check your internet connection and try again!${t}" >&2; return; }
        mv update_physics_advanced.sh .update_physics_advanced.sh
        bash .update_physics_advanced.sh
        return
      else
        return
      fi
    fi
    if [[ "$user_input" == "nw" ]]; then
        new_workspace
		return
     fi
    if [[ "$user_input" == "x" ]]; then
      quit # Exit the loop if the user enters 'close'
     fi

    # Use grep to find the pattern in a file
    if [[ "$user_input" == "${user_input^^}" ]]; then
      # Case-sensitive search for user input
      result=$(grep -h -w -A 999999 "$user_input" Notes/Physics_advanced/*.txt | sed -e '1s/^/\n/' -e 's/\.\s\+/&\n\n/g' -e 's/;\s*/&\n/g' | sed '/https:/! s/^[^:]*://' | tr -d '\000' | sed 's/^ \([^ ]\)/\1/')
    else
      # Case-insensitive search for user input
      result=$(find Notes/Physics_advanced -type f -name "*.txt" -exec awk '{if (gsub(/\.\s+/,"&\n\n"FILENAME":")) print ""; print FILENAME":" $0}' {} \; | grep -i -w "$user_input" | sed -e 's/: /. /g' | awk -F: 'BEGIN {file="";} {if (file != $1) { print ""; print $1; file=$1; print ""; } print $2}' | sed -e '/https:/! s/^[^:]*://' -e '/^$/N;/^\n$/D' | sed 's/\.\s\+/&\n/g' | tr -d '\000' | grep -E "$user_input|.txt" | sed 's/$/\n/' | sed 's/;\s*/&\n/g')
    fi

    # Check if the result is not empty
    if [[ -n "$result" ]]; then
      echo "$result" > search.txt # Save the result to a file
      notepad.exe search.txt > /dev/null 2>&1 # Open the file in Notepad
      rm -f search.txt
      echo -e "\c"
      if echo "$result" | grep "Figure"; then
        echo "$result" | grep -o '\bFigure[0-9]\+.*\.jpg\(\.[0-9]\+\)*\b' > Figures/Physics_advanced/figures.txt
        sed -i -e '/^Figure/!d' -e '/^[[:space:]]*$/d' -e 's/^[[:space:]]*//;s/[[:space:]]*$//' Figures/Physics_advanced/figures.txt
        # Change to the "Figures/Physics_advanced" directory
        cd Figures/Physics_advanced || { echo "Failed to change to Figures/Physics_advanced"; return; }
        # Specify the path to the text file containing figure names
        text_file="figures.txt"
        # Read each line from the text file and open the corresponding figure
        while IFS= read -r figure_prefix || [ -n "$figure_prefix" ]; do
          # Use sed to edit the figure_prefix and store it in a temporary variable
          edited_figure_prefix=$(echo "$figure_prefix." | sed 's/.*\(Figure.*\.jpg\).*$/\1/')
          # Open the figure file using explorer.exe
          explorer.exe "${edited_figure_prefix}"* > /dev/null 2>&1 &
          sleep 5
        done < "$text_file"
        # Go back to the original directory
        cd ../.. || { echo "Failed to change back to the original directory \c"; exit 1; }
        # Remove the temporary file
        rm -f Figures/Physics_advanced/figures.txt
      fi

      if echo "$result" | grep "Table"; then
        echo "$result" | grep -o '\bTable[0-9]\+\(\.[0-9]\+\)*\b' > Tables/Physics_advanced/tables.txt
        sed -i -e '/^Table/!d' -e '/^[[:space:]]*$/d' -e 's/^[[:space:]]*//;s/[[:space:]]*$//' Tables/Physics_advanced/tables.txt
        cd Tables/Physics_advanced || { echo -e "\nFailed to change to Tables/Physics_advanced \c"; return; }
        # Specify the path to the text file containing Table names
        text_file="tables.txt"
        # Read each line from the text file and open the corresponding table
        while IFS= read -r table_prefix || [ -n "$table_prefix" ]; do
          # Use sed to edit the figure_prefix and store it in a temporary variable
          edited_table_prefix=$(echo "${table_prefix}"* | sed -n 's/\([^ ]*\.odt\).*$/\1/p')
          # Open the file
          explorer.exe "${edited_table_prefix}"* > /dev/null 2>&1 &
          sleep 10
        done < "$text_file"
        # Remove the temporary file
        # Go back to the original directory
        cd ../.. || { echo -e "\nFailed to change back to the original directory \c"; exit 1; }
        rm -f Tables/Physics_advanced/tables.txt
      fi

      if echo "$result" | grep "Video"; then
        #echo "$result" > Videos/Physics_advanced/videos.txt
        echo "$result" | grep -o '\bVideo[0-9]\+\(\.[0-9]\+\)*\b' > Videos/Physics_advanced/videos.txt
        # Remove lines not starting with "Video" and any leading/trailing whitespaces
        sed -i -e '/^Video/!d' -e '/^[[:space:]]*$/d' -e 's/^[[:space:]]*//;s/[[:space:]]*$//' Videos/Physics_advanced/videos.txt
        # Change to the "Videos/Physics_advanced" directory
        cd Videos/Physics_advanced || { echo -e "\nFailed to change to Videos/Physics_advanced \c"; return; }
        # Specify the path to the text file containing video names
        text_file="videos.txt"
        while IFS= read -r video_prefix || [ -n "$video_prefix" ]; do
          # Use sed to edit the video_prefix and store it in a temporary variable
          edited_video_prefix=$(echo "${video_prefix}"* | sed -n 's/\([^ ]*\.mp4\).*$/\1/p')
          # Open the video file using explorer.exe
          explorer.exe "${edited_video_prefix}"* > /dev/null 2>&1 &
          sleep 10
        done < "$text_file"
        # Go back to the original directory
        cd ../.. || { echo -e "\nFailed to change back to the original directory \c"; exit 1; }
        # Remove the temporary file
        rm -f Videos/Physics_advanced/videos.txt
      fi

    else
      echo -e "\nNo items match your search \c"
    fi
  else
    echo -e "\nInput is empty. Please provide a pattern \c"
  fi
done
}

# Function to select and process a random short answer question
process_random_short_answer_question() {
  # Loop to ensure a valid, non-empty question is selected
  # Save the current working directory
  pushd . > /dev/null
  # Change to the specified directory
  cd "$question_directory" || exit
while true; do
  # Increment the attempt count
  ((attempts++))
  # Check if the maximum attempts are reached
  if ((attempts >= 100))
   then
    exit 1
  fi
  local question_directory="$1"
  local file_extension_question="$2"
  local revision_file="$3"
  # Remove empty lines from all text files
  find . -type f -name "*$file_extension_question" -exec sed -i '/^[[:space:]]*$/d' {} +
  # Find all text files and randomly select one
  local selected_file # Declare the variable
  selected_file=$(find . -type f -name "*$file_extension_question" -print | shuf -n 1)
  # Check if the selected file exists
  if [ -f "$selected_file" ]; then
    # Randomly select a non-empty short answer question from the selected file
    local selected_question # Declare the variable
    selected_question=$(awk -v RS=';' 'BEGIN{srand();}{gsub(/^[[:space:]]+|[[:space:]]+$/, ""); if (length > 0 && $0 ~ /\(3 scores\)/) a[++n]=$0}END{if (n > 0) print a[int(rand()*n)+1]}' "$selected_file")
    # Check if selected question is not empty and contains non-whitespace characters
    if [[ -n "$selected_question" && "$selected_question" =~ [[:graph:]] ]]; then
      if [ ! -e "$revision_file" ]; then
        touch "$revision_file"
      fi
      # Output the selected question
        current_datetime=$(date)
      echo -e "\n\nQuestion selected on ${y}$current_datetime${t}:\n$selected_question\n"
      # Append the selected question to revision_file
      echo -e "$selected_question;" >> "$revision_file"
      if echo "$selected_question" | grep "Figure"; then
        echo "$selected_question" | grep -o '\bFigure[0-9]\+[^;]*\b' > ../../Figures/Physics_advanced/figures.txt
        sed -i -e '/^Figure/!d' -e '/^[[:space:]]*$/d' -e 's/^[[:space:]]*//;s/[[:space:]]*$//' ../../Figures/Physics_advanced/figures.txt
        # Change to the "Figures/Physics_advanced" directory
        cd ../../Figures/Physics_advanced || { echo "Failed to change to Figures/Physics_advanced"; return; }
        # Specify the path to the text file containing figure names
        text_file="figures.txt"
        # Read each line from the selected question and open the corresponding figure
        while IFS= read -r figure_prefix || [ -n "$figure_prefix" ]; do
          # Use sed to edit the figure_prefix and store it in a temporary variable
          edited_figure_prefix=$(echo "${figure_prefix}"* | sed 's/.*\(Figure.*\.jpg\).*$/\1/')
          # Open the figure file using explorer.exe
          explorer.exe "${edited_figure_prefix}"* > /dev/null 2>&1 &
        done < "$text_file"
        # Go back to the original directory
        cd ../../Revision/Physics_advanced || { echo "Failed to change back to the targeted directory \c"; exit 1; }
        # Remove the temporary file
        rm -f ../../Figures/Physics_advanced/figures.txt
      fi
      # Create a temporary file
      temp_file=$(mktemp)
      # Use grep to find lines matching the pattern and get their line numbers
      grep -n "$selected_question" "$selected_file" | awk -F: '{ print $1 }' > "$temp_file"
      # Use sed to delete lines by line numbers
      sed -i -e "$(sed 's/$/d/' "$temp_file")" "$selected_file"
      rm -f "$temp_file"
      # Check if the file is empty after deletion and remove it
      if [ ! -s "$selected_file" ] || [ -z "$(awk 'NF' "$selected_file")" ]; then
        rm "$selected_file"
      fi
	SAQ_file=$(mktemp)
	Saq_file=$(mktemp)
	temp_file22=$(mktemp)
	trap 'rm -f "$SAQ_file" "$Saq_file" "$temp_file22"' EXIT
	echo -e "\n\nPlease follow the answering format (${r}Relevance, Accuracy, Coherence, Excellence${t}), and ensure the short answer question selected above is ${g}scored${t} by your teacher or AI. By default, it will open in a text editor—respond there with your ${y}internet on for scoring${t}. Otherwise, just close the opened text file! \c"
	wait_for_a_key_press
	echo "$selected_question" > "$SAQ_file"
	echo "$selected_question" > "$Saq_file"
	notepad.exe "$SAQ_file"
	if [[ $(wc -l < "$SAQ_file") -ne $(wc -l < "$Saq_file") ]]; then
		echo -e "\n\n.......................................................................\n"
		base_name="${0##*/}"
		muhumuza="${base_name%%_tutorial*}"
		muhumuza="${muhumuza/_advanced/}"
		capitalised_muhumuza="$(echo "${muhumuza//_/ }" | sed 's/\b\(.\)/\u\1/g')"
		echo -e "A short $capitalised_muhumuza item (question) below was given to a high school student:\n" >> "$temp_file22"
		cat "$Saq_file" >> "$temp_file22"
		echo -e "\n\nThe following was most likely used as the basis for assessing the attempted item, unless otherwise specified within the item itself:" >> "$temp_file22"
		echo "Relevance (R-02 scores), Accuracy (A-02 scores), Coherence (C-02 scores), Excellence (E-01 score) ---- RACE" >> "$temp_file22"
		echo -e "\n\nEach attempted response had to be relevant (01), accurate (01), and coherent (01). A maximum of the 2 best points were considered. Where only one point was required, considering additional points was unnecessary. The Excellence score was awarded only for exceptional content." >> "$temp_file22"
		echo -e "\n\nHaving used a text editor with limited capabilities, below was the student's response for the attempted item (question):" >> "$temp_file22"
		cat "$SAQ_file" >> "$temp_file22"
		echo -e "\n\nPlease score this high school student and return the whole item with the ${r}total score${t} and ${g}remarks${t} at the beginning. Wherever there's a valid point, add the score tag ${r}(R1, A1, C1)${t}. Award up to 2 per category. If the item has its own scoring rubric, ignore RACE. Your remarks must clearly explain how any missing scores could have been earned. Be generous where appropriate, keeping in mind the student’s level. Never forget to include formatting variables (${r} and ${g})." >> "$temp_file22"
		geminichat_adv
	fi
      # Return to the original working directory
      popd > /dev/null || exit
      return
    else
      echo -e "\n\nAll the available short answer questions have been attempted. ${g}Please try the remaining activities of integration${t}... \c"
      # Return to the original working directory
      popd > /dev/null || exit
      wait_for_a_key_press
      return
    fi
  else
    echo -e "\n\nAll the available questions have most likely been attempted. ${r}To confirm, try to find an activity of integration instead${t}...\c"
    wait_for_a_key_press
    popd > /dev/null || exit
    break
  fi
done
}

# Function to select and process a random activity of integration
process_random_aoi() {
  # Loop to ensure a valid, non-empty question is selected
  # Save the current working directory
  pushd . > /dev/null
  # Change to the specified directory
  cd "$question_directory" || exit
while true; do
  # Increment the attempt count
  ((attempts++))
  # Check if the maximum attempts are reached
  if ((attempts >= 100))
   then
    exit 1
  fi
  local question_directory="$1"
  local file_extension_question="$2"
  local revision_file="$3"
  # Remove empty lines from all text files
  find . -type f -name "*$file_extension_question" -exec sed -i '/^[[:space:]]*$/d' {} +
  # Find all text files and randomly select one
  local selected_file # Declare the variable
  selected_file=$(find . -type f -name "*$file_extension_question" -print | shuf -n 1)
  # Check if the selected file exists
  if [ -f "$selected_file" ]; then
    # Randomly select a non-empty activity of integration from the selected file
    local selected_question # Declare the variable
        selected_question=$(awk -v RS=';' 'BEGIN{srand();}{gsub(/^[[:space:]]+|[[:space:]]+$/, ""); if (!(length == 0 || $0 ~ /\(3 scores\)/)) a[++n]=$0}END{if (n > 0) print a[int(rand()*n)+1]}' "$selected_file")
    # Check if selected question is not empty and contains non-whitespace characters
    if [[ -n "$selected_question" && "$selected_question" =~ [[:graph:]] ]]; then
      if [ ! -e "$revision_file" ]; then
        touch "$revision_file"
      fi
      # Output the selected question
     	current_datetime=$(date)
      echo -e "\n\nQuestion selected on ${y}$current_datetime${t}:\n$selected_question\n"
      # Append the selected question to revision_file
      echo -e "$selected_question;" >> "$revision_file"
      if echo "$selected_question" | grep "Figure"; then
        echo "$selected_question" | grep -o '\bFigure[0-9]\+[^;]*\b' > ../../Figures/Physics_advanced/figures.txt
        sed -i -e '/^Figure/!d' -e '/^[[:space:]]*$/d' -e 's/^[[:space:]]*//;s/[[:space:]]*$//' ../../Figures/Physics_advanced/figures.txt
        # Change to the "Figures/Physics_advanced" directory
        cd ../../Figures/Physics_advanced || { echo "Failed to change to Figures/Physics_advanced"; return; }
        # Specify the path to the text file containing figure names
        text_file="figures.txt"
        # Read each line from the selected question and open the corresponding figure
        while IFS= read -r figure_prefix || [ -n "$figure_prefix" ]; do
          # Use sed to edit the figure_prefix and store it in a temporary variable
          edited_figure_prefix=$(echo "${figure_prefix}"* | sed 's/.*\(Figure.*\.jpg\).*$/\1/')
          # Open the figure file using explorer.exe
          explorer.exe "${edited_figure_prefix}"* > /dev/null 2>&1 &
        done < "$text_file"
        # Go back to the original directory
        cd ../../Revision/Physics_advanced || { echo "Failed to change back to the targeted directory \c"; exit 1; }
        # Remove the temporary file
        rm -f ../../Figures/Physics_advanced/figures.txt
      fi
      # Create a temporary file
      temp_file=$(mktemp)
      # Use grep to find lines matching the pattern and get their line numbers
      grep -n "$selected_question" "$selected_file" | awk -F: '{ print $1 }' > "$temp_file"
      # Use sed to delete lines by line numbers
      sed -i -e "$(sed 's/$/d/' "$temp_file")" "$selected_file"
      rm -f "$temp_file"
      # Check if the file is empty after deletion and remove it
      if [ ! -s "$selected_file" ] || [ -z "$(awk 'NF' "$selected_file")" ]; then
        rm "$selected_file"
      fi
	AOI_file=$(mktemp)
	Aoi_file=$(mktemp)
	temp_file22=$(mktemp)
	trap 'rm -f "$AOI_file" "$Aoi_file" "$temp_file22"' EXIT
	echo -e "\n\nPlease follow the answering format (${r}Relevance, Accuracy, Coherence, Excellence${t}), and ensure the activity selected above is ${g}scored${t} by your teacher or AI. By default, it will open in a text editor—respond there with your ${y}internet on for scoring${t}. Otherwise, just close the opened text file! \c"
	wait_for_a_key_press
	echo "$selected_question" > "$AOI_file"
	echo "$selected_question" > "$Aoi_file"
	notepad.exe "$AOI_file"
	if [[ $(wc -l < "$AOI_file") -ne $(wc -l < "$Aoi_file") ]]; then
		echo -e "\n\n.......................................................................\n"
		base_name="${0##*/}"
		muhumuza="${base_name%%_tutorial*}"
		muhumuza="${muhumuza/_advanced/}"
		capitalised_muhumuza="$(echo "${muhumuza//_/ }" | sed 's/\b\(.\)/\u\1/g')"
		echo -e "A $capitalised_muhumuza item (question) below was given to a high school student:\n" >> "$temp_file22"
		cat "$Aoi_file" >> "$temp_file22"
		echo -e "\n\nThe following was most likely used as the basis for assessing the attempted item, unless otherwise specified within the item itself:" >> "$temp_file22"
		echo "Relevance (R-03 scores), Accuracy (A-03 scores), Coherence (C-03 scores), Excellence (E-01 score) ---- RACE" >> "$temp_file22"
		echo -e "\n\nEach attempted response had to be relevant (01), accurate (01), and coherent (01). A maximum of the 3 best points were considered! The Excellence score was awarded only for exceptional content." >> "$temp_file22"
		echo -e "\n\nHaving used a text editor with limited capabilities, below was the student's response for the attempted item (question):" >> "$temp_file22"
		cat "$AOI_file" >> "$temp_file22"
		echo -e "\n\nPlease score this high school student and return the whole item with the ${r}total score${t} and ${g}remarks${t} at the beginning. Wherever there's a valid point, add the score tag ${r}(R1, A1, C1)${t}. Award up to 3 per category. If the item has its own scoring rubric, ignore RACE. Your remarks must clearly explain how any missing scores could have been earned. Be generous where appropriate, keeping in mind the student’s level. Never forget to include formatting variables (${r} and ${g})." >> "$temp_file22"
		geminichat_adv
	fi
      # Return to the original working directory
      popd > /dev/null || exit
      return
        else
            echo -e "\n\nAll the available activities of integration have been attempted. ${g}Please try the remaining short answer questions${t}... \c"
      # Return to the original working directory
      popd > /dev/null || exit
      wait_for_a_key_press
      return
    fi
  else
    echo -e "\n\nNo more available questions to attempt. ${g}Opening attempted questions in the text editor${t}...\c"
        wait_for_a_key_press
        original_directory=$(pwd)
        directory_path=$(dirname "$revision_file")
        file_name=$(basename "$revision_file")
        # Change to the directory of the file
        if cd "$directory_path"; then
            notepad.exe "$file_name" > /dev/null 2>&1
          # Return to the original directory
          cd "$original_directory"
        else
          # If cd fails, return to the original directory
          cd "$original_directory"
          echo "Failed to change to the specified directory."
        fi
        echo -e "\n"
    popd > /dev/null || exit
    break
  fi
done
}

# Function to display a random success message
display_success_message() {
  # Array of echo statements for success
  local echo_success=(
    "You got that right!"
    "Well done!"
    "That's correct"
    "Great job darling!"
    "You really nailed that!"
    "Excellent!"
    "Bravo, champ!"
    "Amazing!"
    "Fantastic!"
    "Perfect!"
    "Superb!"
    "Impressive!"
    "Quite outstanding!"
    "Marvelous!"
    "Wonderful!"
    "You got that spot on!"
    "You are an angel!"
    "You're absolutely right!"
    "Awesome!"
    "You are a star!"
    "Keep shining!"
    "That's remarkable!"
    "Excellent!"
    "Magnificent!"
    "You won!"
    "That's top-notch!"
    "You nailed that!"
    "That's it!"
    "You're on fire!"
    "That's wonderful!"
    "Brilliant!"
    "That's cool!"
    "You did it!"
    "I knew you could do it!"
    "Proud of you!"
    "High five!"
    "That's the spirit!"
    "You're unstoppable!"
    "You are the icing on the cake!"
    "Is there anything you can't do?"
    "Watch out world, here you come!"
    "That's great!"
    "That's incredible!"
    "You're a rockstar!"
    "You're a genius!"
    "You're phenomenal!"
    "You're the best!"
    "You're a legend!"
    "You're a true talent!"
    "You're making waves!"
    "You're a real pro!"
    "You're dynamite!"
    "You're the epitome of excellence!"
    "You're a force to be reckoned with!"
    "You're a class act!"
    "You're the cream of the crop!"
    "You're a powerhouse!"
    "You're the MVP!"
    "You're one in a million!"
    "You're a champion!"
    "You're the real deal!"
    "You're second to none!"
    "You're the crème de la crème!"
    "You're in a league of your own!"
    "You're the crowning glory!"
    "You're a beacon of excellence!"
    "You're truly exceptional!"
    "You're a true standout!"
    "You're a true asset!"
    "You're destined for greatness!"
    "You're a living success story!"
    "You're a wealth of insight!"
    "Woooow!"
  )

  # Get a random index for success messages
  local random_index=$((RANDOM % ${#echo_success[@]}))

  # Select and display the success message
  echo -e "\n\n${g}${echo_success[random_index]}${t} \c"
}


# Function to display a random failure message
display_failure_message() {
  # Array of echo statements for failure
  local echo_fail=(
    "Oops! You missed that one!"
    "Quite the opposite!"
    "You got that wrong!"
    "Sorry, that's wrong!"
    "That's not true!"
    "Unfortunately you are wrong!"
    "You just failed that!"
    "That's incorrect!"
    "Oops! That's not it!"
    "Nope, that's not it!"
  )
    # Get a random index for failure messages
    random_index=$((RANDOM % ${#echo_fail[@]}))

    # Select and display the failure message
    echo -e "\n\n${g}${echo_fail[random_index]}${t} \c"
}

# Function to select and process a random question with an answer
process_question_answer() {
  # Save the current working directory
  pushd . > /dev/null
  # Change to the specified directory
  cd "$answered_directory" || exit
  # Initialize the score
  score=0
  total_questions=0
  max_questions=10

  while true; do
  local answered_directory="$1"
  local file_extension_answer="$2"
  local exercise_file="$3"
  # Increment the attempt count
  ((attempts++))
  # Check if the maximum attempts are reached
  if ((attempts >= 100))
  then
    echo -e "\n\nSorry that took quite long... ${r}Exiting${t}... ${g}Please try atleast two more times${t} \c"
    exit 1
  fi
  # Remove empty lines from all text files
  find . -type f -name "*$file_extension_answer" -exec sed -i '/^[[:space:]]*$/d' {} +
  ls *.ans.txt > rvsn.txt
  sed -i -e 's/\.ans\.txt//g' -e 's/_/ /g' -e 's/\([0-9]\+\)\.\([0-9]\+\)\./\2. /g' -e 's/^\([^a-zA-Z]*\)\([a-zA-Z]\)/\1\U\2/' rvsn.txt
  echo -e "\n\n"${y}Below is a list of chapters available for revision${t}" \n"
  cat rvsn.txt
  read -rp $'\n\nEnter a '"${m}specific${t}"' chapter number or press '"${r}Enter${t}"' to get a random chapter'$'\n> ' input
  if [[ -n $input ]]; then
    selected_file=$(ls | grep -E "[0-9]+\.${input}\." | grep -v "_cp")
  else
    # Find all text files and randomly select one
    local selected_file # Declare the variable
    selected_file=$(find . -type f -name "*$file_extension_answer" -size +0 -print | shuf -n 1)
  fi
  # Check if the selected file exists
  if ! [ -f "$selected_file" ]; then
    echo -e "\n\nYou answered all the available questions. ${g}Opening them alongside their answers in the text editor${t}... \c"
    wait_for_a_key_press
    original_directory=$(pwd)
    directory_path=$(dirname "$exercise_file")
    file_name=$(basename "$exercise_file")
    # Change to the directory of the file
    if cd "$directory_path"; then
      notepad.exe "$file_name" > /dev/null 2>&1
      # Return to the original directory
      cd "$original_directory"
    else
      # If cd fails, return to the original directory
      cd "$original_directory"
      echo "Failed to change to the specified directory."
    fi
    echo -e "\n"
    popd > /dev/null || exit
    break 2
  fi
  # Loop to ensure a valid, non-empty question is selected
  # Record the start time
  start_time=$(date +%s)
  echo -e "\n\nIf possible, ${c}please discuss the selected questions in the quiz below in your groups to come to a${t} ${r}single conclusion${t} \c"
  while [ "$total_questions" -lt "$max_questions" ]; do
    if [ -f "$selected_file" ]; then
      # Randomly select a non-empty question from the selected file
      local selected_question # Declare the variable
              selected_question=$(awk -v RS=';' 'BEGIN{srand();}{gsub(/^[[:space:]]+|[[:space:]]+$/, ""); if (length > 0 && $0 !~ /answered/) a[++n]=$0}END{if (n > 0) print a[int(rand()*n)+1]}' "$selected_file")
      # Check if selected question is not empty and contains non-whitespace characters
      if [[ -n "$selected_question" && "$selected_question" =~ [[:graph:]] ]]; then
        if [ ! -e "$exercise_file" ]; then
          touch "$exercise_file"
        fi
        # Output the selected question with a new line after each 'opening ('
        clear_and_center "${b}Selected Question${t}:\n\n\c"
        echo "${selected_question//(/$'\n'}"

        if echo "$selected_question" | grep "Figure"; then
          echo "$selected_question" | grep -o '\bFigure[0-9]\+[^;]*\b' > ../../Figures/Physics_advanced/figures.txt
          sed -i -e '/^Figure/!d' -e '/^[[:space:]]*$/d' -e 's/^[[:space:]]*//;s/[[:space:]]*$//' ../../Figures/Physics_advanced/figures.txt
          # Change to the "Figures/Physics_advanced" directory
          cd ../../Figures/Physics_advanced || { echo "Failed to change to Figures/Physics_advanced"; return; }
          # Specify the path to the text file containing figure names
          text_file="figures.txt"
          # Read each line from the selected question and open the corresponding figure
          while IFS= read -r figure_prefix || [ -n "$figure_prefix" ]; do
            # Use sed to edit the figure_prefix and store it in a temporary variable
	          edited_figure_prefix=$(echo "${figure_prefix}"* | sed 's/.*\(Figure.*\.jpg\).*$/\1/')
            # Open the figure file using explorer.exe
            explorer.exe "${edited_figure_prefix}"* > /dev/null 2>&1 &
          done < "$text_file"
          # Go back to the original directory
          cd ../../Revision/Physics_advanced || { echo "Failed to change back to the targeted directory \c"; exit 1; }
          # Remove the temporary file
          rm -f ../../Figures/Physics_advanced/figures.txt
        fi

        # Create a temporary file
        temp_file=$(mktemp)
        # Trap the EXIT signal to delete the temporary file on script exit
        trap 'rm -f "$temp_file"' EXIT
        # Use grep to find lines matching the pattern and get their line numbers
        grep -n "$selected_question" "$selected_file" | awk -F: '{ print $1 }' > "$temp_file"

        # Read the line number from the temporary file
        read -r line_number < "$temp_file"

        # Check if the selected question contains the pattern (a)
        if [[ "$selected_question" =~ \(a\) ]]; then
          # Determine the selected index based on the line number
          selected_index=$(( (line_number - 1) % 4 ))
          # Use a case statement to map the index to the corresponding character
          case $selected_index in
            0) selected_character='a' ;;
            1) selected_character='b' ;;
            2) selected_character='c' ;;
            3) selected_character='d' ;;
          esac
        else
          # Check if the line number is even
          if ((line_number % 2 == 0)); then
              selected_character=y
          else
            selected_character=n
          fi
        fi

        # Prompt the user for an answer and convert it to lowercase
        # Initialize the score for each question
        local score_per_question=0
        while true; do
          if [[ "$selected_question" =~ \(a\) ]]; then
            read -rp $'\n'"${b}Your answer${t}"' '"${r}(a/b/c/d)${t}"' : ' user_answer
          else
            read -rp $'\n'"${b}Your answer${t}"' '"${r}(y/n)${t}"' : ' user_answer
          fi
          user_answer=${user_answer,,} # Convert to lowercase
          if [[ -n "$user_answer" ]]; then
            if [ "$selected_character" = "$user_answer" ]; then
              ((score_per_question++))
              # Call the function to display a random success message
              display_success_message
            else
              if ([ "$selected_character" = "y" ] && [ "$user_answer" = "n" ]) || ([ "$selected_character" = "n" ] && [ "$user_answer" = "y" ]); then
                # Call the function to display a random failure message
                echo -en "\007" && display_failure_message
              else
                echo -en "\007"
                echo -e "\n\n${r}Not quite right!${t} The answer is ""${g}""$selected_character""${t}"": \c"
              fi
            fi

            # Update the total score
            ((score += score_per_question))

            # Increment total_questions
            ((total_questions++))

            # Display the current score
            echo -e "Your current score is: $score \c"
          else
            echo -e "\nInput is empty. Please provide an answer \n\c"
            continue
          fi
          break
        done

        # Append the selected question to the exercise_file
        echo -e "$selected_question; $selected_character" >> "$exercise_file"
        # Use sed to substitute lines by line numbers
        sed -i -e "$(sed 's|$|s/.*/answered;/|' "$temp_file")" "$selected_file"
        rm -f "$temp_file"
        # Check if all remaining non-empty lines have the pattern "answered;" and remove the file
        if awk '!/^$/ && $0 !~ /^answered;$/ { exit 1 }' "$selected_file"; then
          rm "$selected_file"
        fi
      fi
    else
      break
    fi
  done
  wait_for_a_key_press
  echo -e "\n\nOhh! ${b}Finally!${t} You got this covered \c"
  # Calculate percentage based on total_score and total_questions
  percentage=$((score * 100 / total_questions))
  if [ "$percentage" -lt 80 ]; then
     cd ../..
     wscript.exe //nologo sound1.vbs &
     cd - > /dev/null 2>&1 || exit
  else
     cd ../..
     wscript.exe //nologo sound.vbs &
     cd - > /dev/null 2>&1 || exit
  fi
  # Record the end time
  end_time=$(date +%s)
  # Calculate and print the elapsed time
  elapsed_time=$((end_time - start_time))
  # Convert elapsed time from seconds to minutes and seconds
  minutes=$((elapsed_time / 60))
  seconds=$((elapsed_time % 60))
  if [ $minutes -gt 0 ] && [ $seconds -gt 0 ]; then
    converted_time="${minutes}min ${seconds}s"
  else
    converted_time="${seconds}s"
  fi
  wait_for_a_key_press
  echo -e "\n\nYou have used ${b}$converted_time${t} to answer ${y}$total_questions qns${t} and your ${b}total score${t} out of $total_questions is: ${r}$score ($percentage%)${t} \c"
  if [ -f ../../../.school_name ]; then
    read -r school_name < ../../../.school_name
    school_name="${school_name// /_}"
    touch ../../../."$school_name"_students_file.txt
    sed -i '/^[[:space:]]*$/d' ../../../."$school_name"_students_file.txt
    existing_class=$(awk '{print $1}' ../../../.physics_advanced_user_state)
    existing_topic=$(awk '{print $2}' ../../../.physics_advanced_user_state)
    echo ''
    if replace_prompt 'By just pressing Enter, the obtained score will be allocated to every recorded student... If otherwise, enter your Initial(s) (space-separated) to label the score' replacement; then
      replacement=${replacement^^} # Convert to uppercase
      names="($replacement) "
    else
      names=''
    fi
    if grep -q "Physics_advanced" ../../../."$school_name"_students_file.txt; then
      sed -i -E 's/;/\n/g' ../../../."$school_name"_students_file.txt
      # Find the line with the word Physics_advanced, replace the information below it with the already available information adding a comma existing_class_existing_topic [$percentage]
      if [ "$existing_topic" == "r" ]; then
        sed -i '/Physics_advanced/{n;s/\(.*\)/\1, '"$existing_class"'_'"$input"' '"$names"'['"$percentage%"']/}' ../../../."$school_name"_students_file.txt
      else
        (( existing_topic-- ))
        sed -i '/Physics_advanced/{n;s/\(.*\)/\1, '"$existing_class"'_'"$existing_topic"' '"$names"'['"$percentage%"']/}' ../../../."$school_name"_students_file.txt
      fi
    else
      if [ "$existing_topic" == "r" ]; then
        sed -i -E '/^School/ i\Physics_advanced\n'"${existing_class} ${names}[${percentage}%]"'' ../../../."$school_name"_students_file.txt
        echo -e "Physics_advanced\n"$existing_class"_'"$input"' "$names"["$percentage%"]" >> ../../../."$school_name"_students_file.txt
      else
        (( existing_topic-- ))
        sed -i -E '/^School/ i\Physics_advanced\n'"${existing_class}_${existing_topic} ${names}[${percentage}%]"'' ../../../."$school_name"_students_file.txt
        echo -e "Physics_advanced\n"$existing_class"_"$existing_topic" "$names"["$percentage%"]" >> ../../../."$school_name"_students_file.txt
      fi
        sed -i '1,2s/.*//g' ../../../."$school_name"_students_file.txt
        sed -i '/^[[:space:]]*$/d' ../../../."$school_name"_students_file.txt
    fi
    sed -i -e ':a;N;$!ba;s/\n/;/g' ../../../."$school_name"_students_file.txt
    sed -i -E 's/;School/\nSchool/g' ../../../."$school_name"_students_file.txt
    echo -e "\n\nThe obtained score has been recorded and allocated accordingly... \c"
  else
    echo -e "\n\nThe obtained score has not been recorded... Please visit topic options on the next visit and select the option to provide student details \c"
  fi
  wait_for_a_key_press
  # If the total score is below 80, prompt the user to retry
  if [ "$percentage" -lt 80 ]; then
    echo -e "\n\nGiven your score, ${r}let's see if there are more questions for you${t} \c"
    wait_for_a_key_press
    # Check if the are more files
    if find . -maxdepth 2 -type f -name "*$file_extension_answer" | grep -q .; then
      echo -e "\n\n${r}Perfect!${t}. You still have questions! ${y}All the best dear one${t} \c"
      score=0
      total_questions=0
      max_questions=10
    else
      echo -e "\n\nYou are all ${r}good${t}. Questions are done! ${y}All the best dear one${t}. ${g}Opening answered questions alongside their answers in the text editor${t}...\c"
      wait_for_a_key_press
      original_directory=$(pwd)
      directory_path=$(dirname "$exercise_file")
      file_name=$(basename "$exercise_file")
      # Change to the directory of the file
      if cd "$directory_path"; then
      	notepad.exe "$file_name" > /dev/null 2>&1
        # Return to the original directory
        cd "$original_directory"
      else
        # If cd fails, return to the original directory
        cd "$original_directory"
        echo "Failed to change to the specified directory."
      fi
      echo -e "\n"
      popd > /dev/null || exit
      break 2
    fi
  else
    echo -e "\n\n${g}Congratulations!${t} You have successfully completed the quiz! \c"
    wait_for_a_key_press
    read -rp $'\n\nDo you want to try other questions? '"${r}(y/n)${t}"': ' retry_input
    if [ "${retry_input,,}" != "yes" ] && [ "${retry_input,,}" != "y" ]; then
      echo -e "\n\nYou never entered y or yes... ${y}Returning to your session${t}\n"
      popd > /dev/null || exit
      wait_for_a_key_press
      break 2
    else
      if find . -maxdepth 2 -type f -name "*$file_extension_answer" | grep -q .; then
        echo -e "\n\n${r}Perfect!${t}. You still have questions! ${y}All the best dear one${t} \c"
        score=0
        total_questions=0
        max_questions=10
      else
        echo -e "\n\nYou are all ${r}good${t}. Questions are done! ${y}All the best dear one${t}. ${g}Opening answered questions alongside their answers in the text editor${t}...\c"
    		wait_for_a_key_press
        original_directory=$(pwd)
        directory_path=$(dirname "$exercise_file")
        file_name=$(basename "$exercise_file")
        # Change to the directory of the file
        if cd "$directory_path"; then
          notepad.exe "$file_name" > /dev/null 2>&1
          # Return to the original directory
          cd "$original_directory"
        else
          # If cd fails, return to the original directory
          cd "$original_directory"
          echo "Failed to change to the specified directory."
        fi
        echo -e "\n"
        popd > /dev/null || exit
        break 2
        fi
      fi
    fi
  done
}

# Function to check the state file and resume from the last point
function resume_from_last_point() {
  if [ -f .physics_advanced_user_state ]; then
    last_class=$(awk -F' ' '{print $1}' .physics_advanced_user_state)
    last_topic=$(awk -F' ' '{print $2}' .physics_advanced_user_state)
    if [ -n "$last_class" ] && [ -n "$last_topic" ]; then
      echo -e "\n       Resuming from ${r}S$last_class${t} : ${g}Topic '$last_topic'${t} \c"
      rm -f .physics_advanced_surveyor
      clear_and_center "     ..........  Resumed from ${g}Topic $last_topic${t} (${r}S$last_class${t})  ............"
      return 0
    elif [ -n "$last_class" ] && [ -z "$last_topic" ]; then
      echo -e "\nTaking you to ${r}class selection${t} \c"
      wait_for_a_key_press
      return 0
    elif [ -z "$last_class" ] && [ -z "$last_topic" ]; then
      return 0
    else
      echo -e "\n${b}Unable to track your last point${t}. Starting from the beginning... \c"
      wait_for_a_key_press
      return 1
    fi
  else
    echo -e "\n${b}Starting from the very beginning of this tutorial... \c"
    wait_for_a_key_press
    return 1
  fi
}

# Function to handle user input for resuming
function handle_resume_input() {
  # Check if the user wants to resume from the last point
  clear_and_center "${r}\n\n      Equitable, Relevant, and Quality Education for All${t}\n\n\n      ${m}Your Education is our Future${t} -------- ${g}Never despair${t}"
  read -rp $'\n\n\n  '"${y}Press Enter to resume from your last point. Otherwise, enter${t}"' (no or n) : ' resume_choice
  resume_choice=${resume_choice,,} # Convert to lowercase
  if ! [[ "$resume_choice" == "no" || "$resume_choice" == "n" ]]; then
    rm -f .physics_advanced_topic_selected
    if resume_from_last_point; then
      # User wants to resume
      class=$last_class
      topic=$last_topic
    fi
  else
    touch .physics_advanced_surveyor
  fi
}

# Function to select and process random questions with answers
process_final_assignment() {
  # Check if user is.physics_advanced_ready for the assignment
  # Check if .current_physics_advanced_class is accidentally empty
  if [ ! -s .current_physics_advanced_class ]; then
    # echo 5 to .current_physics_advanced_class
    echo "5" > .current_physics_advanced_class
  fi
  # Read the value from the .current_physics_advanced_class file
  current_physics_advanced_class=$(<.current_physics_advanced_class) 2>/dev/null
  # Check if the value in the .physics_advanced_ready file is equal to $class
  # Read the value from the .physics_advanced_ready file
  if [ ! -s .physics_advanced_ready ]; then
    echo "0" > .physics_advanced_ready
  fi
  how.physics_advanced_ready=$(<.physics_advanced_ready) 2>/dev/null
  # Check if the value is equal to $class
  if [ "$how.physics_advanced_ready" -lt "$current_physics_advanced_class" 2>/dev/null ]; then
    read -rp $'\n\nYou havent done all the topic assignments for your current physics_advanced class\n\n'"${r}Proceeding from here will affect your very final score${y}"'. To go back and progress right, enter '"${y}ok${t}"'. Otherwise, press the Enter key to do the final class assignment: ' progress
    if [ "$progress" == "ok" ]; then
      return
    fi
  fi
  echo -e "\n\n${y}You are welcome to your final class session.${t}\n\n${r}You will have to use a maximum of 3600s (1hr) to obtain a minimum of 95 scores by answering 100 questions, @ carrying 1 score!${t}\n\n${g}You must get that score to move on to the next class. We wish you the very best dear...${t} \c"
  # Save the current working directory
  pushd . > /dev/null
  # Change to the specified directory
  cd "$answered_directory" || exit
  # Initialize the score
  score=0
  total_questions=0
  max_questions=100
  while true; do
    local answered_directory="$1"
    local file_extension_answer="$2"
    local exercise_file="$3"
    # Increment the attempt count
    ((attempts++))
    # Check if the maximum attempts are reached
    if ((attempts >= 100))
    then
      echo -e "\n\nSorry that took quite long... ${r}Exiting${t}... ${g}Please try atleast two more times${t} \c"
      exit 1
    fi
    if [ -s ../../physics_advanced_answered_ans.txt ]; then
      # Specify the temporary file name within the current working directory
      cpd="./cpd.txt"
      # Copy answered questions to the temporary file
      cp ../../physics_advanced_answered_ans.txt "$cpd"
      sed -i 's/\(.*\)\(.\)$/\2\1/' "$cpd"
    fi
    # Remove empty lines from all text files
    find . -type f \( -name "*$file_extension_answer" -o -name "cpd.txt" \) -exec sed -i '/^[[:space:]]*$/d' {} +
    # Find all text files and randomly select one
    local selected_file # Declare the variable
    # Find all text files and the dynamically generated temporary file, then randomly select one
    selected_file=$(find . -type f \( -name "*$file_extension_answer" -o -name "cpd.txt" \) -size +0 -print | shuf -n 1)
    # Check if the selected file exists
    if ! [ -f "$selected_file" ]; then
      echo -e "\n\n${r}Your learning material has most likely been interfered with.${t}\nTo proceed, you will need fresh learning material from OMD.\n${g}Returning to your current session...${t} \c"
      wait_for_a_key_press
      popd > /dev/null || exit
      break 2
    fi
    # Loop to ensure a valid, non-empty question is selected
    # Record the start time
    start_time=$(date +%s)
    while [ "$total_questions" -lt "$max_questions" ]; do
    selected_file=$(find . -type f \( -name "*$file_extension_answer" -o -name "cpd.txt" \) -size +0 -print | shuf -n 1)
      if [ -f "$selected_file" ]; then
        # Randomly select a non-empty question from the selected file
        local selected_question # Declare the variable
        selected_question=$(awk -v RS=';' 'BEGIN{srand();}{gsub(/^[[:space:]]+|[[:space:]]+$/, ""); if (length > 0 && $0 !~ /answered/) a[++n]=$0}END{if (n > 0) print a[int(rand()*n)+1]}' "$selected_file")
        # Check if selected question is not empty and contains non-whitespace characters
        if [[ -n "$selected_question" && "$selected_question" =~ [[:graph:]] ]]; then
          if [ ! -e "$exercise_file" ]; then
            touch "$exercise_file"
          fi
          # Output the selected question with a new line after each 'opening ('
          clear_and_center "${b}Selected Question${t}:\n\n\c"
          if grep -q "cpd" <<< "$selected_file"; then
            echo "${selected_question:1}"
          else
            echo "${selected_question//(/$'\n'}"
          fi

          if echo "$selected_question" | grep "Figure"; then
            echo "$selected_question" | grep -o '\bFigure[0-9]\+[^;]*\b' > ../../Figures/Physics_advanced/figures.txt
            sed -i -e '/^Figure/!d' -e '/^[[:space:]]*$/d' -e 's/^[[:space:]]*//;s/[[:space:]]*$//' ../../Figures/Physics_advanced/figures.txt
            # Change to the "Figures/Physics_advanced" directory
            cd ../../Figures/Physics_advanced || { echo "Failed to change to Figures/Physics_advanced"; return; }
            # Specify the path to the text file containing figure names
            text_file="figures.txt"
            # Read each line from the selected question and open the corresponding figure
            while IFS= read -r figure_prefix || [ -n "$figure_prefix" ]; do
              # Use sed to edit the figure_prefix and store it in a temporary variable
		          edited_figure_prefix=$(echo "${figure_prefix}"* | sed 's/.*\(Figure.*\.jpg\).*$/\1/')
              # Open the figure file using explorer.exe
              explorer.exe "${edited_figure_prefix}"* > /dev/null 2>&1 &
            done < "$text_file"
            # Go back to the original directory
            cd ../../Revision/Physics_advanced || { echo "Failed to change back to the targeted directory \c"; exit 1; }
            # Remove the temporary file
            rm -f ../../Figures/Physics_advanced/figures.txt
          fi
          # Create a temporary file
          temp_file=$(mktemp)
          # Trap the EXIT signal to delete the temporary files on script exit
          trap 'rm -f cpd.txt; rm -f "$temp_file"' EXIT
          # Use grep to find lines matching the pattern and get their line numbers
          grep -n "$selected_question" "$selected_file" | awk -F: '{ print $1 }' > "$temp_file"
          # Read the line number from the temporary file
          read -r line_number < "$temp_file"

          if grep -q "cpd" <<< "$selected_file"; then
            selected_character=$(echo "$selected_question" | cut -c1)
          else
            # Check if the selected question contains the pattern (a)
            if [[ "$selected_question" =~ \(a\) ]]; then
              # Determine the selected index based on the line number
              selected_index=$(( (line_number - 1) % 4 ))
              # Use a case statement to map the index to the corresponding character
              case $selected_index in
                0) selected_character='a' ;;
                1) selected_character='b' ;;
                2) selected_character='c' ;;
                3) selected_character='d' ;;
              esac
            else
              # Check if the line number is even
              if ((line_number % 2 == 0)); then
                selected_character=y
              else
                selected_character=n
              fi
            fi
          fi
          # Prompt the user for an answer and convert it to lowercase
          # Initialize the score for each question
          local score_per_question=0
          while true; do
            if [[ "$selected_question" =~ \(a\) ]]; then
              read -rp $'\n'"${b}Your answer${t}"' '"${r}(a/b/c/d)${t}"' : ' user_answer
            else
              read -rp $'\n'"${b}Your answer${t}"' '"${r}(y/n)${t}"' : ' user_answer
            fi
            user_answer=${user_answer,,} # Convert to lowercase
            if [[ -n "$user_answer" ]]; then
              if [ "$selected_character" = "$user_answer" ]; then
                ((score_per_question++))
                # Call the function to display a random success message
                display_success_message
              else
                if ([ "$selected_character" = "y" ] && [ "$user_answer" = "n" ]) || ([ "$selected_character" = "n" ] && [ "$user_answer" = "y" ]); then
                  # Call the function to display a random failure message
                  echo -en "\007" && display_failure_message
                else
                  echo -en "\007"
                  echo -e "\n\n${r}Not quite right!${t} The answer is ""${g}""$selected_character""${t}"": \c"
                fi
              fi

              # Update the total score
              ((score += score_per_question))

              # Increment total_questions
              ((total_questions++))

              # Display the current score
              echo -e "Your current score is: $score \c"
            else
              echo -e "\nInput is empty. Please provide an answer \n\c"
              continue
            fi
            break
          done

          if ! grep -q "cpd" <<< "$selected_file"; then
            # Append the selected question to the exercise_file
            echo -e "$selected_question; $selected_character" >> "$exercise_file"
          fi
          # Use sed to substitute lines by line numbers
          sed -i -e "$(sed 's|$|s/.*/answered;/|' "$temp_file")" "$selected_file"
          rm -f "$temp_file"
          # Check if all remaining non-empty lines have the pattern "answered;" and remove the file
          if awk '!/^$/ && $0 !~ /^answered;$/ { exit 1 }' "$selected_file"; then
            rm "$selected_file"
          fi
        fi
      else
        break
      fi
    done
    wait_for_a_key_press
    if ! [ "$total_questions" == 100 ]; then
      echo -e "\n\n${r}Sorry about this, your learning material had most likely been interfered with before this session.${t}\nTo proceed, you will need fresh learning material from OMD.\n${g}Displaying your current progress...${t} \c"
      # Record the end time
      end_time=$(date +%s)
      # Calculate and print the elapsed time
      elapsed_time=$((end_time - start_time))
      # Calculate percentage based on total_score and total_questions
      percentage=$((score * 100 / total_questions))
      wait_for_a_key_press
      echo -e "\n\nYou have used ${b}$elapsed_time seconds${t} to answer ${y}$total_questions questions${t} and your ${b}total score${t} out of $total_questions is: ${r}$score ($percentage%)${t} \c"
      wait_for_a_key_press
      popd > /dev/null || exit
      break 2
    else
      # Record the end time
      end_time=$(date +%s)
      # Calculate and print the elapsed time
      elapsed_time=$((end_time - start_time))
      # Convert elapsed time from seconds to minutes and seconds
      minutes=$((elapsed_time / 60))
      seconds=$((elapsed_time % 60))
      if [ $minutes -gt 0 ] && [ $seconds -gt 0 ]; then
        converted_time="${minutes}min ${seconds}s"
      else
        converted_time="${seconds}s"
      fi
      # Calculate percentage based on total_score and total_questions
      percentage=$((score * 100 / total_questions))
      if [ "$elapsed_time" -gt 3600 ]; then
        echo -e "\n\nYou have used ${b}$converted_time${t} to answer ${y}$total_questions qns${t} and your ${b}total score${t} out of $total_questions is: ${r}$score ($percentage%)${t} \c"
        wait_for_a_key_press
        echo -e "\n\nGiven the time you took, ${r}You will have to try just one more time!${t} \c"
        score=0
        total_questions=0
        max_questions=100
      else
        echo -e "\n\nOhh! ${b}Finally!${t} You got this covered in time... \c"
        wait_for_a_key_press
        echo -e "\n\nYou have used ${b}$elapsed_time seconds${t} to answer ${y}$total_questions questions${t} and your ${b}total score${t} out of $total_questions is: ${r}$score ($percentage%)${t} \c"
        wait_for_a_key_press
        # If the total score is below 95, prompt the user to retry
        if [ "$percentage" -lt 95 ]; then
          echo -e "\n\nGiven your score, ${r}You will have to try just one more time!${t} \c"
          score=0
          total_questions=0
          max_questions=100
        else
          popd > /dev/null || exit
          cd ../..
          wscript.exe //nologo sound2.vbs &
          cd - > /dev/null 2>&1 || exit
          if ! [ -f .current_physics_advanced_class ]; then
            # Echo the result to the file .current_class
            echo "2" > .current_physics_advanced_class
            echo -e "\n\n${g}Congratulations!${t} You have successfully gained access to the next class (S2).\n\nHowever, if a diferrent class was expected, then something is wrong.\n\nFrom here, you will have to go back to go back to S2 and acess the next classes the right way \c"
            wait_for_a_key_press
          else
            # Add 1 to $class value
            new_class=$(($class + 1))
            # Read the value from the file
            current_physics_advanced_class=$(<.current_physics_advanced_class) 2>/dev/null
            # Check if the new_class value is lt $current_physics_advanced_class
            if [ "$new_class" -gt "$current_physics_advanced_class" 2>/dev/null ]; then
		          # Echo the result to the file .current_class
		          echo "$new_class" > .current_physics_advanced_class
            fi
            echo -e "\n\n${g}Congratulations!${t} You have successfully gained access to the next class! \c"
            wait_for_a_key_press
          fi
          echo -e "\n\nYou can now choose the next class from the available options... ${y}Returning to your current session${t} \c"
          wait_for_a_key_press
          break 2
        fi
      fi
    fi
  done
}

# Function to process sample_items
get_sample_items() {
	# File to store the last echo time
	last_echo_time_file="/tmp/last_echo_time.txt"
	rm -f .physics_advanced_topic_selected
	# Save the current working directory
	pushd . > /dev/null
	cd Revision/Physics_advanced || { echo "Directory not found"; return; }
	if [ -f .revise.txt ] && [ ! -s .revise.txt ]; then
		rm -f .revise.txt
	fi
	while true; do
		if [ ! -f .revise.txt ]; then
			# Get the current time in seconds
			current_time=$(date +%s)
			# Check if the last echo time file exists
			if [ ! -f "$last_echo_time_file" ]; then
				echo $current_time > "$last_echo_time_file"
				last_echo_time=0
			else
				last_echo_time=$(cat "$last_echo_time_file")
			fi
			# Check if the difference exceeds 3600 seconds (1 hour)
			time_diff=$((current_time - last_echo_time))
			if [ $time_diff -gt 3600 ]; then
				# Echo the message and update the last echo time
				echo -e "\n\n\n${r}You are advised to not make any changes to the provided answers, instead, you can make copies that you can edit${t}\n\n${y}For a teacher willing to join us reach out to everyone of our children, please send us your questions and answers in a file labelled with your name, school, physics_advanced, and file content (e.g., Muhumuza_Omega_Kasule_High_School_O_level_Chemistry_Answered_EOC1_Items.pdf) to our contacts${t}\n\n\nEmail: ${g}2024omd256@gmail.com${t} \c"
				echo $current_time > "$last_echo_time_file"
			fi
			read -rp $'\n\n\nEnter '"${m}any character${t}"' for access to the file of answered items or simply press '"${r}Enter${t}"' to get items to attempt : ' input
			if [[ -n $input ]]; then
				explorer.exe .physics_advanced_samples* > /dev/null 2>&1 &
				clear
				popd > /dev/null || exit
				return
			fi
			if [ -f .e_o_c.txt ]; then
				echo -e "\n\n${y}Below is the list of the elements of construct${t} \n"
				cat .e_o_c.txt
				read -rp $'\nEnter a '"${m}specific${t}"' number or simply press '"${r}Enter${t}"' to get random sample items'$'\n> ' input
				if [[ -n $input ]]; then
					echo -e "\n${c}Below is the basis of assessment for the selected element of construct${t} \n"
					selected_file1=$(ls -a | grep -E "\.e_o_c_${input}\.txt")
					cat "$selected_file1"
					# Remove empty lines from the selected files
					find . -type f -name "*_samples_[0-9].txt" -exec sed -i '/^[[:space:]]*$/d' {} +
					selected_file=$(ls -a | grep -E "\.e_o_c_${input}_samples" | shuf -n 1)
				else
					# Find all files and randomly select one
					local selected_file # Declare the variable
					selected_file=$(find . -maxdepth 1 -type f -name "*_samples_[0-9].txt" -print | shuf -n 1 | xargs -n 1 basename)
					selected_file1=$(echo "$selected_file" | sed -E 's/_samples_[0-9]+//')
				fi
				# Check if the selected file exists
				if [ -f "$selected_file" ]; then
					# Randomly select a non-empty item from the selected file
					local selected_item # Declare the variable
					selected_item=$(awk -v RS='*' 'BEGIN{srand();}{gsub(/^[[:space:]]+|[[:space:]]+$/, ""); if (!(length == 0 || $0 ~ /\(3 scores\)/)) a[++n]=$0}END{if (n > 0) print a[int(rand()*n)+1]}' "$selected_file")
					# Check if selected item is not empty and contains non-whitespace characters
					if [[ -n "$selected_item" && "$selected_item" =~ [[:graph:]] ]]; then
						if [ ! -e answered_items.txt ]; then
						touch answered_items.txt
						fi
						echo -e "\n\nYou are advised to follow the ${r}answering format${t} and have your item ${g}scored${t} by your teacher or AI.\c"
						wait_for_a_key_press
						# Output the selected question
						current_datetime=$(date)
						clear
						echo -e "		Item selected on ${y}$current_datetime${t}:"
						echo -e "$selected_item" > .revise.txt
						# Modify the selected item by replacing # with a newline and * with two newlines
						modified_item=$(echo -e "$selected_item" | sed 's/#/\n/g')
						# Append the modified item to the text file
						echo -e "$modified_item\n\n" >> answered_items.txt
						# Create a temporary file
						temp_file=$(mktemp)
						# Use grep to find lines matching the pattern and get their line numbers
						grep -n "$(printf '%s' "$selected_item" | sed 's/[]\/$*.^|[]/\\&/g')" "$selected_file" | awk -F: '{ print $1 }' > "$temp_file"
						# Use sed to delete both the matching line and the one immediately after it
						sed -i -e "$(sed 's/$/,+1d/' "$temp_file")" "$selected_file"
						rm -f "$temp_file"
						# Check if the file is empty after deletion and remove it
						if [ ! -s "$selected_file" ] || [ -z "$(awk 'NF' "$selected_file")" ]; then
							rm "$selected_file"
						fi
					else
						echo -e "\n\nAll the available items have been attempted. ${g}Opening attempted items in the text editor${t}... \c"
						notepad.exe answered_items.txt > /dev/null 2>&1 # Open the file
						# Return to the original working directory
						popd > /dev/null || exit
						wait_for_a_key_press
						return
					fi
				else
					echo -e "\n\nNo more available items to attempt. ${g}Opening attempted items in the text editor${t}...\c"
					wait_for_a_key_press
					notepad.exe answered_items.txt > /dev/null 2>&1 # Open the file
					popd > /dev/null || exit
					return
				fi
			else
				explorer.exe .physics_advanced_samples* > /dev/null 2>&1 &
				popd > /dev/null || exit
				return
			fi
			if [[ $(grep -o '#' .revise.txt | wc -l) -gt 10 ]]; then
				item_file=$(mktemp)
				ans_file=$(mktemp)
				revise_copy=$(mktemp)
				temp_file22=$(mktemp)
				trap 'rm -f "$item_file" "$ans_file" "$revise_copy" "$temp_file22"' EXIT
				cp .revise.txt "$ans_file"
				cp .revise.txt "$item_file"
				sed -i 's/#/\n/g' "$ans_file"
				sed -i 's/#/\n/g' "$item_file"
				sed -i 's/\r//g' "$item_file"
				sed -i 's/^[ \t]*//' "$item_file"
				if grep -q '^(a)' "$item_file"; then
				    awk '
				    NR == 1 { print; next }
				    /^\(a\)/ && !keep {
				        keep = 1
				        print
				        next
				    }
				    keep && /^\([b-z]\)/ { print; next }
				    keep && /^\(a\)/ { next }
				    keep { next }
				    ' "$item_file" > tmp && mv tmp "$item_file"
				    sed -i $'s/^\\(([b-zB-Z])\\)/\\\n\\1/' "$item_file"
				else
				    head -n 1 "$item_file" > tmp && mv tmp "$item_file"
				fi
				cp "$item_file" "$revise_copy"
				echo -e "\n\n${y}You are advised to answer the item to be opened in the text editor, then have your internet on to have it scored!\nOtherwise, just close the opened item to have a look at the suggested responses!${t} \c"
				wait_for_a_key_press
				notepad.exe "$item_file"
				if [[ $(wc -l < "$revise_copy") -ne $(wc -l < "$item_file") ]]; then
					echo -e "\n\n.......................................................................\n"
					echo -e "The item (question) below was given to a high school student:\n" >> "$temp_file22"
					cat "$revise_copy" >> "$temp_file22"
					echo -e "\n\nBelow was the basis of assessment for the attempted item: " >> "$temp_file22"
					cat "$selected_file1" >> "$temp_file22"
					echo -e "\n\nBelow was the teacher's response for the attempted item: " >> "$temp_file22"
					cat "$ans_file" >> "$temp_file22"
					echo -e "\n\nHaving used a text editor with limited capabilities, below was the student's response for the attempted item: " >> "$temp_file22"
					cat "$item_file" >> "$temp_file22"
					echo -e "\n\nPlease score this high school student, and return the whole item with the ${r}total score${t} and ${g}remarks${t} at the beginning... Wherever there is a right point in the answer provided, put the score of ${r}(O1)${t} in brackets.... For parts whose maximum scores are already predetermined, please remember to cater for that when giving the total score at the beginning of the item (If scores are indicated within the item itself, ignore the basis of assesment and use the indicated scores)... You MUST score according to the scoring guide and give remarks according to how the missing scores could have been obtained... Keep it mind that the scoring points are totally indepedent. Being a high school student, where the student is so close to the answer, award the point with a remark.... Most importantly, note that you are reporting everything to the student themselves and that whatever is in the teacher's response is to be considered right if it also appears in the student's response. In cases where you think the teacher got that wrong too, give the score to the student with a remark... Never forget to include those variables (${r} and ${g})" >> "$temp_file22"
					geminichat_adv
					rm -f .revise.txt "$item_file" "$revise_copy" 2>/dev/null
					echo -e "\n\n${y}The teacher's response is to be opened in the text editor, please look through the answers!${t} \c"
					wait_for_a_key_press
					notepad.exe "$ans_file"
					rm -f "$ans_file" 2>/dev/null
				else
					while IFS= read -r line || [ -n "$line" ]; do
						# Use a # as a secondary delimiter and read into an array
						IFS='#' read -r -a sentences <<< "$line"
						# Loop through each sentence
						for sentence in "${sentences[@]}"; do
							if [[ -n "$sentence" && "$sentence" =~ [[:graph:]] ]]; then
								if [[ $sentence == *"Figure"* ]]; then
									modified_sentence=$(echo "$sentence" | sed 's/.*\(Figure.*\.jpg\).*$/\1/')
									# Change to the "../../Figures/Physics_advanced" directory
									cd ../../Figures/Physics_advanced || { echo "Failed to change to ../../Figures/Physics_advanced"; return; }
									# Open the file using explorer.exe
									explorer.exe "$modified_sentence" > /dev/null 2>&1 &
									# Go back to the original directory
									cd ../../../../ || { echo "Failed to change back to the original directory \c"; exit 1; }
								fi
								if [[ $sentence == *"Table"* ]]; then
									cd ../../Tables/Physics_advanced || { echo -e "\nFailed to change to ../../Tables/Physics_advanced \c"; return; }
									explorer.exe "$sentence" > /dev/null 2>&1 &
									cd ../../../../ || { echo -e "\nFailed to change back to the original directory \c"; exit 1; }
								fi
								if [[ $sentence == *"Video"* ]]; then
									cd ../../Videos/Physics_advanced || { echo -e "\nFailed to change to ../../Videos/Physics_advanced \c"; return; }
									explorer.exe "$sentence" > /dev/null 2>&1 &
									cd ../../../../ || { echo -e "\nFailed to change back to the original directory \c"; exit 1; }
								fi
								if [ $((sentence_count % 5)) -eq 0 ]; then
									# Clear and center for every 5th sentence
									clear_and_center "${y}$sentence${t} \c"
								elif [ $((sentence_count % 7)) -eq 0 ]; then
									# Display the sentence in green for every 7th sentence
									echo -e "\n\n${g}$sentence${t} \c"
								elif [ $((sentence_count % 6)) -eq 0 ]; then
									# Display the sentence in magenta for every 6th sentence
									echo -e "\n\n${m}$sentence${t} \c"
								elif [ $((sentence_count % 8)) -eq 0 ]; then
									echo -e "\n\n${c}$sentence${t} \c"
								elif [ $((sentence_count % 3)) -eq 0 ]; then
									# Display the sentence in blue for every 3rd sentence
									echo -e "\n\n${b}$sentence${t} \c"
								elif [ $((sentence_count % 2)) -eq 0 ] || [ $((sentence_count % 4)) -eq 0 ]; then
									# Display the sentence in green for every 4th sentence
									echo -e "\n\n${g}$sentence${t} \c"
								else
									# Display the sentence in red for other sentences
									echo -e "\n\n${r}$sentence${t} \c"
								fi
							else
								echo -e "\n\nKind regards @OMD \c"
							fi
							((sentence_count++))
							# Wait for a keypress
							read -rsn 1 </dev/tty
						done
					done < .revise.txt
				fi
			else
				while IFS= read -r line || [ -n "$line" ]; do
					# Use a # as a secondary delimiter and read into an array
					IFS='#' read -r -a sentences <<< "$line"
					# Loop through each sentence
					for sentence in "${sentences[@]}"; do
						if [[ -n "$sentence" && "$sentence" =~ [[:graph:]] ]]; then
							if [[ $sentence == *"Figure"* ]]; then
								modified_sentence=$(echo "$sentence" | sed 's/.*\(Figure.*\.jpg\).*$/\1/')
								# Change to the "../../Figures/Physics_advanced" directory
								cd ../../Figures/Physics_advanced || { echo "Failed to change to ../../Figures/Physics_advanced"; return; }
								# Open the file using explorer.exe
								explorer.exe "$modified_sentence" > /dev/null 2>&1 &
								# Go back to the original directory
								cd ../../../../ || { echo "Failed to change back to the original directory \c"; exit 1; }
							fi
							if [[ $sentence == *"Table"* ]]; then
								cd ../../Tables/Physics_advanced || { echo -e "\nFailed to change to ../../Tables/Physics_advanced \c"; return; }
								explorer.exe "$sentence" > /dev/null 2>&1 &
								cd ../../../../ || { echo -e "\nFailed to change back to the original directory \c"; exit 1; }
							fi
							if [[ $sentence == *"Video"* ]]; then
								cd ../../Videos/Physics_advanced || { echo -e "\nFailed to change to ../../Videos/Physics_advanced \c"; return; }
								explorer.exe "$sentence" > /dev/null 2>&1 &
								cd ../../../../ || { echo -e "\nFailed to change back to the original directory \c"; exit 1; }
							fi
							if [ $((sentence_count % 5)) -eq 0 ]; then
								# Clear and center for every 5th sentence
								clear_and_center "${y}$sentence${t} \c"
							elif [ $((sentence_count % 7)) -eq 0 ]; then
								# Display the sentence in green for every 7th sentence
								echo -e "\n\n${g}$sentence${t} \c"
							elif [ $((sentence_count % 6)) -eq 0 ]; then
								# Display the sentence in magenta for every 6th sentence
								echo -e "\n\n${m}$sentence${t} \c"
							elif [ $((sentence_count % 8)) -eq 0 ]; then
								echo -e "\n\n${c}$sentence${t} \c"
							elif [ $((sentence_count % 3)) -eq 0 ]; then
								# Display the sentence in blue for every 3rd sentence
								echo -e "\n\n${b}$sentence${t} \c"
							elif [ $((sentence_count % 2)) -eq 0 ] || [ $((sentence_count % 4)) -eq 0 ]; then
								# Display the sentence in green for every 4th sentence
								echo -e "\n\n${g}$sentence${t} \c"
							else
								# Display the sentence in red for other sentences
								echo -e "\n\n${r}$sentence${t} \c"
							fi
						else
							echo -e "\n\nKind regards @OMD \c"
						fi
						((sentence_count++))
						# Wait for a keypress
						read -rsn 1 </dev/tty
					done
				done < .revise.txt
			fi
		else
			while IFS= read -r line || [ -n "$line" ]; do
				# Use a # as a secondary delimiter and read into an array
				IFS='#' read -r -a sentences <<< "$line"
				# Loop through each sentence
				for sentence in "${sentences[@]}"; do
					if [[ -n "$sentence" && "$sentence" =~ [[:graph:]] ]]; then
						if [[ $sentence == *"Figure"* ]]; then
							modified_sentence=$(echo "$sentence" | sed 's/.*\(Figure.*\.jpg\).*$/\1/')
							# Change to the "../../Figures/Physics_advanced" directory
							cd ../../Figures/Physics_advanced || { echo "Failed to change to ../../Figures/Physics_advanced"; return; }
							# Open the file using explorer.exe
							explorer.exe "$modified_sentence" > /dev/null 2>&1 &
							# Go back to the original directory
							cd ../../../../ || { echo "Failed to change back to the original directory \c"; exit 1; }
						fi
						if [[ $sentence == *"Table"* ]]; then
							cd ../../Tables/Physics_advanced || { echo -e "\nFailed to change to ../../Tables/Physics_advanced \c"; return; }
							explorer.exe "$sentence" > /dev/null 2>&1 &
							cd ../../../../ || { echo -e "\nFailed to change back to the original directory \c"; exit 1; }
						fi
						if [[ $sentence == *"Video"* ]]; then
							cd ../../Videos/Physics_advanced || { echo -e "\nFailed to change to ../../Videos/Physics_advanced \c"; return; }
							explorer.exe "$sentence" > /dev/null 2>&1 &
							cd ../../../../ || { echo -e "\nFailed to change back to the original directory \c"; exit 1; }
						fi
						if [ $((sentence_count % 5)) -eq 0 ]; then
							# Clear and center for every 5th sentence
							clear_and_center "${y}$sentence${t} \c"
						elif [ $((sentence_count % 7)) -eq 0 ]; then
							# Display the sentence in green for every 7th sentence
							echo -e "\n\n${g}$sentence${t} \c"
						elif [ $((sentence_count % 6)) -eq 0 ]; then
							# Display the sentence in magenta for every 6th sentence
							echo -e "\n\n${m}$sentence${t} \c"
						elif [ $((sentence_count % 8)) -eq 0 ]; then
							echo -e "\n\n${c}$sentence${t} \c"
						elif [ $((sentence_count % 3)) -eq 0 ]; then
							# Display the sentence in blue for every 3rd sentence
							echo -e "\n\n${b}$sentence${t} \c"
						elif [ $((sentence_count % 2)) -eq 0 ] || [ $((sentence_count % 4)) -eq 0 ]; then
							# Display the sentence in green for every 4th sentence
							echo -e "\n\n${g}$sentence${t} \c"
						else
							# Display the sentence in red for other sentences
							echo -e "\n\n${r}$sentence${t} \c"
						fi
					else
						echo -e "\n\nKind regards @OMD \c"
					fi
					((sentence_count++))
					# Wait for a keypress
					read -rsn 1 </dev/tty
				done
			done < .revise.txt
		fi
		rm -f .revise.txt .physics_advanced_topic_selected 2>/dev/null
	done
	popd > /dev/null || exit
	return
}

# Function to create new work space
new_workspace() {
# Create the Students directory if it does not exist
mkdir -p Students
while true; do
  read -rp $'\n\nTo create a '"${y}new workspace${t}"', enter unique '"${r}Initials${t}"''$'\n\n> ' initials
  # List directories in the Students folder and check for a match
  if ls Students | grep -wq "$initials"; then
    echo -e "\nThe provided initials are ${m}already${t} in use. Please choose other initials!"
    # Define the path to the similar file and a temporary copy
    similar_file="../../$(basename "$0")"
    temp_file="$(mktemp)"
    # Check if a similar file exists
    if [ -f "$similar_file" ]; then
      # Copy the similar file to the temporary file
      cp "$similar_file" "$temp_file"
      # Apply sed replacements on the temporary file
      sed -i -e 's|../../Notes|../../../../Notes|g' -e 's|../../Videos|../../../../Videos|g' -e 's|../../Figures|../../../../Figures|g' -e 's|../../Students|../../../../Students|g' -e 's|../../Tables|../../../../Tables|g' -e 's#cd - > /dev/null 2>&1 ||#cd - > /dev/null 2>\&1 ||#g' "$temp_file"
      mv "$temp_file" "$0"
      chmod +x "$0"
      echo -e "\n\n${y}Your code has been updated. You will need to restart a new session.${t} \n"
      sleep 8
      exit
    fi
  else
    mkdir "Students/$initials"
    cp -r Exercise Revision *_wsl.sh "Students/$initials"
    echo -e "                  $initials\n" > "Students/$initials/Exercise/physics_advanced_answered_ans.txt"
    echo -e "                  $initials\n" > "Students/$initials/Revision/physics_advanced_covered_qns.txt"
    for file in "Students/$initials"/*.sh; do
      sed -i -e 's|Notes|../../Notes|g' -e 's|Videos|../../Videos|g' -e 's|Figures|../../Figures|g' -e 's|Students|../../Students|g' -e 's|Tables|../../Tables|g' -e 's#cd ../.. ||#cd - > /dev/null 2>\&1 ||#g' "$file"
      # Determining the correct path to the Desktop using the USERPROFILE environment variable
      desktop_path=""
      windows_userprofile=$(cmd.exe /C "cd /d %USERPROFILE% & echo %USERPROFILE%" 2>/dev/null | tr -d '\r')
      # Converting Windows path to WSL path
      windows_userprofile_wsl=$(wslpath -u "$windows_userprofile")
      if [ -d "$windows_userprofile_wsl/OneDrive/Desktop" ]; then
        desktop_path="$windows_userprofile_wsl/OneDrive/Desktop"
        desktop_path1="$windows_userprofile_wsl/Desktop"
      else
        desktop_path="$windows_userprofile_wsl/Desktop"
      fi
      # Generating the batch file content
      echo -e "@echo off\nC:\\Windows\\System32\\wsl.exe -e bash -c '$HOME/Omd/Students/$initials/${file##*/}'" > "$desktop_path/$initials $initials_${file##*/}.bat"
      echo -e "@echo off\nC:\\Windows\\System32\\wsl.exe -e bash -c '$HOME/Omd/Students/$initials/${file##*/}'" > "$desktop_path1/$initials $initials_${file##*/}.bat"
    done
    echo -e "\n\nBy default, ${y}new executable files${t} have been created and shortcuts named ("${g}"$initials"${t}") put on your desktop... \n"
    break
  fi
done
}

geminichat_adv() {
  { read -r API_KEY < "$HOME/.gemini_api"; } 2>/dev/null
  conversation_history=$'Please, all responses must be precise, concise, adventurous, academic (chemical formulae must be written with subscripts and superscripts), and in British English..... Please don\'t repeat what is already in my input.... \n\nQuestion: '
  # Define a flag variable
  first_prompt=true
  # Loop for interactive input
  while true; do
    if $first_prompt; then
      if [ -f "$temp_file22" ]; then
        prompt=""
        first_prompt=false # Set to false after reading from the file
        prompt1=$(<"$temp_file22")
      fi
    else
      # Prompt for input directly
      read -rp $'\n'"${y}Prompt${t}"': ' prompt
      if [[ "$prompt" != "q" ]]; then
        prompt=$'\n\n'"$prompt..."
      fi
    fi
    # Skip exit request
    if [[ "$prompt" == "q" ]]; then
      break
    fi
    # Combine prompt with conversation history
    combined_prompt="$conversation_history $prompt1 ....... $prompt"
    # Call API and capture generated text with a 20-second timeout
    generated_text=$(curl -s \
      --max-time 20 \
      https://generativelanguage.googleapis.com/v1beta/models/gemini-2.0-flash:generateContent?key=$API_KEY \
      -H 'Content-Type: application/json' \
      -X POST \
      -d '{"contents": [{"parts":[{"text": "'"$combined_prompt"'"}]}]}' \
      2> /dev/null | grep "text")
    # Extract generated text
    generated_text=$(echo "$generated_text" | sed 's/^[ \t]*"text": "//g' | sed 's|\\"||g' | tr -d '*' | rev | sed 's/"//1' | rev)
    # Update conversation history
    conversation_history="$conversation_history $prompt1 $prompt $generated_text"
    # Print generated text
    echo -e "\n$generated_text"
    # Reset prompt1 after first iteration
    prompt1=""
  done
}

# Function to select and process a random question with an answer for adventure
process_question_answer_adv() {
  # Create two temporary files
  temp_file11=$(mktemp)
  temp_file22=$(mktemp)
  # Set up a trap to remove both temporary files on script exit
  trap 'rm -f "$temp_file11" "$temp_file22"' EXIT
  # Save the current working directory
  pushd . > /dev/null
  # Change to the specified directory
  cd "$answered_directory" || exit
  # Initialize the score
  score=0
  total_questions=0
  max_questions=10
  while true; do
    local answered_directory="$1"
    local file_extension_answer="$2"
    local exercise_file="$3"
    # Increment the attempt count
    ((attempts++))
    # Check if the maximum attempts are reached
    if ((attempts >= 100))
    then
      echo -e "\n\nSorry that took quite long... ${r}Exiting${t}... ${g}Please try atleast two more times${t} \c"
      exit 1
    fi
    # Remove empty lines from all text files
    find . -type f -name "*$file_extension_answer" -exec sed -i '/^[[:space:]]*$/d' {} +
    ls *.ans.txt > rvsn.txt
    sed -i -e 's/\.ans\.txt//g' -e 's/_/ /g' -e 's/\([0-9]\+\)\.\([0-9]\+\)\./\2. /g' -e 's/^\([^a-zA-Z]*\)\([a-zA-Z]\)/\1\U\2/' rvsn.txt
    echo -e "\n\n"${y}Below is a list of chapters available for adventure${t}" \n"
    cat rvsn.txt
    read -rp $'\n\nEnter a '"${m}specific${t}"' chapter number or press '"${r}Enter${t}"' to get a random chapter'$'\n> ' input
    if [[ -n $input ]]; then
      selected_file=$(ls | grep -E "[0-9]+\.${input}\." | grep -v "_cp")
    else
      # Find all text files and randomly select one
      local selected_file # Declare the variable
      selected_file=$(find . -type f -name "*$file_extension_answer" -size +0 -print | shuf -n 1)
    fi
    # Check if the selected file exists
    if ! [ -f "$selected_file" ]; then
      echo -e "\n\nYou got no possible adventures. ${g}Opening answered questions alongside their answers in the text editor${t}... \c"
      wait_for_a_key_press
      original_directory=$(pwd)
      directory_path=$(dirname "$exercise_file")
      file_name=$(basename "$exercise_file")
      # Change to the directory of the file
      if cd "$directory_path"; then
        notepad.exe "$file_name" > /dev/null 2>&1
        # Return to the original directory
        cd "$original_directory"
      else
        # If cd fails, return to the original directory
        cd "$original_directory"
        echo "Failed to change to the specified directory."
      fi
      echo -e "\n"
      popd > /dev/null || exit
      break 2
    fi
    # Loop to ensure a valid, non-empty question is selected
    # Record the start time
    start_time=$(date +%s)
    echo -e "\n\nWelcome to today's adventure. If possible, ${c}please discuss the selected questions along the way in your groups to come to a${t} ${r}single conclusion${t} \c"
    while [ "$total_questions" -lt "$max_questions" ]; do
      if [ -f "$selected_file" ]; then
        # Randomly select a non-empty question from the selected file
        local selected_question # Declare the variable
        selected_question=$(awk -v RS=';' 'BEGIN{srand();}{gsub(/^[[:space:]]+|[[:space:]]+$/, ""); if (length > 0 && $0 !~ /answered/) a[++n]=$0}END{if (n > 0) print a[int(rand()*n)+1]}' "$selected_file")
        # Check if selected question is not empty and contains non-whitespace characters
        if [[ -n "$selected_question" && "$selected_question" =~ [[:graph:]] ]]; then
          if [ ! -e "$exercise_file" ]; then
            touch "$exercise_file"
          fi
          # Output the selected question with a new line after each 'opening ('
          clear_and_center "${b}Selected Question${t}:\n\n\c"
          echo "${selected_question//(/$'\n'}"
          echo "${selected_question//(/$'\n'}" > "$temp_file22"
          if echo "$selected_question" | grep -q "Figure"; then
            echo "$selected_question" | grep -o '\bFigure[0-9]\+[^;]*\b' > ../../../Figures/Physics_advanced/figures.txt
            sed -i -e '/^Figure/!d' -e '/^[[:space:]]*$/d' -e 's/^[[:space:]]*//;s/[[:space:]]*$//' ../../../Figures/Physics_advanced/figures.txt
            echo -e "\nNote: There is an attached figure!" >> "$temp_file22"
            # Save the current working directory
            pushd . > /dev/null
            # Change to the "Figures/Physics_advanced" directory
            cd ../../../Figures/Physics_advanced || { echo "Failed to change to Figures/Physics_advanced"; return; }
            # Specify the path to the text file containing figure names
            text_file="figures.txt"
            while IFS= read -r figure_prefix || [ -n "$figure_prefix" ]; do
              # Use sed to edit the figure_prefix and store it in a temporary variable
              edited_figure_prefix=$(echo "$figure_prefix." | sed 's/.*\(Figure.*\.jpg\).*$/\1/')
              # Open the figure file using explorer.exe
              explorer.exe "${edited_figure_prefix}"* > /dev/null 2>&1 &
            done < "$text_file"
            # Remove the temporary file
            rm -f figures.txt
            # Go back to the original directory
            popd > /dev/null || { echo "Failed to change back to the targeted directory \c"; exit 1; }
          fi
          # Use grep to find lines matching the pattern and get their line numbers
          grep -n "$selected_question" "$selected_file" | awk -F: '{ print $1 }' > "$temp_file11"
          # Read the line number from the temporary file
          read -r line_number < "$temp_file11"
          # Check if the selected question contains the pattern (a)
          if [[ "$selected_question" =~ \(a\) ]]; then
            # Determine the selected index based on the line number
            selected_index=$(( (line_number - 1) % 4 ))
            # Use a case statement to map the index to the corresponding character
            case $selected_index in
              0) selected_character='a' ;;
              1) selected_character='b' ;;
              2) selected_character='c' ;;
              3) selected_character='d' ;;
            esac
          else
            # Check if the line number is even
            if ((line_number % 2 == 0)); then
              selected_character=y
            else
              selected_character=n
            fi
          fi
          # Prompt the user for an answer and convert it to lowercase
          # Initialize the score for each question
          local score_per_question=0
          while true; do
            if [[ "$selected_question" =~ \(a\) ]]; then
              read -rp $'\n'"${b}Your answer${t}"' '"${r}(a/b/c/d)${t}"' : ' user_answer
              echo -e "\nWhich of the 4 options is correct?" >> "$temp_file22"
            else
              read -rp $'\n'"${b}Your answer${t}"' '"${r}(y/n)${t}"' : ' user_answer
              echo -e "\nIs this a yes (y) or a no (n)?" >> "$temp_file22"
            fi
            user_answer=${user_answer,,} # Convert to lowercase
            if [[ -n "$user_answer" ]]; then
              if [ "$selected_character" = "$user_answer" ]; then
                ((score_per_question++))
                # Append the value of user_answer to the temporary file
                echo -e "\nAccording to most sources, I am right. My answer is ($user_answer)" >> "$temp_file22"
                # Connect to AI to get a random success message and further details
                echo -e "\nPlease start by sharing something sweet, interesting, and motivating. Do not add any labels or titles (labels or titles like Something sweet:, etc. must not be in your response). Then, give a brief explanation of why my answer is right. If my answer is wrong, share your opinion..." >> "$temp_file22"
                geminichat_adv
              else
                if ([ "$selected_character" = "y" ] && [ "$user_answer" = "n" ]) || ([ "$selected_character" = "n" ] && [ "$user_answer" = "y" ]); then
                  # Append the value of user_answer to the temporary file
                  echo -e "\nAccording to most sources, my answer ($user_answer) isn't the correct one" >> "$temp_file22"
                  # Connect to AI to get a random positive message and further details
                  echo -e "\nPlease start by sharing something positive, encouraging, and motivating. Do not add any labels or titles (labels or titles like Something positive:, etc. must not be in your response). Then, give a brief explanation of why my answer is wrong. If my answer is right, share your opinion..." >> "$temp_file22"
                  geminichat_adv
                  echo -en "\007"
                else
                  # Append the value of user_answer to the temporary file
                  echo -e "\nAccording to most sources, my answer ($user_answer) isn't the correct one" >> "$temp_file22"
                  # Connect to AI to get a random positive message and further details
                  echo -e "\nPlease start by sharing something positive, encouraging, and motivating. Do not add any labels or titles (labels or titles like Something positive:, etc. must not be in your response). Then, give a brief explanation of why my answer is wrong. If my answer is right, share your opinion..." >> "$temp_file22"
                  geminichat_adv
                  echo -en "\007"
                fi
              fi
              # Update the total score
              ((score += score_per_question))
              # Increment total_questions
              ((total_questions++))
              # Display the current score
              echo -e "\n\nYour ${g}current${t} score is: $score \c"
            else
              echo -e "\nInput is ${r}empty${t}. Please provide an answer \n\c"
              continue
            fi
            break
          done
          # Append the selected question to the exercise_file
          echo -e "$selected_question; $selected_character" >> "$exercise_file"
          # Use sed to substitute lines by line numbers
          sed -i -e "$(sed 's|$|s/.*/answered;/|' "$temp_file11")" "$selected_file"
          rm -f "$temp_file11"
          # Check if all remaining non-empty lines have the pattern "answered;" and remove the file
          if awk '!/^$/ && $0 !~ /^answered;$/ { exit 1 }' "$selected_file"; then
            rm "$selected_file"
          fi
        fi
      else
        break
      fi
    done
    wait_for_a_key_press
    echo -e "\n\nOhh! ${b}Finally!${t} You got this covered \c"
    # Calculate percentage based on total_score and total_questions
    percentage=$((score * 100 / total_questions))
    if [ "$percentage" -lt 80 ]; then
       cd ../..
       wscript.exe //nologo sound1.vbs &
       cd - > /dev/null 2>&1 || exit
    else
       cd ../..
       wscript.exe //nologo sound.vbs &
       cd - > /dev/null 2>&1 || exit
    fi
    # Record the end time
    end_time=$(date +%s)
    # Calculate and print the elapsed time
    elapsed_time=$((end_time - start_time))
    # Convert elapsed time from seconds to minutes and seconds
    minutes=$((elapsed_time / 60))
    seconds=$((elapsed_time % 60))
    if [ $minutes -gt 0 ] && [ $seconds -gt 0 ]; then
      converted_time="${minutes}min ${seconds}s"
    else
      converted_time="${seconds}s"
    fi
    wait_for_a_key_press
    echo -e "\n\nYou have used ${b}$converted_time${t} to answer ${y}$total_questions qns${t} and your ${b}total score${t} out of $total_questions is: ${r}$score ($percentage%)${t} \c"
    if [ -f ../../../.school_name ]; then
      read -r school_name < ../../../.school_name
      school_name="${school_name// /_}"
      touch ../../../."$school_name"_students_file.txt
      sed -i '/^[[:space:]]*$/d' ../../../."$school_name"_students_file.txt
      existing_class=$(awk '{print $1}' ../../../.physics_advanced_user_state)
      existing_topic=$(awk '{print $2}' ../../../.physics_advanced_user_state)
      echo ''
      if replace_prompt 'By just pressing Enter, the obtained score will be allocated to every recorded student... If otherwise, enter your Initial(s) (space-separated) to label the score' replacement; then
        replacement=${replacement^^} # Convert to uppercase
        names="($replacement) "
      else
        names=''
      fi
      if grep -q "Physics_advanced" ../../../."$school_name"_students_file.txt; then
        sed -i -E 's/;/\n/g' ../../../."$school_name"_students_file.txt
        # Find the line with the word Physics_advanced, replace the information below it with the already available information adding a comma existing_class_existing_topic [$percentage]
        if [ "$existing_topic" == "z" ]; then
          sed -i '/Physics_advanced/{n;s/\(.*\)/\1, '"$existing_class"' '"$names"'['"$percentage%"']/}' ../../../."$school_name"_students_file.txt
        else
          (( existing_topic-- ))
          sed -i '/Physics_advanced/{n;s/\(.*\)/\1, '"$existing_class"'_'"$existing_topic"' '"$names"'['"$percentage%"']/}' ../../../."$school_name"_students_file.txt
        fi
      else
        if [ "$existing_topic" == "z" ]; then
          sed -i -E '/^School/ i\Physics_advanced\n'"${existing_class} ${names}[${percentage}%]"'' ../../../."$school_name"_students_file.txt
          echo -e "Physics_advanced\n"$existing_class" "$names"["$percentage%"]" >> ../../../."$school_name"_students_file.txt
        else
          (( existing_topic-- ))
          sed -i -E '/^School/ i\Physics_advanced\n'"${existing_class}_${existing_topic} ${names}[${percentage}%]"'' ../../../."$school_name"_students_file.txt
          echo -e "Physics_advanced\n"$existing_class"_"$existing_topic" "$names"["$percentage%"]" >> ../../../."$school_name"_students_file.txt
        fi
        sed -i '1,2s/.*//g' ../../../."$school_name"_students_file.txt
        sed -i '/^[[:space:]]*$/d' ../../../."$school_name"_students_file.txt
      fi
      sed -i -e ':a;N;$!ba;s/\n/;/g' ../../../."$school_name"_students_file.txt
      sed -i -E 's/;School/\nSchool/g' ../../../."$school_name"_students_file.txt
      echo -e "\n\nThe obtained score has been recorded and allocated accordingly... \c"
    else
      echo -e "\n\nThe obtained score has not been recorded... Please visit topic options on the next visit and select the option to provide student details \c"
    fi
    wait_for_a_key_press
    # If the total score is below 80, prompt the user to retry
    if [ "$percentage" -lt 80 ]; then
      echo -e "\n\nGiven your score, ${r}let's see whether it is possible to go on another adventure!${t} \c"
      wait_for_a_key_press
      # Check if the are more files
      if find . -maxdepth 2 -type f -name "*$file_extension_answer" | grep -q .; then
        echo -e "\n\n${r}Perfect!${t}. Let's get into another adventure! ${y}All the best dear one${t} \c"
        score=0
        total_questions=0
        max_questions=10
      else
        echo -e "\n\nYou are all ${r}good${t}. No more possible adventures for you! ${y}All the best dear one${t}. ${g}Opening answered questions alongside their answers in the text editor${t}...\c"
        wait_for_a_key_press
        original_directory=$(pwd)
        directory_path=$(dirname "$exercise_file")
        file_name=$(basename "$exercise_file")
        # Change to the directory of the file
        if cd "$directory_path"; then
          notepad.exe "$file_name" > /dev/null 2>&1
          # Return to the original directory
          cd "$original_directory"
        else
          # If cd fails, return to the original directory
          cd "$original_directory"
          echo "Failed to change to the specified directory."
        fi
        echo -e "\n"
        popd > /dev/null || exit
        break 2
      fi
    else
      echo -e "\n\n${g}Congratulations!${t} You have successfully completed this adventure! \c"
      wait_for_a_key_press
      read -rp $'\n\nDo you want to try on another adventure? '"${r}(y/n)${t}"': ' retry_input
      if [ "${retry_input,,}" != "yes" ] && [ "${retry_input,,}" != "y" ]; then
        echo -e "\n\nYou never entered y or yes... ${y}Returning to your session${t}\n"
        popd > /dev/null || exit
        wait_for_a_key_press
        break 2
      else
        if find . -maxdepth 2 -type f -name "*$file_extension_answer" | grep -q .; then
          echo -e "\n\n${r}Perfect!${t}. Let's get into another adventure! ${y}All the best dear one${t} \c"
          score=0
          total_questions=0
          max_questions=10
        else
          echo -e "\n\nYou are all ${r}good${t}. No more possible adventures for you! ${y}All the best dear one${t}. ${g}Opening answered questions alongside their answers in the text editor${t}...\c"
          wait_for_a_key_press
          original_directory=$(pwd)
          directory_path=$(dirname "$exercise_file")
          file_name=$(basename "$exercise_file")
          # Change to the directory of the file
          if cd "$directory_path"; then
            notepad.exe "$file_name" > /dev/null 2>&1
            # Return to the original directory
            cd "$original_directory"
          else
            # If cd fails, return to the original directory
            cd "$original_directory"
            echo "Failed to change to the specified directory."
          fi
          echo -e "\n"
          popd > /dev/null || exit
          break 2
        fi
      fi
    fi
  done
}

{ read -r key < "$HOME/.openai_api"; } 2>/dev/null
export OPENAI_KEY="$key"

# File paths
communication_file="omd_communication.txt"
backup_file=".omd_communication.txt"
github_url="https://github.com/Muhumuza7325/OMD/raw/main/omd_communication.txt"
if [ -f "$communication_file" ]; then
  current_time=$(date +%s)
  file_mtime=$(stat -c %Y "$communication_file" 2>/dev/null)
  if [ -z "$file_mtime" ]; then
    download_and_open
  fi
  time_diff=$((current_time - file_mtime))
  if [ "$time_diff" -gt 21600 ] && [ "$time_diff" -le 86400 ]; then
    # Use hidden flag file to track if it was already opened
    flag_file="$(dirname "$communication_file")/.opened_$(basename "$communication_file")"
    if [ ! -f "$flag_file" ] || [ "$(stat -c %Y "$flag_file")" -lt "$file_mtime" ]; then
      if [ -s "$communication_file" ] && grep -q '[^[:space:]]' "$communication_file"; then
      show_communication_info
      explorer.exe "$communication_file" > /dev/null 2>&1 &
      touch "$flag_file"
      fi
    fi
  elif [ "$time_diff" -gt 86400 ]; then
    rm -f "$communication_file" "$backup_file" "$(dirname "$communication_file")/.opened_$(basename "$communication_file")" 2>/dev/null
    download_and_open
  fi
else
  download_and_open
fi

# Extract subomdject name from the script name
script_base=$(basename "$0" .sh) # Remove .sh extension
subomdject_raw="${script_base%%_tutorial*}"
subomdject_cap="${subomdject_raw^}" # Capitalise first letter
if [ -f .skip_.omd_communication.txt ]; then
  if grep -qF "[$subomdject_cap]" .skip_.omd_communication.txt; then
    mv .skip_.omd_communication.txt .omd_communication.txt
  fi
fi

if [ ! -f .physics_advanced_user_state ]; then
	touch .physics_advanced_user_state
	touch .physics_advanced_surveyor
	get_and_display_pattern
else
  if [ -f .omd_communication.txt ]; then
    process_random_communication .omd_communication.txt
  else
    process_random_reminder .physics_advanced_reminder
  fi
	handle_resume_input
fi

if [ -z "$class" ] && [ -s ".physics_advanced_user_state" ]; then
  get_and_display_pattern
fi
# Check for the presence of specific directories and a file
if ! [ -d "Notes/Physics_advanced" ] || ! [ -d "Revision" ] || ! [ -d "Exercise" ] || ! [ -d "Videos" ] || ! [ -d "Figures" ] || ! [ -d "Tables" ]; then
  echo -e "\n\nTo change to your desirable font, right click in the title bar of the terminal or click on the three lines if they are present. From the menu that appears, select properties\nSelect unnamed, check custom font, click on it and choose the size you’d like\nThen click select \c"
  wait_for_a_key_press 
  echo -e "\n\nAlways remember to press ${r}control and c${t} together or just close the terminal to exit a class session\n\nIf nothing goes wrong, you will always be able to continue from where you stopped. In most cases, pressing the backspace key will connect you to an AI model and entering q will always return you from the model to your current session${b} \c"
  wait_for_a_key_press

  # Create additional directories and files
  mkdir -p Notes Notes/Physics_advanced Revision Revision/Physics_advanced Revision/Physics_advanced/{S5,S6} Exercise Exercise/Physics_advanced Exercise/Physics_advanced/{S5,S6} Videos Videos/Physics_advanced Figures Figures/Physics_advanced Tables Tables/Physics_advanced
  touch Revision/physics_advanced_covered_qns.txt Exercise/physics_advanced_answered_ans.txt
  echo -e "\n"
  pwd
  echo -e "\n\n${t}The displayed path above is the path to your directory, please note it down \c"
  wait_for_a_key_press
  echo -e "\n\n${y}Folders to store content generated have been created for you in the background and displayed below, along with the files you extracted from the downloaded zipped folder${t}${b} \c"
  echo -e "\n"
  ls "$PWD"
  wait_for_a_key_press
  echo -e "\n\n${t}For this tutorial, you will require current learning material from OMD in your current folder or directory\n\nOtherwise follow the procedure below to obtain the material \c"
  echo
fi

if [ -z "$(find ./Notes/Physics_advanced -mindepth 1 -maxdepth 1 -type f -name "*.txt" 2>/dev/null)" ]; then
  read -rp $'\n\nTo get material for this tutorial, get your internet on and press the enter key or press any character key followed by the Enter key to exit: ' user_input

  if [[ -z "$user_input" ]]; then
    echo -e "\nYou pressed the ${r}Enter${t} key... Fetching learning material \n\n\c"

    if ! command -v curl &> /dev/null; then
      sudo apt-get update
      sudo apt-get install -y curl || { echo -e "\n\nError installing curl... You can install using sudo apt-get install curl \c"; exit 1; }
    fi

    sudo apt-get install -y jq
    pip install -q -U google-generativeai > /dev/null 2>&1

    curl -sS https://raw.githubusercontent.com/0xacx/chatGPT-shell-cli/main/install.sh | sudo -E bash > /dev/null 2>&1

    curl -O -L https://github.com/Muhumuza7325/OMD/raw/main/PHY/1.1.measurement_and_dimensions_of_physical_quantities.txt || echo -e "\n\nError fetching material for this tutorial \c"
    curl -O -L "https://github.com/Muhumuza7325/OMD/raw/main/update_physics_advanced.sh" || { echo -e "\n\n${m}Check your internet connection and try again!${t}" >&2; sleep 10; exit 1; }
    mv update_physics_advanced.sh .update_physics_advanced.sh
    bash .update_physics_advanced.sh

    echo -e "\n\nYou got the first step covered.\n\nAs you progress, please, do all the available assignments as they will contribute to your final score.\n\nYou can get somewhere to write and we start \c"
    cp 1.1.measurement_and_dimensions_of_physical_quantities.txt Notes/Physics_advanced || echo -e "\n\nError copying 1.1.measurement_and_dimensions_of_physical_quantities.txt to the Physics_advanced directory in the Notes directory \c"
    wait_for_a_key_press
  else
    echo -e "\n\nThere are files in the target sub directories in your Notes directory already, if it isn't intentional, please delete those files and try again \c"
    wait_for_a_key_press
    quit
  fi
else
  rm -f 1.1.measurement_and_dimensions_of_physical_quantities.txt
fi

while true; do

  handle_class_input
  if [[ "$class" == "5" ]]; then
    if ! find . -maxdepth 1 -name '.s_physics_advanced_5*' -type f -quit 2>/dev/null; then
      echo -e "\n\n${g}Welcome to the S5 Physics class${t}\n\n${y}Together, we are going to get you started${t} \c" && wait_for_a_key_press
      echo -e "\n-------------------------------------- \c"
      clear_and_center "There are ${r}19${t} topics to be covered. Your tasks will always expand or shrink to fit in the time you give them. For that reason, never procrastinate darling!"
    fi
    attempts=0
    max_attempts=4
    while true
    do
      while [ "$attempts" -lt "$max_attempts" ]
      do
        handle_s5_topic_input
        touch .physics_advanced_topic_selected
        if [[ "$topic" == "x" ]]
        then
          quit
        elif [[ "$topic" == "q" ]]
        then
          attempts=0
          # Define the targeted directory
          question_directory="Revision/Physics_advanced/S5"
          # Define the file extension
          file_extension_question=".qns.txt"
          # Define the revision file
          revision_file="../../physics_advanced_covered_qns.txt"
          # Call the function to process a random question
          process_random_short_answer_question "$question_directory" "$file_extension_question" "$revision_file"
        elif [[ "$topic" == "a" ]]
        then
          attempts=0
          # Define the targeted directory
          question_directory="Revision/Physics_advanced/S5"
          # Define the file extension
          file_extension_question=".qns.txt"
          # Define the revision file
          revision_file="../../physics_advanced_covered_qns.txt"
          # Call the function to process a random question
          process_random_aoi "$question_directory" "$file_extension_question" "$revision_file"
        elif [[ "$topic" == "r" ]]
        then
          attempts=0
          # Define the targeted directory
          answered_directory="Exercise/Physics_advanced/S5"
          # Define the file extension
          file_extension_answer=".ans.txt"
          # Define the exercise file
          exercise_file="../../physics_advanced_answered_ans.txt"
          # Call the function to process a random question
          process_question_answer "$answered_directory" "$file_extension_answer" "$exercise_file"
        elif [[ "$topic" == "z" ]]
        then
          attempts=0
          # Define the targeted directory
          answered_directory="Exercise/Physics_advanced/S5"
          # Define the file extension
          file_extension_answer=".ans.txt"
          # Define the exercise file
          exercise_file="../../physics_advanced_answered_ans.txt"
          # Call the function to process a random question
          process_question_answer_adv "$answered_directory" "$file_extension_answer" "$exercise_file"
        elif [[ "$topic" == "s" ]]
        then
          get_sample_items
          break
        elif [[ "$topic" == "n" ]]
        then
          attempts=0
          # Define the targeted directory
          answered_directory="Exercise/Physics_advanced/S5"
          # Define the file extension
          file_extension_answer=".ans.txt"
          # Define the exercise file
          exercise_file="../../physics_advanced_answered_ans.txt"
          # Call the function to process a random question
          process_final_assignment "$answered_directory" "$file_extension_answer" "$exercise_file"
        elif [[ "$topic" == "p" ]]
        then
          track_student_progress
        elif [[ -z "$topic" || ! "$topic" =~ ^([1-9]|1[0-9])$ ]]
        then
          echo -e "\n\nTopic ${r}$topic not available${t}... Please choose from the available options\c"
          wait_for_a_key_press
        else
          case "$topic" in
            1)
              if ! [ -f ".s_physics_advanced_5_1" ]; then
                echo -e "\n\nYou chose to explore Measurement and dimensions of physical quantities ...\n\nThank you for choosing to educate yourself!\n\nWe adore you ${g}darling${t} and wish you the very best! \c" && wait_for_a_key_press
              fi
              cp "Notes/Physics_advanced/5.1.measurement_and_dimensions_of_physical_quantities.txt" . || exit 1
              mv 5.1.measurement_and_dimensions_of_physical_quantities.txt .5.1.measurement_and_dimensions_of_physical_quantities.txt || exit 1
              sed -i -e 's/\.\( \+\)/;/g' -e '/https:/! s/\([!?:]\)/\1;/g' -e 's/\([;]\) /\1/g' .5.1.measurement_and_dimensions_of_physical_quantities.txt
              sed -i 's/;\([:!?]\);/\;\1/g' .5.1.measurement_and_dimensions_of_physical_quantities.txt
              sed -i 's/;\([0-9]*\);/;\1. /g' .5.1.measurement_and_dimensions_of_physical_quantities.txt
              sed -i -E 's/(\([^)]*);/\1/g; s/(\[[^]]*);/\1/g; s/(\{[^}]*);/\1/g' .5.1.measurement_and_dimensions_of_physical_quantities.txt
              process_reminders_from_file .5.1.measurement_and_dimensions_of_physical_quantities.txt
              STATE_FILE=".s_physics_advanced_5_1"
              process_file .5.1.measurement_and_dimensions_of_physical_quantities.txt
              contact_ai
              if [ -f .resume_to_class ]; then
                break
              fi
              if [ -f .skip_exercises ]; then
                rm -f .skip_exercises && break
              fi
              rm -f .5.1.measurement_and_dimensions_of_physical_quantities.txt
              sed -i '/^1$/!d' .s_physics_advanced_5_1
              attempts=0
              # Define the targeted directory
              question_directory="Revision/Physics_advanced/S5"
              # Define the file extension
              file_extension=".1.measurement_and_dimensions_of_physical_quantities.qns.txt"
              # Define the revision file
              revision_file="../../physics_advanced_covered_qns.txt"
              # Call the function to process a random question
              process_random_short_answer_question "$question_directory" "$file_extension" "$revision_file"
              attempts=0
              # Define the targeted directory
              question_directory="Revision/Physics_advanced/S5"
              # Define the file extension
              file_extension_question=".1.measurement_and_dimensions_of_physical_quantities.qns.txt"
              # Define the revision file
              revision_file="../../physics_advanced_covered_qns.txt"
              # Call the function to process a random question
              process_random_aoi "$question_directory" "$file_extension_question" "$revision_file"
            ;;
            2)
              if ! [ -f ".physics_advanced.5.1" ]; then
                attempts=0
                # Define the targeted directory
                answered_directory="Exercise/Physics_advanced/S5"
                # Define the file extension
                file_extension_answer=".1.measurement_and_dimensions_of_physical_quantities.ans.txt"
                # Define the exercise file
                exercise_file="../../physics_advanced_answered_ans.txt"
                # Call the function to process a random question
                process_question_answer "$answered_directory" "$file_extension_answer" "$exercise_file"
                touch .physics_advanced.5.1
              fi
              if ! [ -f ".s_physics_advanced_5_2" ]; then
                echo -e "\n\nYou happen to have decided to delve into Statics ...\n\nOnce again we treasure you ${g}dear one${t}\n\nWe promise to always be right here for you \c" && wait_for_a_key_press
              fi
              cp "Notes/Physics_advanced/5.2.statics.txt" . || exit 1
              mv 5.2.statics.txt .5.2.statics.txt || exit 1
              sed -i -e 's/\.\( \+\)/;/g' -e '/https:/! s/\([!?:]\)/\1;/g' -e 's/\([;]\) /\1/g' .5.2.statics.txt
              sed -i 's/;\([:!?]\);/\;\1/g' .5.2.statics.txt
              sed -i 's/;\([0-9]*\);/;\1. /g' .5.2.statics.txt
              sed -i -E 's/(\([^)]*);/\1/g; s/(\[[^]]*);/\1/g; s/(\{[^}]*);/\1/g' .5.2.statics.txt
              process_reminders_from_file .5.2.statics.txt
              STATE_FILE=".s_physics_advanced_5_2"
              process_file .5.2.statics.txt
              contact_ai
              if [ -f .resume_to_class ]; then
                break
              fi
              if [ -f .skip_exercises ]; then
                rm -f .skip_exercises && break
              fi
              rm -f .5.2.statics.txt
              sed -i '/^1$/!d' .s_physics_advanced_5_2
              attempts=0
              # Define the targeted directory
              question_directory="Revision/Physics_advanced/S5"
              # Define the file extension
              file_extension_question=".2.statics.qns.txt"
              # Define the revision file
              revision_file="../../physics_advanced_covered_qns.txt"
              # Call the function to process a random question
              process_random_short_answer_question "$question_directory" "$file_extension_question" "$revision_file"
              attempts=0
              # Define the targeted directory
              question_directory="Revision/Physics_advanced/S5"
              # Define the file extension
              file_extension_question=".2.statics.qns.txt"
              # Define the revision file
              revision_file="../../physics_advanced_covered_qns.txt"
              # Call the function to process a random question
              process_random_aoi "$question_directory" "$file_extension_question" "$revision_file"
            ;;
            3)
              if ! [ -f ".physics_advanced.5.2" ]; then
                attempts=0
                # Define the targeted directory
                answered_directory="Exercise/Physics_advanced/S5"
                # Define the file extension
                file_extension_answer=".2.statics.ans.txt"
                # Define the exercise file
                exercise_file="../../physics_advanced_answered_ans.txt"
                # Call the function to process a random question
                process_question_answer "$answered_directory" "$file_extension_answer" "$exercise_file"
                touch .physics_advanced.5.2
              fi
              if ! [ -f ".s_physics_advanced_5_3" ]; then
                echo -e "\n\nYou have made a choice to cover Linear motion ...\n\nWe are so exited to have you with us ${g}darling${t}\n\nRemember that hard work forever pays \c" && wait_for_a_key_press
              fi
              cp "Notes/Physics_advanced/5.3.linear_motion.txt" . || exit 1
              mv 5.3.linear_motion.txt .5.3.linear_motion.txt || exit 1
              sed -i -e 's/\.\( \+\)/;/g' -e '/https:/! s/\([!?:]\)/\1;/g' -e 's/\([;]\) /\1/g' .5.3.linear_motion.txt
              sed -i 's/;\([:!?]\);/\;\1/g' .5.3.linear_motion.txt
              sed -i 's/;\([0-9]*\);/;\1. /g' .5.3.linear_motion.txt
              sed -i -E 's/(\([^)]*);/\1/g; s/(\[[^]]*);/\1/g; s/(\{[^}]*);/\1/g' .5.3.linear_motion.txt
              process_reminders_from_file .5.3.linear_motion.txt
              STATE_FILE=".s_physics_advanced_5_3"
              process_file .5.3.linear_motion.txt
              contact_ai
              if [ -f .resume_to_class ]; then
                break
              fi
              if [ -f .skip_exercises ]; then
                rm -f .skip_exercises && break
              fi
              rm -f .5.3.linear_motion.txt
              sed -i '/^1$/!d' .s_physics_advanced_5_3
              attempts=0
              # Define the targeted directory
              question_directory="Revision/Physics_advanced/S5"
              # Define the file extension
              file_extension_question=".3.linear_motion.qns.txt"
              # Define the revision file
              revision_file="../../physics_advanced_covered_qns.txt"
              # Call the function to process a random question
              process_random_short_answer_question "$question_directory" "$file_extension_question" "$revision_file"
              attempts=0
              # Define the targeted directory
              question_directory="Revision/Physics_advanced/S5"
              # Define the file extension
              file_extension_question=".3.linear_motion.qns.txt"
              # Define the revision file
              revision_file="../../physics_advanced_covered_qns.txt"
              # Call the function to process a random question
              process_random_aoi "$question_directory" "$file_extension_question" "$revision_file"
						;;
            4)
              if ! [ -f ".physics_advanced.5.3" ]; then
                attempts=0
                # Define the targeted directory
                answered_directory="Exercise/Physics_advanced/S5"
                # Define the file extension
                file_extension_answer=".3.linear_motion.ans.txt"
                # Define the exercise file
                exercise_file="../../physics_advanced_answered_ans.txt"
                # Call the function to process a random question
                process_question_answer "$answered_directory" "$file_extension_answer" "$exercise_file"
                touch .physics_advanced.5.3
              fi
              if ! [ -f ".s_physics_advanced_5_4" ]; then
                echo -e "\n\nYou did qualify to probe into the realm of Motion under gravity ...\n\nWe do treasure you ${g}darling${t}. Just never forget, that no matter how prepared you are, to win gold, you have to follow instructions! \c" && wait_for_a_key_press
              fi
              cp "Notes/Physics_advanced/5.4.motion_under_gravity.txt" . || exit 1
              mv 5.4.motion_under_gravity.txt .5.4.motion_under_gravity.txt || exit 1
              sed -i -e 's/\.\( \+\)/;/g' -e '/https:/! s/\([!?:]\)/\1;/g' -e 's/\([;]\) /\1/g' .5.4.motion_under_gravity.txt
              sed -i 's/;\([:!?]\);/\;\1/g' .5.4.motion_under_gravity.txt
              sed -i 's/;\([0-9]*\);/;\1. /g' .5.4.motion_under_gravity.txt
              sed -i -E 's/(\([^)]*);/\1/g; s/(\[[^]]*);/\1/g; s/(\{[^}]*);/\1/g' .5.4.motion_under_gravity.txt
              process_reminders_from_file .5.4.motion_under_gravity.txt
              STATE_FILE=".s_physics_advanced_5_4"
              process_file .5.4.motion_under_gravity.txt
              contact_ai
              if [ -f .resume_to_class ]; then
                break
              fi
              if [ -f .skip_exercises ]; then
                rm -f .skip_exercises && break
              fi
              rm -f .5.4.motion_under_gravity.txt
              sed -i '/^1$/!d' .s_physics_advanced_5_4
              attempts=0
              # Define the targeted directory
              question_directory="Revision/Physics_advanced/S5"
              # Define the file extension
              file_extension=".4.motion_under_gravity.qns.txt"
              # Define the revision file
              revision_file="../../physics_advanced_covered_qns.txt"
              # Call the function to process a random question
              process_random_short_answer_question "$question_directory" "$file_extension" "$revision_file"
              attempts=0
              # Define the targeted directory
              question_directory="Revision/Physics_advanced/S5"
              # Define the file extension
              file_extension_question=".4.motion_under_gravity.qns.txt"
              # Define the revision file
              revision_file="../../physics_advanced_covered_qns.txt"
              # Call the function to process a random question
              process_random_aoi "$question_directory" "$file_extension_question" "$revision_file"
            ;;
            5)
              if ! [ -f ".physics_advanced.5.4" ]; then
                attempts=0
                # Define the targeted directory
                answered_directory="Exercise/Physics_advanced/S5"
                # Define the file extension
                file_extension_answer=".4.motion_under_gravity.ans.txt"
                # Define the exercise file
                exercise_file="../../physics_advanced_answered_ans.txt"
                # Call the function to process a random question
                process_question_answer "$answered_directory" "$file_extension_answer" "$exercise_file"
                touch .physics_advanced.5.4
              fi
              if ! [ -f ".s_physics_advanced_5_5" ]; then
                echo -e "\n\nHere you are dear one... Stay organised as you explore Work, energy and power ...\n\n${g}Just know we are not going to leave you alone${t}\n\nWe promise to always be right here for you \c" && wait_for_a_key_press
              fi
              cp "Notes/Physics_advanced/5.5.work_energy_and_power.txt" . || exit 1
              mv 5.5.work_energy_and_power.txt .5.5.work_energy_and_power.txt || exit 1
              sed -i -e 's/\.\( \+\)/;/g' -e '/https:/! s/\([!?:]\)/\1;/g' -e 's/\([;]\) /\1/g' .5.5.work_energy_and_power.txt
              sed -i 's/;\([:!?]\);/\;\1/g' .5.5.work_energy_and_power.txt
              sed -i 's/;\([0-9]*\);/;\1. /g' .5.5.work_energy_and_power.txt
              sed -i -E 's/(\([^)]*);/\1/g; s/(\[[^]]*);/\1/g; s/(\{[^}]*);/\1/g' .5.5.work_energy_and_power.txt
              process_reminders_from_file .5.5.work_energy_and_power.txt
              STATE_FILE=".s_physics_advanced_5_5"
              process_file .5.5.work_energy_and_power.txt
              contact_ai
              if [ -f .resume_to_class ]; then
                break
              fi
              if [ -f .skip_exercises ]; then
                rm -f .skip_exercises && break
              fi
              rm -f .5.5.work_energy_and_power.txt
              sed -i '/^1$/!d' .s_physics_advanced_5_5
              attempts=0
              # Define the targeted directory
              question_directory="Revision/Physics_advanced/S5"
              # Define the file extension
              file_extension_question=".5.work_energy_and_power.qns.txt"
              # Define the revision file
              revision_file="../../physics_advanced_covered_qns.txt"
              # Call the function to process a random question
              process_random_short_answer_question "$question_directory" "$file_extension_question" "$revision_file"
              attempts=0
              # Define the targeted directory
              question_directory="Revision/Physics_advanced/S5"
              # Define the file extension
              file_extension_question=".5.work_energy_and_power.qns.txt"
              # Define the revision file
              revision_file="../../physics_advanced_covered_qns.txt"
              # Call the function to process a random question
              process_random_aoi "$question_directory" "$file_extension_question" "$revision_file"
            ;;
            6)
              if ! [ -f ".physics_advanced.5.5" ]; then
                attempts=0
                # Define the targeted directory
                answered_directory="Exercise/Physics_advanced/S5"
                # Define the file extension
                file_extension_answer=".5.work_energy_and_power.ans.txt"
                # Define the exercise file
                exercise_file="../../physics_advanced_answered_ans.txt"
                # Call the function to process a random question
                process_question_answer "$answered_directory" "$file_extension_answer" "$exercise_file"
                touch .physics_advanced.5.5
              fi
              if ! [ -f ".s_physics_advanced_5_6" ]; then
                echo -e "\n\nYou have managed to make it to Solid friction ...\n\n${g}Remember to pray always${t}\n\nThe fear of the Lord is the beginning of wisdom \c" && wait_for_a_key_press
              fi
              cp "Notes/Physics_advanced/5.6.solid_friction.txt" . || exit 1
              mv 5.6.solid_friction.txt .5.6.solid_friction.txt || exit 1
              sed -i -e 's/\.\( \+\)/;/g' -e '/https:/! s/\([!?:]\)/\1;/g' -e 's/\([;]\) /\1/g' .5.6.solid_friction.txt
              sed -i 's/;\([:!?]\);/\;\1/g' .5.6.solid_friction.txt
              sed -i 's/;\([0-9]*\);/;\1. /g' .5.6.solid_friction.txt
              sed -i -E 's/(\([^)]*);/\1/g; s/(\[[^]]*);/\1/g; s/(\{[^}]*);/\1/g' .5.6.solid_friction.txt
              process_reminders_from_file .5.6.solid_friction.txt
              STATE_FILE=".s_physics_advanced_5_6"
              process_file .5.6.solid_friction.txt
              contact_ai
              if [ -f .resume_to_class ]; then
                break
              fi
              if [ -f .skip_exercises ]; then
                rm -f .skip_exercises && break
              fi
              rm -f .5.6.solid_friction.txt
              sed -i '/^1$/!d' .s_physics_advanced_5_6
              attempts=0
              # Define the targeted directory
              question_directory="Revision/Physics_advanced/S5"
              # Define the file extension
              file_extension_question=".6.solid_friction.qns.txt"
              # Define the revision file
              revision_file="../../physics_advanced_covered_qns.txt"
              # Call the function to process a random question
              process_random_short_answer_question "$question_directory" "$file_extension_question" "$revision_file"
              attempts=0
              # Define the targeted directory
              question_directory="Revision/Physics_advanced/S5"
              # Define the file extension
              file_extension_question=".6.solid_friction.qns.txt"
              # Define the revision file
              revision_file="../../physics_advanced_covered_qns.txt"
              # Call the function to process a random question
              process_random_aoi "$question_directory" "$file_extension_question" "$revision_file"
            ;;
            7)
              if ! [ -f ".physics_advanced.5.6" ]; then
                attempts=0
                # Define the targeted directory
                answered_directory="Exercise/Physics_advanced/S5"
                # Define the file extension
                file_extension_answer=".6.solid_friction.ans.txt"
                # Define the exercise file
                exercise_file="../../physics_advanced_answered_ans.txt"
                # Call the function to process a random question
                process_question_answer "$answered_directory" "$file_extension_answer" "$exercise_file"
                touch .physics_advanced.5.6
              fi
              if ! [ -f ".s_physics_advanced_5_7" ]; then
                echo -e "\n\nFrom here, you will be proceeding with Fluid mechanics ...\n\n${g}Please never ever forget that your education is your future${t}\n\nFocus dear \c" && wait_for_a_key_press
              fi
              cp "Notes/Physics_advanced/5.7.fluid_mechanics.txt" . || exit 1
              mv 5.7.fluid_mechanics.txt .5.7.fluid_mechanics.txt || exit 1
              sed -i -e 's/\.\( \+\)/;/g' -e '/https:/! s/\([!?:]\)/\1;/g' -e 's/\([;]\) /\1/g' .5.7.fluid_mechanics.txt
              sed -i 's/;\([:!?]\);/\;\1/g' .5.7.fluid_mechanics.txt
              sed -i 's/;\([0-9]*\);/;\1. /g' .5.7.fluid_mechanics.txt
              sed -i -E 's/(\([^)]*);/\1/g; s/(\[[^]]*);/\1/g; s/(\{[^}]*);/\1/g' .5.7.fluid_mechanics.txt
              process_reminders_from_file .5.7.fluid_mechanics.txt
              STATE_FILE=".s_physics_advanced_5_7"
              process_file .5.7.fluid_mechanics.txt
              contact_ai
              if [ -f .resume_to_class ]; then
                break
              fi
              if [ -f .skip_exercises ]; then
                rm -f .skip_exercises && break
              fi
              rm -f .5.7.fluid_mechanics.txt
              sed -i '/^1$/!d' .s_physics_advanced_5_7
              attempts=0
              # Define the targeted directory
              question_directory="Revision/Physics_advanced/S5"
              # Define the file extension
              file_extension_question=".7.fluid_mechanics.qns.txt"
              # Define the revision file
              revision_file="../../physics_advanced_covered_qns.txt"
              # Call the function to process a random question
              process_random_short_answer_question "$question_directory" "$file_extension_question" "$revision_file"
              attempts=0
              # Define the targeted directory
              question_directory="Revision/Physics_advanced/S5"
              # Define the file extension
              file_extension_question=".7.fluid_mechanics.qns.txt"
              # Define the revision file
              revision_file="../../physics_advanced_covered_qns.txt"
              # Call the function to process a random question
              process_random_aoi "$question_directory" "$file_extension_question" "$revision_file"
            ;;
            8)
              if ! [ -f ".physics_advanced.5.7" ]; then
                attempts=0
                # Define the targeted directory
                answered_directory="Exercise/Physics_advanced/S5"
                # Define the file extension
                file_extension_answer=".7.fluid_mechanics.ans.txt"
                # Define the exercise file
                exercise_file="../../physics_advanced_answered_ans.txt"
                # Call the function to process a random question
                process_question_answer "$answered_directory" "$file_extension_answer" "$exercise_file"
                touch .physics_advanced.5.7
              fi
              if ! [ -f ".s_physics_advanced_5_8" ]; then
                echo -e "\n\nYou are to cover Mechanical properties of matter ...\n\n${g}Please never ever settle for less${t}\n\nPromise yourself that you wont give up \c" && wait_for_a_key_press
              fi
              cp "Notes/Physics_advanced/5.8.mechanical_properties_of_matter.txt" . || exit 1
              mv 5.8.mechanical_properties_of_matter.txt .5.8.mechanical_properties_of_matter.txt || exit 1
              sed -i -e 's/\.\( \+\)/;/g' -e '/https:/! s/\([!?:]\)/\1;/g' -e 's/\([;]\) /\1/g' .5.8.mechanical_properties_of_matter.txt
              sed -i 's/;\([:!?]\);/\;\1/g' .5.8.mechanical_properties_of_matter.txt
              sed -i 's/;\([0-9]*\);/;\1. /g' .5.8.mechanical_properties_of_matter.txt
              sed -i -E 's/(\([^)]*);/\1/g; s/(\[[^]]*);/\1/g; s/(\{[^}]*);/\1/g' .5.8.mechanical_properties_of_matter.txt
              process_reminders_from_file .5.8.mechanical_properties_of_matter.txt
              STATE_FILE=".s_physics_advanced_5_8"
              process_file .5.8.mechanical_properties_of_matter.txt
              contact_ai
              if [ -f .resume_to_class ]; then
                break
              fi
              if [ -f .skip_exercises ]; then
                rm -f .skip_exercises && break
              fi
              rm -f .5.8.mechanical_properties_of_matter.txt
              sed -i '/^1$/!d' .s_physics_advanced_5_8
              attempts=0
              # Define the targeted directory
              question_directory="Revision/Physics_advanced/S5"
              # Define the file extension
              file_extension_question=".8.mechanical_properties_of_matter.qns.txt"
              # Define the revision file
              revision_file="../../physics_advanced_covered_qns.txt"
              # Call the function to process a random question
              process_random_short_answer_question "$question_directory" "$file_extension_question" "$revision_file"
              attempts=0
              # Define the targeted directory
              question_directory="Revision/Physics_advanced/S5"
              # Define the file extension
              file_extension_question=".8.mechanical_properties_of_matter.qns.txt"
              # Define the revision file
              revision_file="../../physics_advanced_covered_qns.txt"
              # Call the function to process a random question
              process_random_aoi "$question_directory" "$file_extension_question" "$revision_file"
            ;;
            9)
              if ! [ -f ".physics_advanced.5.8" ]; then
                attempts=0
                # Define the targeted directory
                answered_directory="Exercise/Physics_advanced/S5"
                # Define the file extension
                file_extension_answer=".8.mechanical_properties_of_matter.ans.txt"
                # Define the exercise file
                exercise_file="../../physics_advanced_answered_ans.txt"
                # Call the function to process a random question
                process_question_answer "$answered_directory" "$file_extension_answer" "$exercise_file"
                touch .physics_advanced.5.8
              fi
              if ! [ -f ".s_physics_advanced_5_9" ]; then
                echo -e "\n\nI am so happy for you dear one. You are here to cover the the 9th topic (Thermometry )...\n\n${g}Just never underestimate the value of a single second${t}\n\nThat extra one second maybe all you need to fully understand a given concept \c" && wait_for_a_key_press
              fi
              cp "Notes/Physics_advanced/5.9.thermometry.txt" . || exit 1
              mv 5.9.thermometry.txt .5.9.thermometry.txt || exit 1
              sed -i -e 's/\.\( \+\)/;/g' -e '/https:/! s/\([!?:]\)/\1;/g' -e 's/\([;]\) /\1/g' .5.9.thermometry.txt
              sed -i 's/;\([:!?]\);/\;\1/g' .5.9.thermometry.txt
              sed -i 's/;\([0-9]*\);/;\1. /g' .5.9.thermometry.txt
              sed -i -E 's/(\([^)]*);/\1/g; s/(\[[^]]*);/\1/g; s/(\{[^}]*);/\1/g' .5.9.thermometry.txt
              process_reminders_from_file .5.9.thermometry.txt
              STATE_FILE=".s_physics_advanced_5_9"
              process_file .5.9.thermometry.txt
              contact_ai
              if [ -f .resume_to_class ]; then
                break
              fi
              if [ -f .skip_exercises ]; then
                rm -f .skip_exercises && break
              fi
              rm -f .5.9.thermometry.txt
              sed -i '/^1$/!d' .s_physics_advanced_5_9
              attempts=0
              # Define the targeted directory
              question_directory="Revision/Physics_advanced/S5"
              # Define the file extension
              file_extension_question=".9.thermometry.qns.txt"
              # Define the revision file
              revision_file="../../physics_advanced_covered_qns.txt"
              # Call the function to process a random question
              process_random_short_answer_question "$question_directory" "$file_extension_question" "$revision_file"
              attempts=0
              # Define the targeted directory
              question_directory="Revision/Physics_advanced/S5"
              # Define the file extension
              file_extension_question=".9.thermometry.qns.txt"
              # Define the revision file
              revision_file="../../physics_advanced_covered_qns.txt"
              # Call the function to process a random question
              process_random_aoi "$question_directory" "$file_extension_question" "$revision_file"
            ;;
            10)
              if ! [ -f ".physics_advanced.5.9" ]; then
                attempts=0
                # Define the targeted directory
                answered_directory="Exercise/Physics_advanced/S5"
                # Define the file extension
                file_extension_answer=".9.thermometry.ans.txt"
                # Define the exercise file
                exercise_file="../../physics_advanced_answered_ans.txt"
                # Call the function to process a random question
                process_question_answer "$answered_directory" "$file_extension_answer" "$exercise_file"
                touch .physics_advanced.5.9
              fi
              if ! [ -f ".s_physics_advanced_5_10" ]; then
                echo -e "\n\nYou chose to explore Heat quantities ...\n\nThank you for choosing to educate yourself!\n\nWe adore you ${g}darling${t} and wish you the very best! \c" && wait_for_a_key_press
              fi
              cp "Notes/Physics_advanced/5.10.heat_quantities.txt" . || exit 1
              mv 5.10.heat_quantities.txt .5.10.heat_quantities.txt || exit 1
              sed -i -e 's/\.\( \+\)/;/g' -e '/https:/! s/\([!?:]\)/\1;/g' -e 's/\([;]\) /\1/g' .5.10.heat_quantities.txt
              sed -i 's/;\([:!?]\);/\;\1/g' .5.10.heat_quantities.txt
              sed -i 's/;\([0-9]*\);/;\1. /g' .5.10.heat_quantities.txt
              sed -i -E 's/(\([^)]*);/\1/g; s/(\[[^]]*);/\1/g; s/(\{[^}]*);/\1/g' .5.10.heat_quantities.txt
              process_reminders_from_file .5.10.heat_quantities.txt
              STATE_FILE=".s_physics_advanced_5_10"
              process_file .5.10.heat_quantities.txt
              contact_ai
              if [ -f .resume_to_class ]; then
                break
              fi
              if [ -f .skip_exercises ]; then
                rm -f .skip_exercises && break
              fi
              rm -f .5.10.heat_quantities.txt
              sed -i '/^1$/!d' .s_physics_advanced_5_10
              attempts=0
              # Define the targeted directory
              question_directory="Revision/Physics_advanced/S5"
              # Define the file extension
              file_extension=".10.heat_quantities.qns.txt"
              # Define the revision file
              revision_file="../../physics_advanced_covered_qns.txt"
              # Call the function to process a random question
              process_random_short_answer_question "$question_directory" "$file_extension" "$revision_file"
              attempts=0
              # Define the targeted directory
              question_directory="Revision/Physics_advanced/S5"
              # Define the file extension
              file_extension_question=".10.heat_quantities.qns.txt"
              # Define the revision file
              revision_file="../../physics_advanced_covered_qns.txt"
              # Call the function to process a random question
              process_random_aoi "$question_directory" "$file_extension_question" "$revision_file"
            ;;
            11)
              if ! [ -f ".physics_advanced.5.10" ]; then
                attempts=0
                # Define the targeted directory
                answered_directory="Exercise/Physics_advanced/S5"
                # Define the file extension
                file_extension_answer=".10.heat_quantities.ans.txt"
                # Define the exercise file
                exercise_file="../../physics_advanced_answered_ans.txt"
                # Call the function to process a random question
                process_question_answer "$answered_directory" "$file_extension_answer" "$exercise_file"
                touch .physics_advanced.5.10
              fi
              if ! [ -f ".s_physics_advanced_5_11" ]; then
                echo -e "\n\nYou happen to have decided to delve into Transfer of heat ...\n\nOnce again we treasure you ${g}dear one${t}\n\nWe promise to always be right here for you \c" && wait_for_a_key_press
              fi
              cp "Notes/Physics_advanced/5.11.transfer_of_heat.txt" . || exit 1
              mv 5.11.transfer_of_heat.txt .5.11.transfer_of_heat.txt || exit 1
              sed -i -e 's/\.\( \+\)/;/g' -e '/https:/! s/\([!?:]\)/\1;/g' -e 's/\([;]\) /\1/g' .5.11.transfer_of_heat.txt
              sed -i 's/;\([:!?]\);/\;\1/g' .5.11.transfer_of_heat.txt
              sed -i 's/;\([0-9]*\);/;\1. /g' .5.11.transfer_of_heat.txt
              sed -i -E 's/(\([^)]*);/\1/g; s/(\[[^]]*);/\1/g; s/(\{[^}]*);/\1/g' .5.11.transfer_of_heat.txt
              process_reminders_from_file .5.11.transfer_of_heat.txt
              STATE_FILE=".s_physics_advanced_5_11"
              process_file .5.11.transfer_of_heat.txt
              contact_ai
              if [ -f .resume_to_class ]; then
                break
              fi
              if [ -f .skip_exercises ]; then
                rm -f .skip_exercises && break
              fi
              rm -f .5.11.transfer_of_heat.txt
              sed -i '/^1$/!d' .s_physics_advanced_5_11
              attempts=0
              # Define the targeted directory
              question_directory="Revision/Physics_advanced/S5"
              # Define the file extension
              file_extension_question=".11.transfer_of_heat.qns.txt"
              # Define the revision file
              revision_file="../../physics_advanced_covered_qns.txt"
              # Call the function to process a random question
              process_random_short_answer_question "$question_directory" "$file_extension_question" "$revision_file"
              attempts=0
              # Define the targeted directory
              question_directory="Revision/Physics_advanced/S5"
              # Define the file extension
              file_extension_question=".11.transfer_of_heat.qns.txt"
              # Define the revision file
              revision_file="../../physics_advanced_covered_qns.txt"
              # Call the function to process a random question
              process_random_aoi "$question_directory" "$file_extension_question" "$revision_file"
            ;;
            12)
              if ! [ -f ".physics_advanced.5.11" ]; then
                attempts=0
                # Define the targeted directory
                answered_directory="Exercise/Physics_advanced/S5"
                # Define the file extension
                file_extension_answer=".11.transfer_of_heat.ans.txt"
                # Define the exercise file
                exercise_file="../../physics_advanced_answered_ans.txt"
                # Call the function to process a random question
                process_question_answer "$answered_directory" "$file_extension_answer" "$exercise_file"
                touch .physics_advanced.5.11
              fi
              if ! [ -f ".s_physics_advanced_5_12" ]; then
                echo -e "\n\nYou have made a choice to cover Behaviour of gases ...\n\nWe are so exited to have you with us ${g}darling${t}\n\nRemember that hard work forever pays \c" && wait_for_a_key_press
              fi
              cp "Notes/Physics_advanced/5.12.behaviour_of_gases.txt" . || exit 1
              mv 5.12.behaviour_of_gases.txt .5.12.behaviour_of_gases.txt || exit 1
              sed -i -e 's/\.\( \+\)/;/g' -e '/https:/! s/\([!?:]\)/\1;/g' -e 's/\([;]\) /\1/g' .5.12.behaviour_of_gases.txt
              sed -i 's/;\([:!?]\);/\;\1/g' .5.12.behaviour_of_gases.txt
              sed -i 's/;\([0-9]*\);/;\1. /g' .5.12.behaviour_of_gases.txt
              sed -i -E 's/(\([^)]*);/\1/g; s/(\[[^]]*);/\1/g; s/(\{[^}]*);/\1/g' .5.12.behaviour_of_gases.txt
              process_reminders_from_file .5.12.behaviour_of_gases.txt
              STATE_FILE=".s_physics_advanced_5_12"
              process_file .5.12.behaviour_of_gases.txt
              contact_ai
              if [ -f .resume_to_class ]; then
                break
              fi
              if [ -f .skip_exercises ]; then
                rm -f .skip_exercises && break
              fi
              rm -f .5.12.behaviour_of_gases.txt
              sed -i '/^1$/!d' .s_physics_advanced_5_12
              attempts=0
              # Define the targeted directory
              question_directory="Revision/Physics_advanced/S5"
              # Define the file extension
              file_extension_question=".12.behaviour_of_gases.qns.txt"
              # Define the revision file
              revision_file="../../physics_advanced_covered_qns.txt"
              # Call the function to process a random question
              process_random_short_answer_question "$question_directory" "$file_extension_question" "$revision_file"
              attempts=0
              # Define the targeted directory
              question_directory="Revision/Physics_advanced/S5"
              # Define the file extension
              file_extension_question=".12.behaviour_of_gases.qns.txt"
              # Define the revision file
              revision_file="../../physics_advanced_covered_qns.txt"
              # Call the function to process a random question
              process_random_aoi "$question_directory" "$file_extension_question" "$revision_file"
						;;
            13)
              if ! [ -f ".physics_advanced.5.12" ]; then
                attempts=0
                # Define the targeted directory
                answered_directory="Exercise/Physics_advanced/S5"
                # Define the file extension
                file_extension_answer=".12.behaviour_of_gases.ans.txt"
                # Define the exercise file
                exercise_file="../../physics_advanced_answered_ans.txt"
                # Call the function to process a random question
                process_question_answer "$answered_directory" "$file_extension_answer" "$exercise_file"
                touch .physics_advanced.5.12
              fi
              if ! [ -f ".s_physics_advanced_5_13" ]; then
                echo -e "\n\nYou did qualify to probe into the realm of Thermodynamics ...\n\nWe do treasure you ${g}darling${t}. Just never forget, that no matter how prepared you are, to win gold, you have to follow instructions! \c" && wait_for_a_key_press
              fi
              cp "Notes/Physics_advanced/5.13.thermodynamics.txt" . || exit 1
              mv 5.13.thermodynamics.txt .5.13.thermodynamics.txt || exit 1
              sed -i -e 's/\.\( \+\)/;/g' -e '/https:/! s/\([!?:]\)/\1;/g' -e 's/\([;]\) /\1/g' .5.13.thermodynamics.txt
              sed -i 's/;\([:!?]\);/\;\1/g' .5.13.thermodynamics.txt
              sed -i 's/;\([0-9]*\);/;\1. /g' .5.13.thermodynamics.txt
              sed -i -E 's/(\([^)]*);/\1/g; s/(\[[^]]*);/\1/g; s/(\{[^}]*);/\1/g' .5.13.thermodynamics.txt
              process_reminders_from_file .5.13.thermodynamics.txt
              STATE_FILE=".s_physics_advanced_5_13"
              process_file .5.13.thermodynamics.txt
              contact_ai
              if [ -f .resume_to_class ]; then
                break
              fi
              if [ -f .skip_exercises ]; then
                rm -f .skip_exercises && break
              fi
              rm -f .5.13.thermodynamics.txt
              sed -i '/^1$/!d' .s_physics_advanced_5_13
              attempts=0
              # Define the targeted directory
              question_directory="Revision/Physics_advanced/S5"
              # Define the file extension
              file_extension=".13.thermodynamics.qns.txt"
              # Define the revision file
              revision_file="../../physics_advanced_covered_qns.txt"
              # Call the function to process a random question
              process_random_short_answer_question "$question_directory" "$file_extension" "$revision_file"
              attempts=0
              # Define the targeted directory
              question_directory="Revision/Physics_advanced/S5"
              # Define the file extension
              file_extension_question=".13.thermodynamics.qns.txt"
              # Define the revision file
              revision_file="../../physics_advanced_covered_qns.txt"
              # Call the function to process a random question
              process_random_aoi "$question_directory" "$file_extension_question" "$revision_file"
            ;;
            14)
              if ! [ -f ".physics_advanced.5.13" ]; then
                attempts=0
                # Define the targeted directory
                answered_directory="Exercise/Physics_advanced/S5"
                # Define the file extension
                file_extension_answer=".13.thermodynamics.ans.txt"
                # Define the exercise file
                exercise_file="../../physics_advanced_answered_ans.txt"
                # Call the function to process a random question
                process_question_answer "$answered_directory" "$file_extension_answer" "$exercise_file"
                touch .physics_advanced.5.13
              fi
              if ! [ -f ".s_physics_advanced_5_14" ]; then
                echo -e "\n\nHere you are dear one... Stay organised as you explore Reflection of light ...\n\n${g}Just know we are not going to leave you alone${t}\n\nWe promise to always be right here for you \c" && wait_for_a_key_press
              fi
              cp "Notes/Physics_advanced/5.14.reflection_of_light.txt" . || exit 1
              mv 5.14.reflection_of_light.txt .5.14.reflection_of_light.txt || exit 1
              sed -i -e 's/\.\( \+\)/;/g' -e '/https:/! s/\([!?:]\)/\1;/g' -e 's/\([;]\) /\1/g' .5.14.reflection_of_light.txt
              sed -i 's/;\([:!?]\);/\;\1/g' .5.14.reflection_of_light.txt
              sed -i 's/;\([0-9]*\);/;\1. /g' .5.14.reflection_of_light.txt
              sed -i -E 's/(\([^)]*);/\1/g; s/(\[[^]]*);/\1/g; s/(\{[^}]*);/\1/g' .5.14.reflection_of_light.txt
              process_reminders_from_file .5.14.reflection_of_light.txt
              STATE_FILE=".s_physics_advanced_5_14"
              process_file .5.14.reflection_of_light.txt
              contact_ai
              if [ -f .resume_to_class ]; then
                break
              fi
              if [ -f .skip_exercises ]; then
                rm -f .skip_exercises && break
              fi
              rm -f .5.14.reflection_of_light.txt
              sed -i '/^1$/!d' .s_physics_advanced_5_14
              attempts=0
              # Define the targeted directory
              question_directory="Revision/Physics_advanced/S5"
              # Define the file extension
              file_extension_question=".14.reflection_of_light.qns.txt"
              # Define the revision file
              revision_file="../../physics_advanced_covered_qns.txt"
              # Call the function to process a random question
              process_random_short_answer_question "$question_directory" "$file_extension_question" "$revision_file"
              attempts=0
              # Define the targeted directory
              question_directory="Revision/Physics_advanced/S5"
              # Define the file extension
              file_extension_question=".14.reflection_of_light.qns.txt"
              # Define the revision file
              revision_file="../../physics_advanced_covered_qns.txt"
              # Call the function to process a random question
              process_random_aoi "$question_directory" "$file_extension_question" "$revision_file"
            ;;
            15)
              if ! [ -f ".physics_advanced.5.14" ]; then
                attempts=0
                # Define the targeted directory
                answered_directory="Exercise/Physics_advanced/S5"
                # Define the file extension
                file_extension_answer=".14.reflection_of_light.ans.txt"
                # Define the exercise file
                exercise_file="../../physics_advanced_answered_ans.txt"
                # Call the function to process a random question
                process_question_answer "$answered_directory" "$file_extension_answer" "$exercise_file"
                touch .physics_advanced.5.14
              fi
              if ! [ -f ".s_physics_advanced_5_15" ]; then
                echo -e "\n\nYou have managed to make it to Refraction of light ...\n\n${g}Remember to pray always${t}\n\nThe fear of the Lord is the beginning of wisdom \c" && wait_for_a_key_press
              fi
              cp "Notes/Physics_advanced/5.15.refraction_of_light.txt" . || exit 1
              mv 5.15.refraction_of_light.txt .5.15.refraction_of_light.txt || exit 1
              sed -i -e 's/\.\( \+\)/;/g' -e '/https:/! s/\([!?:]\)/\1;/g' -e 's/\([;]\) /\1/g' .5.15.refraction_of_light.txt
              sed -i 's/;\([:!?]\);/\;\1/g' .5.15.refraction_of_light.txt
              sed -i 's/;\([0-9]*\);/;\1. /g' .5.15.refraction_of_light.txt
              sed -i -E 's/(\([^)]*);/\1/g; s/(\[[^]]*);/\1/g; s/(\{[^}]*);/\1/g' .5.15.refraction_of_light.txt
              process_reminders_from_file .5.15.refraction_of_light.txt
              STATE_FILE=".s_physics_advanced_5_15"
              process_file .5.15.refraction_of_light.txt
              contact_ai
              if [ -f .resume_to_class ]; then
                break
              fi
              if [ -f .skip_exercises ]; then
                rm -f .skip_exercises && break
              fi
              rm -f .5.15.refraction_of_light.txt
              sed -i '/^1$/!d' .s_physics_advanced_5_15
              attempts=0
              # Define the targeted directory
              question_directory="Revision/Physics_advanced/S5"
              # Define the file extension
              file_extension_question=".15.refraction_of_light.qns.txt"
              # Define the revision file
              revision_file="../../physics_advanced_covered_qns.txt"
              # Call the function to process a random question
              process_random_short_answer_question "$question_directory" "$file_extension_question" "$revision_file"
              attempts=0
              # Define the targeted directory
              question_directory="Revision/Physics_advanced/S5"
              # Define the file extension
              file_extension_question=".15.refraction_of_light.qns.txt"
              # Define the revision file
              revision_file="../../physics_advanced_covered_qns.txt"
              # Call the function to process a random question
              process_random_aoi "$question_directory" "$file_extension_question" "$revision_file"
            ;;
            16)
              if ! [ -f ".physics_advanced.5.15" ]; then
                attempts=0
                # Define the targeted directory
                answered_directory="Exercise/Physics_advanced/S5"
                # Define the file extension
                file_extension_answer=".15.refraction_of_light.ans.txt"
                # Define the exercise file
                exercise_file="../../physics_advanced_answered_ans.txt"
                # Call the function to process a random question
                process_question_answer "$answered_directory" "$file_extension_answer" "$exercise_file"
                touch .physics_advanced.5.15
              fi
              if ! [ -f ".s_physics_advanced_5_16" ]; then
                echo -e "\n\nFrom here, you will be proceeding with Optical instruments ...\n\n${g}Please never ever forget that your education is your future${t}\n\nFocus dear \c" && wait_for_a_key_press
              fi
              cp "Notes/Physics_advanced/5.16.optical_instruments.txt" . || exit 1
              mv 5.16.optical_instruments.txt .5.16.optical_instruments.txt || exit 1
              sed -i -e 's/\.\( \+\)/;/g' -e '/https:/! s/\([!?:]\)/\1;/g' -e 's/\([;]\) /\1/g' .5.16.optical_instruments.txt
              sed -i 's/;\([:!?]\);/\;\1/g' .5.16.optical_instruments.txt
              sed -i 's/;\([0-9]*\);/;\1. /g' .5.16.optical_instruments.txt
              sed -i -E 's/(\([^)]*);/\1/g; s/(\[[^]]*);/\1/g; s/(\{[^}]*);/\1/g' .5.16.optical_instruments.txt
              process_reminders_from_file .5.16.optical_instruments.txt
              STATE_FILE=".s_physics_advanced_5_16"
              process_file .5.16.optical_instruments.txt
              contact_ai
              if [ -f .resume_to_class ]; then
                break
              fi
              if [ -f .skip_exercises ]; then
                rm -f .skip_exercises && break
              fi
              rm -f .5.16.optical_instruments.txt
              sed -i '/^1$/!d' .s_physics_advanced_5_16
              attempts=0
              # Define the targeted directory
              question_directory="Revision/Physics_advanced/S5"
              # Define the file extension
              file_extension_question=".16.optical_instruments.qns.txt"
              # Define the revision file
              revision_file="../../physics_advanced_covered_qns.txt"
              # Call the function to process a random question
              process_random_short_answer_question "$question_directory" "$file_extension_question" "$revision_file"
              attempts=0
              # Define the targeted directory
              question_directory="Revision/Physics_advanced/S5"
              # Define the file extension
              file_extension_question=".16.optical_instruments.qns.txt"
              # Define the revision file
              revision_file="../../physics_advanced_covered_qns.txt"
              # Call the function to process a random question
              process_random_aoi "$question_directory" "$file_extension_question" "$revision_file"
            ;;
            17)
              if ! [ -f ".physics_advanced.5.16" ]; then
                attempts=0
                # Define the targeted directory
                answered_directory="Exercise/Physics_advanced/S5"
                # Define the file extension
                file_extension_answer=".16.optical_instruments.ans.txt"
                # Define the exercise file
                exercise_file="../../physics_advanced_answered_ans.txt"
                # Call the function to process a random question
                process_question_answer "$answered_directory" "$file_extension_answer" "$exercise_file"
                touch .physics_advanced.5.16
              fi
              if ! [ -f ".s_physics_advanced_5_17" ]; then
                echo -e "\n\nYou are to cover Electrostatics ...\n\n${g}Please never ever settle for less${t}\n\nPromise yourself that you wont give up \c" && wait_for_a_key_press
              fi
              cp "Notes/Physics_advanced/5.17.electrostatics.txt" . || exit 1
              mv 5.17.electrostatics.txt .5.17.electrostatics.txt || exit 1
              sed -i -e 's/\.\( \+\)/;/g' -e '/https:/! s/\([!?:]\)/\1;/g' -e 's/\([;]\) /\1/g' .5.17.electrostatics.txt
              sed -i 's/;\([:!?]\);/\;\1/g' .5.17.electrostatics.txt
              sed -i 's/;\([0-9]*\);/;\1. /g' .5.17.electrostatics.txt
              sed -i -E 's/(\([^)]*);/\1/g; s/(\[[^]]*);/\1/g; s/(\{[^}]*);/\1/g' .5.17.electrostatics.txt
              process_reminders_from_file .5.17.electrostatics.txt
              STATE_FILE=".s_physics_advanced_5_17"
              process_file .5.17.electrostatics.txt
              contact_ai
              if [ -f .resume_to_class ]; then
                break
              fi
              if [ -f .skip_exercises ]; then
                rm -f .skip_exercises && break
              fi
              rm -f .5.17.electrostatics.txt
              sed -i '/^1$/!d' .s_physics_advanced_5_17
              attempts=0
              # Define the targeted directory
              question_directory="Revision/Physics_advanced/S5"
              # Define the file extension
              file_extension_question=".17.electrostatics.qns.txt"
              # Define the revision file
              revision_file="../../physics_advanced_covered_qns.txt"
              # Call the function to process a random question
              process_random_short_answer_question "$question_directory" "$file_extension_question" "$revision_file"
              attempts=0
              # Define the targeted directory
              question_directory="Revision/Physics_advanced/S5"
              # Define the file extension
              file_extension_question=".17.electrostatics.qns.txt"
              # Define the revision file
              revision_file="../../physics_advanced_covered_qns.txt"
              # Call the function to process a random question
              process_random_aoi "$question_directory" "$file_extension_question" "$revision_file"
            ;;
            18)
              if ! [ -f ".physics_advanced.5.17" ]; then
                attempts=0
                # Define the targeted directory
                answered_directory="Exercise/Physics_advanced/S5"
                # Define the file extension
                file_extension_answer=".17.electrostatics.ans.txt"
                # Define the exercise file
                exercise_file="../../physics_advanced_answered_ans.txt"
                # Call the function to process a random question
                process_question_answer "$answered_directory" "$file_extension_answer" "$exercise_file"
                touch .physics_advanced.5.17
              fi
              if ! [ -f ".s_physics_advanced_5_18" ]; then
                echo -e "\n\nI am so happy for you dear one. You are here to cover the the 9th topic (Capacitors )...\n\n${g}Just never underestimate the value of a single second${t}\n\nThat extra one second maybe all you need to fully understand a given concept \c" && wait_for_a_key_press
              fi
              cp "Notes/Physics_advanced/5.18.capacitors.txt" . || exit 1
              mv 5.18.capacitors.txt .5.18.capacitors.txt || exit 1
              sed -i -e 's/\.\( \+\)/;/g' -e '/https:/! s/\([!?:]\)/\1;/g' -e 's/\([;]\) /\1/g' .5.18.capacitors.txt
              sed -i 's/;\([:!?]\);/\;\1/g' .5.18.capacitors.txt
              sed -i 's/;\([0-9]*\);/;\1. /g' .5.18.capacitors.txt
              sed -i -E 's/(\([^)]*);/\1/g; s/(\[[^]]*);/\1/g; s/(\{[^}]*);/\1/g' .5.18.capacitors.txt
              process_reminders_from_file .5.18.capacitors.txt
              STATE_FILE=".s_physics_advanced_5_18"
              process_file .5.18.capacitors.txt
              contact_ai
              if [ -f .resume_to_class ]; then
                break
              fi
              if [ -f .skip_exercises ]; then
                rm -f .skip_exercises && break
              fi
              rm -f .5.18.capacitors.txt
              sed -i '/^1$/!d' .s_physics_advanced_5_18
              attempts=0
              # Define the targeted directory
              question_directory="Revision/Physics_advanced/S5"
              # Define the file extension
              file_extension_question=".18.capacitors.qns.txt"
              # Define the revision file
              revision_file="../../physics_advanced_covered_qns.txt"
              # Call the function to process a random question
              process_random_short_answer_question "$question_directory" "$file_extension_question" "$revision_file"
              attempts=0
              # Define the targeted directory
              question_directory="Revision/Physics_advanced/S5"
              # Define the file extension
              file_extension_question=".18.capacitors.qns.txt"
              # Define the revision file
              revision_file="../../physics_advanced_covered_qns.txt"
              # Call the function to process a random question
              process_random_aoi "$question_directory" "$file_extension_question" "$revision_file"
            ;;
            19)
              if ! [ -f ".physics_advanced.5.18" ]; then
                attempts=0
                # Define the targeted directory
                answered_directory="Exercise/Physics_advanced/S5"
                # Define the file extension
                file_extension_answer=".18.capacitors.ans.txt"
                # Define the exercise file
                exercise_file="../../physics_advanced_answered_ans.txt"
                # Call the function to process a random question
                process_question_answer "$answered_directory" "$file_extension_answer" "$exercise_file"
                touch .physics_advanced.5.18
              fi
              if ! [ -f ".s_physics_advanced_5_19" ]; then
                echo -e "\n\nYou happen to have chosen to explore Digital electronics ...${g}I never expected you to come this far${t}\n\nKeep believing, keep hoping! \c" && wait_for_a_key_press
              fi
              cp "Notes/Physics_advanced/5.19.digital_electronics.txt" . || exit 1
              mv 5.19.digital_electronics.txt .5.19.digital_electronics.txt || exit 1
              sed -i -e 's/\.\( \+\)/;/g' -e '/https:/! s/\([!?:]\)/\1;/g' -e 's/\([;]\) /\1/g' .5.19.digital_electronics.txt
              sed -i 's/;\([:!?]\);/\;\1/g' .5.19.digital_electronics.txt
              sed -i 's/;\([0-9]*\);/;\1. /g' .5.19.digital_electronics.txt
              sed -i -E 's/(\([^)]*);/\1/g; s/(\[[^]]*);/\1/g; s/(\{[^}]*);/\1/g' .5.19.digital_electronics.txt
              process_reminders_from_file .5.19.digital_electronics.txt
              STATE_FILE=".s_physics_advanced_5_19"
              process_file .5.19.digital_electronics.txt
              contact_ai
              if [ -f .resume_to_class ]; then
                break
              fi
              if [ -f .skip_exercises ]; then
                rm -f .skip_exercises && break
              fi
              rm -f .5.19.digital_electronics.txt
              sed -i '/^1$/!d' .s_physics_advanced_5_19
              attempts=0
              # Define the targeted directory
              question_directory="Revision/Physics_advanced/S5"
              # Define the file extension
              file_extension_question=".19.digital_electronics.qns.txt"
              # Define the revision file
              revision_file="../../physics_advanced_covered_qns.txt"
              # Call the function to process a random question
              process_random_short_answer_question "$question_directory" "$file_extension_question" "$revision_file"
              attempts=0
              # Define the targeted directory
              question_directory="Revision/Physics_advanced/S5"
              # Define the file extension
              file_extension_question=".19.digital_electronics.qns.txt"
              # Define the revision file
              revision_file="../../physics_advanced_covered_qns.txt"
              # Call the function to process a random question
              process_random_aoi "$question_directory" "$file_extension_question" "$revision_file"
							if ! [ -f ".physics_advanced.5.19" ]; then
                attempts=0
                # Define the targeted directory
                answered_directory="Exercise/Physics_advanced/S5"
                # Define the file extension
                file_extension_answer=".19.digital_electronics.ans.txt"
                # Define the exercise file
                exercise_file="../../physics_advanced_answered_ans.txt"
                # Call the function to process a random question
                process_question_answer "$answered_directory" "$file_extension_answer" "$exercise_file"
                touch .physics_advanced.5.19
								echo "5" > .physics_advanced_ready
              fi
            ;;

            # Additional cases for other topics can be added here
            *)
              echo -e "\n\nInvalid topic number \c"
              continue
            ;;
          esac
          break # Exit the inner loop after successfully handling user input
        fi
        ((attempts++))
      done
      # If the loop exits due to max_attempts, handle it
      if [ "$attempts" -eq "$max_attempts" ]; then
        quit1
      fi
    done
  elif [[ "$class" == "6" ]]; then
    if ! find . -maxdepth 1 -name '.s_physics_advanced_6*' -type f -quit 2>/dev/null; then
      echo -e "\n\n${g}Welcome to the S6 Physics class${t}\n\n${y}Together, we are going to get you started${t} \c" && wait_for_a_key_press
      echo -e "\n-------------------------------------- \c"
      clear_and_center "There are ${r}13${t} topics to be covered. Your tasks will always expand or shrink to fit in the time you give them. For that reason, never procrastinate darling!"
    fi
    attempts=0
    max_attempts=4
    while true
    do
      while [ "$attempts" -lt "$max_attempts" ]
      do
        handle_s6_topic_input
        touch .physics_advanced_topic_selected
        if [[ "$topic" == "x" ]]
        then
          quit
        elif [[ "$topic" == "q" ]]
        then
          attempts=0
          # Define the targeted directory
          question_directory="Revision/Physics_advanced/S6"
          # Define the file extension
          file_extension_question=".qns.txt"
          # Define the revision file
          revision_file="../../physics_advanced_covered_qns.txt"
          # Call the function to process a random question
          process_random_short_answer_question "$question_directory" "$file_extension_question" "$revision_file"
        elif [[ "$topic" == "a" ]]
        then
          attempts=0
          # Define the targeted directory
          question_directory="Revision/Physics_advanced/S6"
          # Define the file extension
          file_extension_question=".qns.txt"
          # Define the revision file
          revision_file="../../physics_advanced_covered_qns.txt"
          # Call the function to process a random question
          process_random_aoi "$question_directory" "$file_extension_question" "$revision_file"
        elif [[ "$topic" == "r" ]]
        then
          attempts=0
          # Define the targeted directory
          answered_directory="Exercise/Physics_advanced/S6"
          # Define the file extension
          file_extension_answer=".ans.txt"
          # Define the exercise file
          exercise_file="../../physics_advanced_answered_ans.txt"
          # Call the function to process a random question
          process_question_answer "$answered_directory" "$file_extension_answer" "$exercise_file"
        elif [[ "$topic" == "z" ]]
        then
          attempts=0
          # Define the targeted directory
          answered_directory="Exercise/Physics_advanced/S6"
          # Define the file extension
          file_extension_answer=".ans.txt"
          # Define the exercise file
          exercise_file="../../physics_advanced_answered_ans.txt"
          # Call the function to process a random question
          process_question_answer_adv "$answered_directory" "$file_extension_answer" "$exercise_file"
        elif [[ "$topic" == "s" ]]
        then
          get_sample_items
          break
        elif [[ "$topic" == "n" ]]
        then
          attempts=0
          # Define the targeted directory
          answered_directory="Exercise/Physics_advanced/S6"
          # Define the file extension
          file_extension_answer=".ans.txt"
          # Define the exercise file
          exercise_file="../../physics_advanced_answered_ans.txt"
          # Call the function to process a random question
          process_final_assignment "$answered_directory" "$file_extension_answer" "$exercise_file"
        elif [[ "$topic" == "p" ]]
        then
          track_student_progress
        elif [[ -z "$topic" || ! "$topic" =~ ^([1-9]|1[0-3])$ ]]
        then
          echo -e "\n\nTopic ${r}$topic not available${t}... Please choose from the available options\c"
          wait_for_a_key_press
        else
          case "$topic" in
            1)
              if ! [ -f ".s_physics_advanced_6_1" ]; then
                echo -e "\n\nYou chose to explore Circular motion ...\n\nThank you for choosing to educate yourself!\n\nWe adore you ${g}darling${t} and wish you the very best! \c" && wait_for_a_key_press
              fi
              cp "Notes/Physics_advanced/6.1.circular_motion.txt" . || exit 1
              mv 6.1.circular_motion.txt .6.1.circular_motion.txt || exit 1
              sed -i -e 's/\.\( \+\)/;/g' -e '/https:/! s/\([!?:]\)/\1;/g' -e 's/\([;]\) /\1/g' .6.1.circular_motion.txt
              sed -i 's/;\([:!?]\);/\;\1/g' .6.1.circular_motion.txt
              sed -i 's/;\([0-9]*\);/;\1. /g' .6.1.circular_motion.txt
              sed -i -E 's/(\([^)]*);/\1/g; s/(\[[^]]*);/\1/g; s/(\{[^}]*);/\1/g' .6.1.circular_motion.txt
              process_reminders_from_file .6.1.circular_motion.txt
              STATE_FILE=".s_physics_advanced_6_1"
              process_file .6.1.circular_motion.txt
              contact_ai
              if [ -f .resume_to_class ]; then
                break
              fi
              if [ -f .skip_exercises ]; then
                rm -f .skip_exercises && break
              fi
              rm -f .6.1.circular_motion.txt
              sed -i '/^1$/!d' .s_physics_advanced_6_1
              attempts=0
              # Define the targeted directory
              question_directory="Revision/Physics_advanced/S6"
              # Define the file extension
              file_extension=".1.circular_motion.qns.txt"
              # Define the revision file
              revision_file="../../physics_advanced_covered_qns.txt"
              # Call the function to process a random question
              process_random_short_answer_question "$question_directory" "$file_extension" "$revision_file"
              attempts=0
              # Define the targeted directory
              question_directory="Revision/Physics_advanced/S6"
              # Define the file extension
              file_extension_question=".1.circular_motion.qns.txt"
              # Define the revision file
              revision_file="../../physics_advanced_covered_qns.txt"
              # Call the function to process a random question
              process_random_aoi "$question_directory" "$file_extension_question" "$revision_file"
            ;;
            2)
              if ! [ -f ".physics_advanced.6.1" ]; then
                attempts=0
                # Define the targeted directory
                answered_directory="Exercise/Physics_advanced/S6"
                # Define the file extension
                file_extension_answer=".1.circular_motion.ans.txt"
                # Define the exercise file
                exercise_file="../../physics_advanced_answered_ans.txt"
                # Call the function to process a random question
                process_question_answer "$answered_directory" "$file_extension_answer" "$exercise_file"
                touch .physics_advanced.6.1
              fi
              if ! [ -f ".s_physics_advanced_6_2" ]; then
                echo -e "\n\nYou happen to have decided to delve into Simple harmonic motion ...\n\nOnce again we treasure you ${g}dear one${t}\n\nWe promise to always be right here for you \c" && wait_for_a_key_press
              fi
              cp "Notes/Physics_advanced/6.2.simple_harmonic_motion.txt" . || exit 1
              mv 6.2.simple_harmonic_motion.txt .6.2.simple_harmonic_motion.txt || exit 1
              sed -i -e 's/\.\( \+\)/;/g' -e '/https:/! s/\([!?:]\)/\1;/g' -e 's/\([;]\) /\1/g' .6.2.simple_harmonic_motion.txt
              sed -i 's/;\([:!?]\);/\;\1/g' .6.2.simple_harmonic_motion.txt
              sed -i 's/;\([0-9]*\);/;\1. /g' .6.2.simple_harmonic_motion.txt
              sed -i -E 's/(\([^)]*);/\1/g; s/(\[[^]]*);/\1/g; s/(\{[^}]*);/\1/g' .6.2.simple_harmonic_motion.txt
              process_reminders_from_file .6.2.simple_harmonic_motion.txt
              STATE_FILE=".s_physics_advanced_6_2"
              process_file .6.2.simple_harmonic_motion.txt
              contact_ai
              if [ -f .resume_to_class ]; then
                break
              fi
              if [ -f .skip_exercises ]; then
                rm -f .skip_exercises && break
              fi
              rm -f .6.2.simple_harmonic_motion.txt
              sed -i '/^1$/!d' .s_physics_advanced_6_2
              attempts=0
              # Define the targeted directory
              question_directory="Revision/Physics_advanced/S6"
              # Define the file extension
              file_extension_question=".2.simple_harmonic_motion.qns.txt"
              # Define the revision file
              revision_file="../../physics_advanced_covered_qns.txt"
              # Call the function to process a random question
              process_random_short_answer_question "$question_directory" "$file_extension_question" "$revision_file"
              attempts=0
              # Define the targeted directory
              question_directory="Revision/Physics_advanced/S6"
              # Define the file extension
              file_extension_question=".2.simple_harmonic_motion.qns.txt"
              # Define the revision file
              revision_file="../../physics_advanced_covered_qns.txt"
              # Call the function to process a random question
              process_random_aoi "$question_directory" "$file_extension_question" "$revision_file"
            ;;
            3)
              if ! [ -f ".physics_advanced.6.2" ]; then
                attempts=0
                # Define the targeted directory
                answered_directory="Exercise/Physics_advanced/S6"
                # Define the file extension
                file_extension_answer=".2.simple_harmonic_motion.ans.txt"
                # Define the exercise file
                exercise_file="../../physics_advanced_answered_ans.txt"
                # Call the function to process a random question
                process_question_answer "$answered_directory" "$file_extension_answer" "$exercise_file"
                touch .physics_advanced.6.2
              fi
              if ! [ -f ".s_physics_advanced_6_3" ]; then
                echo -e "\n\nYou have made a choice to cover Gravitation ...\n\nWe are so exited to have you with us ${g}darling${t}\n\nRemember that hard work forever pays \c" && wait_for_a_key_press
              fi
              cp "Notes/Physics_advanced/6.3.gravitation.txt" . || exit 1
              mv 6.3.gravitation.txt .6.3.gravitation.txt || exit 1
              sed -i -e 's/\.\( \+\)/;/g' -e '/https:/! s/\([!?:]\)/\1;/g' -e 's/\([;]\) /\1/g' .6.3.gravitation.txt
              sed -i 's/;\([:!?]\);/\;\1/g' .6.3.gravitation.txt
              sed -i 's/;\([0-9]*\);/;\1. /g' .6.3.gravitation.txt
              sed -i -E 's/(\([^)]*);/\1/g; s/(\[[^]]*);/\1/g; s/(\{[^}]*);/\1/g' .6.3.gravitation.txt
              process_reminders_from_file .6.3.gravitation.txt
              STATE_FILE=".s_physics_advanced_6_3"
              process_file .6.3.gravitation.txt
              contact_ai
              if [ -f .resume_to_class ]; then
                break
              fi
              if [ -f .skip_exercises ]; then
                rm -f .skip_exercises && break
              fi
              rm -f .6.3.gravitation.txt
              sed -i '/^1$/!d' .s_physics_advanced_6_3
              attempts=0
              # Define the targeted directory
              question_directory="Revision/Physics_advanced/S6"
              # Define the file extension
              file_extension_question=".3.gravitation.qns.txt"
              # Define the revision file
              revision_file="../../physics_advanced_covered_qns.txt"
              # Call the function to process a random question
              process_random_short_answer_question "$question_directory" "$file_extension_question" "$revision_file"
              attempts=0
              # Define the targeted directory
              question_directory="Revision/Physics_advanced/S6"
              # Define the file extension
              file_extension_question=".3.gravitation.qns.txt"
              # Define the revision file
              revision_file="../../physics_advanced_covered_qns.txt"
              # Call the function to process a random question
              process_random_aoi "$question_directory" "$file_extension_question" "$revision_file"
						;;
            4)
              if ! [ -f ".physics_advanced.6.3" ]; then
                attempts=0
                # Define the targeted directory
                answered_directory="Exercise/Physics_advanced/S6"
                # Define the file extension
                file_extension_answer=".3.gravitation.ans.txt"
                # Define the exercise file
                exercise_file="../../physics_advanced_answered_ans.txt"
                # Call the function to process a random question
                process_question_answer "$answered_directory" "$file_extension_answer" "$exercise_file"
                touch .physics_advanced.6.3
              fi
              if ! [ -f ".s_physics_advanced_6_4" ]; then
                echo -e "\n\nYou did qualify to probe into the realm of Progressive waves ...\n\nWe do treasure you ${g}darling${t}. Just never forget, that no matter how prepared you are, to win gold, you have to follow instructions! \c" && wait_for_a_key_press
              fi
              cp "Notes/Physics_advanced/6.4.progressive_waves.txt" . || exit 1
              mv 6.4.progressive_waves.txt .6.4.progressive_waves.txt || exit 1
              sed -i -e 's/\.\( \+\)/;/g' -e '/https:/! s/\([!?:]\)/\1;/g' -e 's/\([;]\) /\1/g' .6.4.progressive_waves.txt
              sed -i 's/;\([:!?]\);/\;\1/g' .6.4.progressive_waves.txt
              sed -i 's/;\([0-9]*\);/;\1. /g' .6.4.progressive_waves.txt
              sed -i -E 's/(\([^)]*);/\1/g; s/(\[[^]]*);/\1/g; s/(\{[^}]*);/\1/g' .6.4.progressive_waves.txt
              process_reminders_from_file .6.4.progressive_waves.txt
              STATE_FILE=".s_physics_advanced_6_4"
              process_file .6.4.progressive_waves.txt
              contact_ai
              if [ -f .resume_to_class ]; then
                break
              fi
              if [ -f .skip_exercises ]; then
                rm -f .skip_exercises && break
              fi
              rm -f .6.4.progressive_waves.txt
              sed -i '/^1$/!d' .s_physics_advanced_6_4
              attempts=0
              # Define the targeted directory
              question_directory="Revision/Physics_advanced/S6"
              # Define the file extension
              file_extension=".4.progressive_waves.qns.txt"
              # Define the revision file
              revision_file="../../physics_advanced_covered_qns.txt"
              # Call the function to process a random question
              process_random_short_answer_question "$question_directory" "$file_extension" "$revision_file"
              attempts=0
              # Define the targeted directory
              question_directory="Revision/Physics_advanced/S6"
              # Define the file extension
              file_extension_question=".4.progressive_waves.qns.txt"
              # Define the revision file
              revision_file="../../physics_advanced_covered_qns.txt"
              # Call the function to process a random question
              process_random_aoi "$question_directory" "$file_extension_question" "$revision_file"
            ;;
            5)
              if ! [ -f ".physics_advanced.6.4" ]; then
                attempts=0
                # Define the targeted directory
                answered_directory="Exercise/Physics_advanced/S6"
                # Define the file extension
                file_extension_answer=".4.progressive_waves.ans.txt"
                # Define the exercise file
                exercise_file="../../physics_advanced_answered_ans.txt"
                # Call the function to process a random question
                process_question_answer "$answered_directory" "$file_extension_answer" "$exercise_file"
                touch .physics_advanced.6.4
              fi
              if ! [ -f ".s_physics_advanced_6_5" ]; then
                echo -e "\n\nHere you are dear one... Stay organised as you explore Stationary waves ...\n\n${g}Just know we are not going to leave you alone${t}\n\nWe promise to always be right here for you \c" && wait_for_a_key_press
              fi
              cp "Notes/Physics_advanced/6.5.stationary_waves.txt" . || exit 1
              mv 6.5.stationary_waves.txt .6.5.stationary_waves.txt || exit 1
              sed -i -e 's/\.\( \+\)/;/g' -e '/https:/! s/\([!?:]\)/\1;/g' -e 's/\([;]\) /\1/g' .6.5.stationary_waves.txt
              sed -i 's/;\([:!?]\);/\;\1/g' .6.5.stationary_waves.txt
              sed -i 's/;\([0-9]*\);/;\1. /g' .6.5.stationary_waves.txt
              sed -i -E 's/(\([^)]*);/\1/g; s/(\[[^]]*);/\1/g; s/(\{[^}]*);/\1/g' .6.5.stationary_waves.txt
              process_reminders_from_file .6.5.stationary_waves.txt
              STATE_FILE=".s_physics_advanced_6_5"
              process_file .6.5.stationary_waves.txt
              contact_ai
              if [ -f .resume_to_class ]; then
                break
              fi
              if [ -f .skip_exercises ]; then
                rm -f .skip_exercises && break
              fi
              rm -f .6.5.stationary_waves.txt
              sed -i '/^1$/!d' .s_physics_advanced_6_5
              attempts=0
              # Define the targeted directory
              question_directory="Revision/Physics_advanced/S6"
              # Define the file extension
              file_extension_question=".5.stationary_waves.qns.txt"
              # Define the revision file
              revision_file="../../physics_advanced_covered_qns.txt"
              # Call the function to process a random question
              process_random_short_answer_question "$question_directory" "$file_extension_question" "$revision_file"
              attempts=0
              # Define the targeted directory
              question_directory="Revision/Physics_advanced/S6"
              # Define the file extension
              file_extension_question=".5.stationary_waves.qns.txt"
              # Define the revision file
              revision_file="../../physics_advanced_covered_qns.txt"
              # Call the function to process a random question
              process_random_aoi "$question_directory" "$file_extension_question" "$revision_file"
            ;;
            6)
              if ! [ -f ".physics_advanced.6.5" ]; then
                attempts=0
                # Define the targeted directory
                answered_directory="Exercise/Physics_advanced/S6"
                # Define the file extension
                file_extension_answer=".5.stationary_waves.ans.txt"
                # Define the exercise file
                exercise_file="../../physics_advanced_answered_ans.txt"
                # Call the function to process a random question
                process_question_answer "$answered_directory" "$file_extension_answer" "$exercise_file"
                touch .physics_advanced.6.5
              fi
              if ! [ -f ".s_physics_advanced_6_6" ]; then
                echo -e "\n\nYou have managed to make it to Current electricity ...\n\n${g}Remember to pray always${t}\n\nThe fear of the Lord is the beginning of wisdom \c" && wait_for_a_key_press
              fi
              cp "Notes/Physics_advanced/6.6.current_electricity.txt" . || exit 1
              mv 6.6.current_electricity.txt .6.6.current_electricity.txt || exit 1
              sed -i -e 's/\.\( \+\)/;/g' -e '/https:/! s/\([!?:]\)/\1;/g' -e 's/\([;]\) /\1/g' .6.6.current_electricity.txt
              sed -i 's/;\([:!?]\);/\;\1/g' .6.6.current_electricity.txt
              sed -i 's/;\([0-9]*\);/;\1. /g' .6.6.current_electricity.txt
              sed -i -E 's/(\([^)]*);/\1/g; s/(\[[^]]*);/\1/g; s/(\{[^}]*);/\1/g' .6.6.current_electricity.txt
              process_reminders_from_file .6.6.current_electricity.txt
              STATE_FILE=".s_physics_advanced_6_6"
              process_file .6.6.current_electricity.txt
              contact_ai
              if [ -f .resume_to_class ]; then
                break
              fi
              if [ -f .skip_exercises ]; then
                rm -f .skip_exercises && break
              fi
              rm -f .6.6.current_electricity.txt
              sed -i '/^1$/!d' .s_physics_advanced_6_6
              attempts=0
              # Define the targeted directory
              question_directory="Revision/Physics_advanced/S6"
              # Define the file extension
              file_extension_question=".6.current_electricity.qns.txt"
              # Define the revision file
              revision_file="../../physics_advanced_covered_qns.txt"
              # Call the function to process a random question
              process_random_short_answer_question "$question_directory" "$file_extension_question" "$revision_file"
              attempts=0
              # Define the targeted directory
              question_directory="Revision/Physics_advanced/S6"
              # Define the file extension
              file_extension_question=".6.current_electricity.qns.txt"
              # Define the revision file
              revision_file="../../physics_advanced_covered_qns.txt"
              # Call the function to process a random question
              process_random_aoi "$question_directory" "$file_extension_question" "$revision_file"
            ;;
            7)
              if ! [ -f ".physics_advanced.6.6" ]; then
                attempts=0
                # Define the targeted directory
                answered_directory="Exercise/Physics_advanced/S6"
                # Define the file extension
                file_extension_answer=".6.current_electricity.ans.txt"
                # Define the exercise file
                exercise_file="../../physics_advanced_answered_ans.txt"
                # Call the function to process a random question
                process_question_answer "$answered_directory" "$file_extension_answer" "$exercise_file"
                touch .physics_advanced.6.6
              fi
              if ! [ -f ".s_physics_advanced_6_7" ]; then
                echo -e "\n\nFrom here, you will be proceeding with Magnetism in Matter ...\n\n${g}Please never ever forget that your education is your future${t}\n\nFocus dear \c" && wait_for_a_key_press
              fi
              cp "Notes/Physics_advanced/6.7.magnetism_in_matter.txt" . || exit 1
              mv 6.7.magnetism_in_matter.txt .6.7.magnetism_in_matter.txt || exit 1
              sed -i -e 's/\.\( \+\)/;/g' -e '/https:/! s/\([!?:]\)/\1;/g' -e 's/\([;]\) /\1/g' .6.7.magnetism_in_matter.txt
              sed -i 's/;\([:!?]\);/\;\1/g' .6.7.magnetism_in_matter.txt
              sed -i 's/;\([0-9]*\);/;\1. /g' .6.7.magnetism_in_matter.txt
              sed -i -E 's/(\([^)]*);/\1/g; s/(\[[^]]*);/\1/g; s/(\{[^}]*);/\1/g' .6.7.magnetism_in_matter.txt
              process_reminders_from_file .6.7.magnetism_in_matter.txt
              STATE_FILE=".s_physics_advanced_6_7"
              process_file .6.7.magnetism_in_matter.txt
              contact_ai
              if [ -f .resume_to_class ]; then
                break
              fi
              if [ -f .skip_exercises ]; then
                rm -f .skip_exercises && break
              fi
              rm -f .6.7.magnetism_in_matter.txt
              sed -i '/^1$/!d' .s_physics_advanced_6_7
              attempts=0
              # Define the targeted directory
              question_directory="Revision/Physics_advanced/S6"
              # Define the file extension
              file_extension_question=".7.magnetism_in_matter.qns.txt"
              # Define the revision file
              revision_file="../../physics_advanced_covered_qns.txt"
              # Call the function to process a random question
              process_random_short_answer_question "$question_directory" "$file_extension_question" "$revision_file"
              attempts=0
              # Define the targeted directory
              question_directory="Revision/Physics_advanced/S6"
              # Define the file extension
              file_extension_question=".7.magnetism_in_matter.qns.txt"
              # Define the revision file
              revision_file="../../physics_advanced_covered_qns.txt"
              # Call the function to process a random question
              process_random_aoi "$question_directory" "$file_extension_question" "$revision_file"
            ;;
            8)
              if ! [ -f ".physics_advanced.6.7" ]; then
                attempts=0
                # Define the targeted directory
                answered_directory="Exercise/Physics_advanced/S6"
                # Define the file extension
                file_extension_answer=".7.magnetism_in_matter.ans.txt"
                # Define the exercise file
                exercise_file="../../physics_advanced_answered_ans.txt"
                # Call the function to process a random question
                process_question_answer "$answered_directory" "$file_extension_answer" "$exercise_file"
                touch .physics_advanced.6.7
              fi
              if ! [ -f ".s_physics_advanced_6_8" ]; then
                echo -e "\n\nYou are to cover Magnetic effect of an electric current ...\n\n${g}Please never ever settle for less${t}\n\nPromise yourself that you wont give up \c" && wait_for_a_key_press
              fi
              cp "Notes/Physics_advanced/6.8.magnetic_effect_of_an_electric_current.txt" . || exit 1
              mv 6.8.magnetic_effect_of_an_electric_current.txt .6.8.magnetic_effect_of_an_electric_current.txt || exit 1
              sed -i -e 's/\.\( \+\)/;/g' -e '/https:/! s/\([!?:]\)/\1;/g' -e 's/\([;]\) /\1/g' .6.8.magnetic_effect_of_an_electric_current.txt
              sed -i 's/;\([:!?]\);/\;\1/g' .6.8.magnetic_effect_of_an_electric_current.txt
              sed -i 's/;\([0-9]*\);/;\1. /g' .6.8.magnetic_effect_of_an_electric_current.txt
              sed -i -E 's/(\([^)]*);/\1/g; s/(\[[^]]*);/\1/g; s/(\{[^}]*);/\1/g' .6.8.magnetic_effect_of_an_electric_current.txt
              process_reminders_from_file .6.8.magnetic_effect_of_an_electric_current.txt
              STATE_FILE=".s_physics_advanced_6_8"
              process_file .6.8.magnetic_effect_of_an_electric_current.txt
              contact_ai
              if [ -f .resume_to_class ]; then
                break
              fi
              if [ -f .skip_exercises ]; then
                rm -f .skip_exercises && break
              fi
              rm -f .6.8.magnetic_effect_of_an_electric_current.txt
              sed -i '/^1$/!d' .s_physics_advanced_6_8
              attempts=0
              # Define the targeted directory
              question_directory="Revision/Physics_advanced/S6"
              # Define the file extension
              file_extension_question=".8.magnetic_effect_of_an_electric_current.qns.txt"
              # Define the revision file
              revision_file="../../physics_advanced_covered_qns.txt"
              # Call the function to process a random question
              process_random_short_answer_question "$question_directory" "$file_extension_question" "$revision_file"
              attempts=0
              # Define the targeted directory
              question_directory="Revision/Physics_advanced/S6"
              # Define the file extension
              file_extension_question=".8.magnetic_effect_of_an_electric_current.qns.txt"
              # Define the revision file
              revision_file="../../physics_advanced_covered_qns.txt"
              # Call the function to process a random question
              process_random_aoi "$question_directory" "$file_extension_question" "$revision_file"
            ;;
            9)
              if ! [ -f ".physics_advanced.6.8" ]; then
                attempts=0
                # Define the targeted directory
                answered_directory="Exercise/Physics_advanced/S6"
                # Define the file extension
                file_extension_answer=".8.magnetic_effect_of_an_electric_current.ans.txt"
                # Define the exercise file
                exercise_file="../../physics_advanced_answered_ans.txt"
                # Call the function to process a random question
                process_question_answer "$answered_directory" "$file_extension_answer" "$exercise_file"
                touch .physics_advanced.6.8
              fi
              if ! [ -f ".s_physics_advanced_6_9" ]; then
                echo -e "\n\nI am so happy for you dear one. You are here to cover the the 9th topic (Electromagnetic induction )...\n\n${g}Just never underestimate the value of a single second${t}\n\nThat extra one second maybe all you need to fully understand a given concept \c" && wait_for_a_key_press
              fi
              cp "Notes/Physics_advanced/6.9.electromagnetic_induction.txt" . || exit 1
              mv 6.9.electromagnetic_induction.txt .6.9.electromagnetic_induction.txt || exit 1
              sed -i -e 's/\.\( \+\)/;/g' -e '/https:/! s/\([!?:]\)/\1;/g' -e 's/\([;]\) /\1/g' .6.9.electromagnetic_induction.txt
              sed -i 's/;\([:!?]\);/\;\1/g' .6.9.electromagnetic_induction.txt
              sed -i 's/;\([0-9]*\);/;\1. /g' .6.9.electromagnetic_induction.txt
              sed -i -E 's/(\([^)]*);/\1/g; s/(\[[^]]*);/\1/g; s/(\{[^}]*);/\1/g' .6.9.electromagnetic_induction.txt
              process_reminders_from_file .6.9.electromagnetic_induction.txt
              STATE_FILE=".s_physics_advanced_6_9"
              process_file .6.9.electromagnetic_induction.txt
              contact_ai
              if [ -f .resume_to_class ]; then
                break
              fi
              if [ -f .skip_exercises ]; then
                rm -f .skip_exercises && break
              fi
              rm -f .6.9.electromagnetic_induction.txt
              sed -i '/^1$/!d' .s_physics_advanced_6_9
              attempts=0
              # Define the targeted directory
              question_directory="Revision/Physics_advanced/S6"
              # Define the file extension
              file_extension_question=".9.electromagnetic_induction.qns.txt"
              # Define the revision file
              revision_file="../../physics_advanced_covered_qns.txt"
              # Call the function to process a random question
              process_random_short_answer_question "$question_directory" "$file_extension_question" "$revision_file"
              attempts=0
              # Define the targeted directory
              question_directory="Revision/Physics_advanced/S6"
              # Define the file extension
              file_extension_question=".9.electromagnetic_induction.qns.txt"
              # Define the revision file
              revision_file="../../physics_advanced_covered_qns.txt"
              # Call the function to process a random question
              process_random_aoi "$question_directory" "$file_extension_question" "$revision_file"
            ;;
            10)
              if ! [ -f ".physics_advanced.6.9" ]; then
                attempts=0
                # Define the targeted directory
                answered_directory="Exercise/Physics_advanced/S6"
                # Define the file extension
                file_extension_answer=".9.electromagnetic_induction.ans.txt"
                # Define the exercise file
                exercise_file="../../physics_advanced_answered_ans.txt"
                # Call the function to process a random question
                process_question_answer "$answered_directory" "$file_extension_answer" "$exercise_file"
                touch .physics_advanced.6.9
              fi
              if ! [ -f ".s_physics_advanced_6_10" ]; then
                echo -e "\n\nYou happen to have chosen to explore A.C circuits ...${g}I never expected you to come this far${t}\n\nKeep believing, keep hoping! \c" && wait_for_a_key_press
              fi
              cp "Notes/Physics_advanced/6.10.a.c_circuits.txt" . || exit 1
              mv 6.10.a.c_circuits.txt .6.10.a.c_circuits.txt || exit 1
              sed -i -e 's/\.\( \+\)/;/g' -e '/https:/! s/\([!?:]\)/\1;/g' -e 's/\([;]\) /\1/g' .6.10.a.c_circuits.txt
              sed -i 's/;\([:!?]\);/\;\1/g' .6.10.a.c_circuits.txt
              sed -i 's/;\([0-9]*\);/;\1. /g' .6.10.a.c_circuits.txt
              sed -i -E 's/(\([^)]*);/\1/g; s/(\[[^]]*);/\1/g; s/(\{[^}]*);/\1/g' .6.10.a.c_circuits.txt
              process_reminders_from_file .6.10.a.c_circuits.txt
              STATE_FILE=".s_physics_advanced_6_10"
              process_file .6.10.a.c_circuits.txt
              contact_ai
              if [ -f .resume_to_class ]; then
                break
              fi
              if [ -f .skip_exercises ]; then
                rm -f .skip_exercises && break
              fi
              rm -f .6.10.a.c_circuits.txt
              sed -i '/^1$/!d' .s_physics_advanced_6_10
              attempts=0
              # Define the targeted directory
              question_directory="Revision/Physics_advanced/S6"
              # Define the file extension
              file_extension_question=".10.a.c_circuits.qns.txt"
              # Define the revision file
              revision_file="../../physics_advanced_covered_qns.txt"
              # Call the function to process a random question
              process_random_short_answer_question "$question_directory" "$file_extension_question" "$revision_file"
              attempts=0
              # Define the targeted directory
              question_directory="Revision/Physics_advanced/S6"
              # Define the file extension
              file_extension_question=".10.a.c_circuits.qns.txt"
              # Define the revision file
              revision_file="../../physics_advanced_covered_qns.txt"
              # Call the function to process a random question
              process_random_aoi "$question_directory" "$file_extension_question" "$revision_file"
            ;;
            11)
              if ! [ -f ".physics_advanced.6.10" ]; then
                attempts=0
                # Define the targeted directory
                answered_directory="Exercise/Physics_advanced/S6"
                # Define the file extension
                file_extension_answer=".10.a.c_circuits.ans.txt"
                # Define the exercise file
                exercise_file="../../physics_advanced_answered_ans.txt"
                # Call the function to process a random question
                process_question_answer "$answered_directory" "$file_extension_answer" "$exercise_file"
                touch .physics_advanced.6.10
              fi
              if ! [ -f ".s_physics_advanced_6_11" ]; then
                echo -e "\n\nYou chose to explore Atomic particles ...\n\nThank you for choosing to educate yourself!\n\nWe adore you ${g}darling${t} and wish you the very best! \c" && wait_for_a_key_press
              fi
              cp "Notes/Physics_advanced/6.11.atomic_particles.txt" . || exit 1
              mv 6.11.atomic_particles.txt .6.11.atomic_particles.txt || exit 1
              sed -i -e 's/\.\( \+\)/;/g' -e '/https:/! s/\([!?:]\)/\1;/g' -e 's/\([;]\) /\1/g' .6.11.atomic_particles.txt
              sed -i 's/;\([:!?]\);/\;\1/g' .6.11.atomic_particles.txt
              sed -i 's/;\([0-9]*\);/;\1. /g' .6.11.atomic_particles.txt
              sed -i -E 's/(\([^)]*);/\1/g; s/(\[[^]]*);/\1/g; s/(\{[^}]*);/\1/g' .6.11.atomic_particles.txt
              process_reminders_from_file .6.11.atomic_particles.txt
              STATE_FILE=".s_physics_advanced_6_11"
              process_file .6.11.atomic_particles.txt
              contact_ai
              if [ -f .resume_to_class ]; then
                break
              fi
              if [ -f .skip_exercises ]; then
                rm -f .skip_exercises && break
              fi
              rm -f .6.11.atomic_particles.txt
              sed -i '/^1$/!d' .s_physics_advanced_6_11
              attempts=0
              # Define the targeted directory
              question_directory="Revision/Physics_advanced/S6"
              # Define the file extension
              file_extension=".11.atomic_particles.qns.txt"
              # Define the revision file
              revision_file="../../physics_advanced_covered_qns.txt"
              # Call the function to process a random question
              process_random_short_answer_question "$question_directory" "$file_extension" "$revision_file"
              attempts=0
              # Define the targeted directory
              question_directory="Revision/Physics_advanced/S6"
              # Define the file extension
              file_extension_question=".11.atomic_particles.qns.txt"
              # Define the revision file
              revision_file="../../physics_advanced_covered_qns.txt"
              # Call the function to process a random question
              process_random_aoi "$question_directory" "$file_extension_question" "$revision_file"
            ;;
            12)
              if ! [ -f ".physics_advanced.6.11" ]; then
                attempts=0
                # Define the targeted directory
                answered_directory="Exercise/Physics_advanced/S6"
                # Define the file extension
                file_extension_answer=".11.atomic_particles.ans.txt"
                # Define the exercise file
                exercise_file="../../physics_advanced_answered_ans.txt"
                # Call the function to process a random question
                process_question_answer "$answered_directory" "$file_extension_answer" "$exercise_file"
                touch .physics_advanced.6.11
              fi
              if ! [ -f ".s_physics_advanced_6_12" ]; then
                echo -e "\n\nYou happen to have decided to delve into Quantum theory ...\n\nOnce again we treasure you ${g}dear one${t}\n\nWe promise to always be right here for you \c" && wait_for_a_key_press
              fi
              cp "Notes/Physics_advanced/6.12.quantum_theory.txt" . || exit 1
              mv 6.12.quantum_theory.txt .6.12.quantum_theory.txt || exit 1
              sed -i -e 's/\.\( \+\)/;/g' -e '/https:/! s/\([!?:]\)/\1;/g' -e 's/\([;]\) /\1/g' .6.12.quantum_theory.txt
              sed -i 's/;\([:!?]\);/\;\1/g' .6.12.quantum_theory.txt
              sed -i 's/;\([0-9]*\);/;\1. /g' .6.12.quantum_theory.txt
              sed -i -E 's/(\([^)]*);/\1/g; s/(\[[^]]*);/\1/g; s/(\{[^}]*);/\1/g' .6.12.quantum_theory.txt
              process_reminders_from_file .6.12.quantum_theory.txt
              STATE_FILE=".s_physics_advanced_6_12"
              process_file .6.12.quantum_theory.txt
              contact_ai
              if [ -f .resume_to_class ]; then
                break
              fi
              if [ -f .skip_exercises ]; then
                rm -f .skip_exercises && break
              fi
              rm -f .6.12.quantum_theory.txt
              sed -i '/^1$/!d' .s_physics_advanced_6_12
              attempts=0
              # Define the targeted directory
              question_directory="Revision/Physics_advanced/S6"
              # Define the file extension
              file_extension_question=".12.quantum_theory.qns.txt"
              # Define the revision file
              revision_file="../../physics_advanced_covered_qns.txt"
              # Call the function to process a random question
              process_random_short_answer_question "$question_directory" "$file_extension_question" "$revision_file"
              attempts=0
              # Define the targeted directory
              question_directory="Revision/Physics_advanced/S6"
              # Define the file extension
              file_extension_question=".12.quantum_theory.qns.txt"
              # Define the revision file
              revision_file="../../physics_advanced_covered_qns.txt"
              # Call the function to process a random question
              process_random_aoi "$question_directory" "$file_extension_question" "$revision_file"
            ;;
            13)
              if ! [ -f ".physics_advanced.6.12" ]; then
                attempts=0
                # Define the targeted directory
                answered_directory="Exercise/Physics_advanced/S6"
                # Define the file extension
                file_extension_answer=".12.quantum_theory.ans.txt"
                # Define the exercise file
                exercise_file="../../physics_advanced_answered_ans.txt"
                # Call the function to process a random question
                process_question_answer "$answered_directory" "$file_extension_answer" "$exercise_file"
                touch .physics_advanced.6.12
              fi
              if ! [ -f ".s_physics_advanced_6_13" ]; then
                echo -e "\n\nYou have made a choice to cover Nuclear processes ...\n\nWe are so exited to have you with us ${g}darling${t}\n\nRemember that hard work forever pays \c" && wait_for_a_key_press
              fi
              cp "Notes/Physics_advanced/6.13.nuclear_processes.txt" . || exit 1
              mv 6.13.nuclear_processes.txt .6.13.nuclear_processes.txt || exit 1
              sed -i -e 's/\.\( \+\)/;/g' -e '/https:/! s/\([!?:]\)/\1;/g' -e 's/\([;]\) /\1/g' .6.13.nuclear_processes.txt
              sed -i 's/;\([:!?]\);/\;\1/g' .6.13.nuclear_processes.txt
              sed -i 's/;\([0-9]*\);/;\1. /g' .6.13.nuclear_processes.txt
              sed -i -E 's/(\([^)]*);/\1/g; s/(\[[^]]*);/\1/g; s/(\{[^}]*);/\1/g' .6.13.nuclear_processes.txt
              process_reminders_from_file .6.13.nuclear_processes.txt
              STATE_FILE=".s_physics_advanced_6_13"
              process_file .6.13.nuclear_processes.txt
              contact_ai
              if [ -f .resume_to_class ]; then
                break
              fi
              if [ -f .skip_exercises ]; then
                rm -f .skip_exercises && break
              fi
              rm -f .6.13.nuclear_processes.txt
              sed -i '/^1$/!d' .s_physics_advanced_6_13
              attempts=0
              # Define the targeted directory
              question_directory="Revision/Physics_advanced/S6"
              # Define the file extension
              file_extension_question=".13.nuclear_processes.qns.txt"
              # Define the revision file
              revision_file="../../physics_advanced_covered_qns.txt"
              # Call the function to process a random question
              process_random_short_answer_question "$question_directory" "$file_extension_question" "$revision_file"
              attempts=0
              # Define the targeted directory
              question_directory="Revision/Physics_advanced/S6"
              # Define the file extension
              file_extension_question=".13.nuclear_processes.qns.txt"
              # Define the revision file
              revision_file="../../physics_advanced_covered_qns.txt"
              # Call the function to process a random question
              process_random_aoi "$question_directory" "$file_extension_question" "$revision_file"
              if ! [ -f ".physics_advanced.6.113" ]; then
                attempts=0
                # Define the targeted directory
                answered_directory="Exercise/Physics_advanced/S6"
                # Define the file extension
                file_extension_answer=".13.nuclear_processes.ans.txt"
                # Define the exercise file
                exercise_file="../../physics_advanced_answered_ans.txt"
                # Call the function to process a random question
                process_question_answer "$answered_directory" "$file_extension_answer" "$exercise_file"
                touch .physics_advanced.6.113
                echo "6" > .physics_advanced_ready
              fi
            ;;
            # Additional cases for other topics can be added here
            *)
              echo -e "\n\nInvalid topic number \c"
              continue
            ;;
          esac
          break # Exit the inner loop after successfully handling user input
        fi
        ((attempts++))
      done
      # If the loop exits due to max_attempts, handle it
      if [ "$attempts" -eq "$max_attempts" ]; then
        quit1
      fi
    done


  elif [[ "$class" == "6" ]]; then
  echo -e "\n\nLessons for your class are still being developed.. Keep in touch \n"
  wait_for_a_key_press
  echo -e "\n\nYou could choose to fund the initiative by contacting us through our gmail: 2024omd256@gmail.com \n"
  wait_for_a_key_press
  continue
  else
    echo -e "\n\nYou entered a wrong number, please choose from the available options \c"
    wait_for_a_key_press
    continue
  fi
done

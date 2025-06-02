#!/bin/bash

declare -A allergens=(
        [eggs]=1
        [peanuts]=2
        [shellfish]=4
        [strawberries]=8
        [tomatoes]=16
        [chochlates]=32
        [pollen]=64
        [cats]=128
        )
#echo "The key  is : "${!allergens[@]}" "
#echo "The value is : "${allergens[@]}" "
#echo "The score of pollen is : ${allergens[pollen]}"

score=$1
check_Allergen=$2

for allergen in "${!allergens[@]}"; do
    value=${allergens[$allergen]}
   # echo " value is : $value"
  if (( (score & value) != 0 )); then
    echo "- $allergen"
  fi
done

# Check if allergic to a specific item
if [ -n "$check_allergen" ]; then
  value=${allergens[$check_allergen]}
  if [ -z "$value" ]; then
    echo "Allergen '$check_allergen' is not in the known list."
  elif (( (score & value) != 0 )); then
    echo "Yes, allergic to $check_allergen."
  else
    echo "No, not allergic to $check_allergen."
  fi
fi

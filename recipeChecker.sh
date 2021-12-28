#!/usr/bin/env bash

inventory=$1
custOrder=$2

recipesConfig="recipes.txt"

menu=`head -n 1 ${recipesConfig}`
IFS=","
recipeNo=0
itemExist=0
for item in $menu; do
  ((recipeNo=recipeNo+1))
  if [ "$item" == "$custOrder" ]; then
    itemExist=$recipeNo
  fi 
done


lineNo=0
while IFS= read -r line
do
  ind=`expr index "$line" '='` 
  if [ $ind -gt 0 ]; then
    recipe[$lineNo]=${line:ind}
  fi
  ((lineNo=lineNo+1))
done < $recipesConfig

if [ $itemExist -gt 0 ]; then
  # Have recipe
  ingreds=${recipe[$itemExist]}
  for ingred in $ingreds; do
    #TODO srplit then look for QTY of ingred in inventory
    ind=`expr index "$ingred" ' '`
    qty=${ingred:0:ind} 
    inv=${ingred:ind}
    echo "Look for ${qty} occurences of ${inv} in ${inventory} "
  done
fi


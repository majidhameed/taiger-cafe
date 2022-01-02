![](https://img.shields.io/github/license/majidhameed/taiger-cafe?style=plastic)

Files in this folder
--------------------
readme.txt                          This file
fruitList.txt						List of fruits

Instructions
--------------------
1) Create and write your code in recipeChecker.sh
2) Submit only recipeChecker.sh

## PROBLEM: TAIGER CAFE (Bash only)

Since Taiger HQ is situated opposite a fruit stall in chinatown, Taiger is thinking of opening Taiger Cafe to earn more profit. The Cafe serves 3 items, with the following ingredients required:
~~~
APPLE PIE - 3x Apple
PINEAPPLE PIE - 3x Pineapple
FRUIT PARFAIT - 2x Apple + 2x Pineapple
~~~
You are an inventory manager in charge of checking if we can fulfill a customer's orders with the ingredients we have in stock. Luckily, the inventory list is contained in a text file. Write a bash script named recipeChecker.sh which will let us know if we can fulfill the order.

Your task: Download the project with the sample fruitList.txt and implement the bash script recipeChecker.sh

Your script should take in 2 command line arguments:

- Arg 1: absolute file path of the inventory list (e.g. fruitList.txt )
- Arg 2: the customer's order consisting only one of ["APPLE PIE", "PINEAPPLE PIE" or "FRUIT PARFAIT"] in BLOCK letters

Your script should output the following to stdout:

- If there are enough ingredients to create the specified dessert, output exactly (including all punctuation) : You shall have (recipe name in block letters)!
- Else, output: You shall not have (recipe name in block letters)
- If an unrecognised recipe is provided (eg Pineapple Pie), output: We do not have that on the menu

Other Specifications

You should consider all fruits to be case insensitive (i.e if a list contains "Apple" and "apple" you can consider them as 2 apples)

Each line of the inventory list provided will contain only one item, and terminates with a ","

Any item which contains "apple", such as "apples", "apple jam" or "rotten apple" should not be considered an "apple" ingredient.

See the following examples of how the inventory list will be formatted

Example

fruitList.txt
~~~
Pineapples,
Apple,
Pineapple,
Orange,
APPLE,
Rotten apple,
Grape,
apple,
~~~
Sample 1

Command: ./recipeChecker.sh fruitList.txt "APPLE PIE"

Output: 
~~~ 
You shall have APPLE PIE!
~~~

Explanation: Lines 2, 5, 8 contain 3 apples together

Sample 2
>`Command: ./recipeChecker.sh fruitList.txt "FRUIT PARFAIT"`

Output: 
~~~
You shall not have FRUIT PARFAIT
~~~
Explanation: 
- Lines 2, 5, 8 contains 3 apples, line 3 contains 1 pineapple. We need minimum 2 of each.

Sample 3

>`Command: ./recipeChecker.sh fruitList.txt "CHICKEN PIE"`

Output: 
~~~
We do not have that on the menu
~~~
Explanation: 
- Menu only contains PINEAPPLE PIE, APPLE PIE and FRUIT PARFAIT

#!/bin/sh

count=0
function isTrue()
{
	if [[ $1 == "A" ]]; then
		echo "You're correct!"
		((count++))	
	else
		echo "Sorry wrong answer!" 
	fi
}

function isFalse()
{
	 if [[ $1 == "B" ]]; then
                echo "You're correct!"
                ((count++))
        else
                echo "Sorry wrong answer!"
        fi
}

function checkInput() 
{	
	goodInput=0
	while [ $goodInput -eq 0 ]; do
		$1
		if [[ $a == "A" || $a == "B" ]]; then
			((goodInput++))
			$2 $a
		else
			echo "I don't understand. Try again!"
		fi
	done
}

function Question1 () 
{
	read -p "1. Is July 4th Independence Day? A: True B:False " a
}

function Question2 ()
{
	read -p "2. Does March have 32 days in it? A: True B:False " a
}

function Question3 ()
{
	read -p "4. Does Star Wars have 9 main movies? A: True B:False " a
}

function Question4 ()
{
	read -p "4. You spot the error in the last question? " a
}

function Question5 () {
	read -p "5. Can Magikarp only learn splash? " a
}	

function Question6 () {
	read -p "6. Charizard is number 7 in the PokeDex? " a
}

function Question7 () {
	read -p "7. Can Bulbasaur learn vine whip? " a
}
function Question8() {
	read  -p "8. Does Squirtle look like a turtle? " a
}

function Question9 () {
	read -p "9. Was Ash Ketchum's first Pokemon Pikachu? " a
}

function Question10 () {
	read -p "10. Did you enjoy this quiz? " a
}

checkInput Question1 isTrue

checkInput Question2 isFalse

checkInput Question3 isTrue

checkInput Question4 isTrue

checkInput Question5 isTrue

checkInput Question6 isFalse

checkInput Question7 isTrue

checkInput Question8 isTrue

checkInput Question9 isTrue

checkInput Question10 isTrue

echo "Here's your score $count / 10."
echo "Good job! Bye!"



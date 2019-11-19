all : guessinggame.sh readme.txt

guessinggame.sh:
	bash guessinggame.sh

readme.txt:
	#touch readme.md
	echo " # Coursera Project" > readme.md
	echo " ## The guessing game" >> readme.md
	#echo "------"
	echo "*date and time :* " >> readme.md
	date >> readme.md
	#echo "----- " >> readme.md
	echo " " >> readme.md
	echo "*no of lines of code in guessinggame.sh are :* " >> readme.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> readme.md

clean:
	rm readme.md 


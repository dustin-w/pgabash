all: README.txt

README.txt:
	echo "Title: Guessing Game, a bash project" > README.txt
	date >> README.txt
	echo "$$(wc -l < guessinggame.sh)" >> README.txt


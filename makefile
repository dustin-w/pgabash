all: README.md

README.md:
	echo "Title: Guessing Game, a bash project" > README.md
	date >> README.md
	echo "$$(wc -l < guessinggame.sh)" >> README.md


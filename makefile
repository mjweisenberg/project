README.md:
	touch README.md

readme:  README.md
	echo "# Project title:  guessinggame.sh" >> README.md
	echo "make was run at: " >> README.md
	date '+%d/%m/%Y %H:%M:%S' >> README.md
	echo "Number of lines in guessinggame.sh: " >> README.md
	wc -l guessinggame.sh >> README.md


 


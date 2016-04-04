Project1:	Sudoku.o main.o Sudoku_solve.o
	g++ -o Project1 Sudoku.o main.o Sudoku_solve.o
Sudoku.o:	Sudoku.h Sudoku.cpp 
	g++ -g -c Sudoku.cpp
Sudoku_solve.o: Sudoku.h Sudoku_solve.cpp
	g++ -g -c Sudoku_solve.cpp
main.o:	main.cpp Sudoku.h
	g++ -g -c main.cpp

clean:
	rm main.o Sudoku.o Sudoku_solve.o

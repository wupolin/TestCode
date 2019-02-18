HEADER=sumval.h  #set variable

.PHONY:run all clean  #set fake working target 

run: all  #check if the version is the latest and run the executive file
	./main
all:main #default 	
main:main.o sumval.o
	g++ -o main main.o sumval.o

%.o:%.cpp $(HEADER)  # % is to represent all elements and use $() to get the val of variable
	g++ -c $*.cpp  
# $ < is to represent the first prerequisite element. 
# $ * is to represent the first prerequisite element, but not including extension filename. 
# $ @ is to represent the working target.
# $ ^ is to represent all prerequisite elements.

clean:
	rm -rf main main.o sumval.o

main: main.o csv_reader.o gui.o random_reader.o benchmark.o quicksort.o insertionsort.o output_writer.o input_reader.o mapping.o
	g++ main.o csv_reader.o gui.o random_reader.o benchmark.o quicksort.o insertionsort.o output_writer.o input_reader.o mapping.o -o main

mapping.o: Model/mapping.cpp
	g++ -c Model/mapping.cpp

csv_reader.o: DAL/csv_reader.cpp
	g++ -c DAL/csv_reader.cppv

gui.o: GUI/gui.cpp
	g++ -c GUI/gui.cpp

random_reader.o: DAL/random_reader.cpp
	g++ -c DAL/random_reader.cpp

benchmark.o: Benchmark/benchmark.cpp
	g++ -c Benchmark/benchmark.cpp

quicksort.o: Sorters/quicksort.cpp
	g++ -c Sorters/quicksort.cpp

insertionsort.o: Sorters/insertionsort.cpp
	g++ -c Sorters/insertionsort.cpp

output_writer.o: DAL/output_writer.cpp
	g++ -c DAL/output_writer.cpp

input_reader.o: DAL/input_reader.cpp
	g++ -c DAL/input_reader.cpp

clean:
	rm *.o main
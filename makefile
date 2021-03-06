main: main.o csv_reader.o gui.o random_reader.o benchmark.o quicksort.o insertionsort.o output_writer.o input_reader.o mapping.o hash.o
	g++ main.o csv_reader.o gui.o random_reader.o benchmark.o quicksort.o insertionsort.o output_writer.o input_reader.o mapping.o hash.o -o main

hash.o: Hash/hash.cpp
	g++ -c Hash/hash.cpp

mapping.o: Model/mapping.cpp
	g++ -c Model/mapping.cpp

csv_reader.o: DAL/csv_reader.cpp
	g++ -c DAL/csv_reader.cpp

gui.o: GUI/gui.cpp
	g++ -c GUI/gui.cpp

random_reader.o: DAL/random_reader.cpp
	g++ -c DAL/random_reader.cpp

benchmark.o: Benchmark/benchmark.cpp
	g++ -c Benchmark/benchmark.cpp

# benchmark.o: Benchmark/benchmarkTrees.cpp
# 	g++ -c Benchmark/benchmarkTrees.cpp

quicksort.o: Sorters/quicksort.cpp
	g++ -c Sorters/quicksort.cpp

insertionsort.o: Sorters/insertionsort.cpp
	g++ -c Sorters/insertionsort.cpp

RBTree.o: Trees/RBTree.cpp
	g++ -c Trees/RBTree.cpp

output_writer.o: DAL/output_writer.cpp
	g++ -c DAL/output_writer.cpp

input_reader.o: DAL/input_reader.cpp
	g++ -c DAL/input_reader.cpp

clean:
	rm *.o main
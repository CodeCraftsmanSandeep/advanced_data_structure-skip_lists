	INCLUDE=-I../include/
all : 
	mkdir -p generated_input binaries outputs execution_time
	python3 helper/generate_input.py > generated_input/input.txt
	g++ ${INCLUDE} src/skip_list.cpp -o binaries/skip_list.out
	./binaries/skip_list.out < generated_input/input.txt > outputs/skip_list_output.txt
	g++ src/set.cpp -o binaries/set.out
	./binaries/set.out < generated_input/input.txt > outputs/set_output.txt
	echo "Verifying output consistency between set and skip list data structures"
	diff outputs/set_output.txt outputs/skip_list_output.txt
	echo "Comparing execution time between skip list and C++ set"
	./run_tests.sh

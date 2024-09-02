# Skip List in C++ 🚀

Welcome to my repository! Here, you'll find my implementation of a **Skip List**, an advanced randomized data structure, in C++. Additionally, I have compared its performance and correctness against the C++ `set` container. This README will guide you through the project. I hope you find it informative and fun! 🎉

Happy Coding! 💻✨

## Table of Contents

| Section | Description |
|:-------|:------------|
| [include](include/) | Contains the header file [skip_list.h](include/skip_list.h) with my **circular** implementation of the skip list. This header can be included to use the skip list as a library/API, providing a clean abstraction for complex logic. Not familiar with skip lists? Check out this [MIT lecture](https://www.youtube.com/watch?v=2g9OSRKJuzM&t=1780s). |
| [skipList_vs_set](skipList_vs_set/) | Contains scripts to compare the outputs and execution times of the C++ `set` and my skip list implementation (which is pretty cool!). For more details, see [this section](#skiplist_vs_set). |
| [src](src/) | Includes [source_code.cpp](src/source_code.cpp), which demonstrates insertion, search, and deletion operations on sample elements. For details on running this code and its output, see the section below. |

## Running [source_code.cpp](src/source_code.cpp) 🏃‍♂️

To run the source code, navigate to the `src` directory and use the following commands:

```bash
g++ source_code.cpp
./a.out
```

### Sample Output

```
Skip list entries from bottom to top:
Level 0 : 12 
Level 1 : 12 

Skip list entries from bottom to top:
Level 0 : 10 12 
Level 1 : 12 

Skip list entries from bottom to top:
Level 0 : 10 11 12 
Level 1 : 12 

Skip list entries from bottom to top:
Level 0 : 3 10 11 12 
Level 1 : 12 

Search 2: 0
Search 7: 0
Search 3: 1
Search 10: 1
Search 11: 1
Search 12: 1
Search 28: 0

After removing 11
Skip list entries from bottom to top:
Level 0 : 3 10 12 
Level 1 : 12 

After removing 3
Skip list entries from bottom to top:
Level 0 : 10 12 
Level 1 : 12 

After removing 12
Skip list entries from bottom to top:
Level 0 : 10 

After removing 10
Empty skip list
```

**Note:** Since a skip list is a randomized data structure, its layout may vary with each execution. This is part of its design, providing efficient average-case performance.

## Comparing Skip List with C++ `set` 📊

### How to Run the Comparison

1. **Run the Comparison Script**: Navigate to the `skipList_vs_set` directory and use the command:
   ```bash
   make all
   ```
   You'll be prompted to enter the number of operations to test. For example, entering `10000` runs the test with 10,000 operations.
   
   ![](skipList_vs_set/images/running1.png)

2. **Correctness Check**:
   - A random generator script ([generate_input.py](skipList_vs_set/helper/generate_input.py)) creates input data for both the skip list and the `set`.
   - The `diff` command checks for any discrepancies between the outputs of the skip list and the `set`.

3. **Performance Comparison**:
   - The same random generator is used to measure execution time for both data structures with varying operation counts.
   - A plot is generated to visually compare the performance of the skip list and the `set`.

### Observations and Results 🏅

- **Correctness**: No output differences found! This indicates that my skip list implementation works as expected, matching the functionality of the `set`.
  
  ![](skipList_vs_set/images/running2.png)

- **Performance**: The time taken by the skip list is comparable to the `set` in C++! This shows the efficiency of the skip list.

  ![](skipList_vs_set/images/comparision.png)

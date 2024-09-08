# Skip List in C++ 🚀

Welcome to my repository! Here, you’ll find my implementation of a **Skip List**, an advanced randomized data structure, in C++. This project includes a comparison of its performance and correctness against the C++ `set` container. This README will guide you through the project, providing an introduction to skip lists, instructions for running the code, and insights from the performance analysis. I hope you find it informative and enjoyable! 🎉

Happy Coding! 💻✨

## What is a Skip List? 🤔

A **Skip List** is a probabilistic data structure that allows for fast search, insertion, and deletion operations. It serves as an alternative to balanced trees (like AVL or Red-Black trees) and provides \(O(\log n)\) average time complexity for these operations, where \(n\) is the number of elements in the list.

### How Skip Lists Work

A skip list consists of multiple layers of linked lists. The bottom layer is an ordinary sorted linked list, and each higher layer acts as an "express lane" for faster access, containing a subset of the elements from the layer below.

Here’s how the levels are organized:

1. **Level 0**: The base level containing all elements in sorted order.
2. **Higher Levels**: Each higher level contains fewer elements than the level below, typically every second element, providing a fast path through the list.

When searching for an element, you start at the topmost level and move forward until you find a node whose next node is greater than the target element or reach the end. Then, drop down a level and continue until you reach the base level. This multi-level structure allows you to skip large portions of the list, leading to faster searches.

### Key Features of Skip Lists

- **Randomized Structure**: Skip lists use randomization to balance elements across different levels, eliminating the need for complex rotations.
- **Flexibility**: Their randomized nature ensures good average-case performance without strict balancing rules.

## Table of Contents 📜

| Section | Description |
|:--------|:------------|
| [include](include/) | Contains the header file [skip_list.h](include/skip_list.h), which provides my **circular** implementation of the skip list. This header can be included to use the skip list as a library/API. |
| [skipList_vs_set](skipList_vs_set/) | Contains scripts to compare the outputs and execution times of the C++ `set` and my skip list implementation. For more details, see [this section](#skiplist_vs_set). |
| [src](src/) | Includes [source_code.cpp](src/source_code.cpp), which demonstrates insertion, search, and deletion operations on sample elements. |

## Implementation Methodology 🧠

### Key Characteristics of the Implementation

1. **Circular Structure**: The skip list is implemented as a circular linked list at each level, enhancing traversal efficiency and cache locality.
2. **Randomized Level Assignment**: Levels are assigned randomly during insertion, achieving average time complexity of \(O(\log n)\) for operations.
3. **Efficient Operations**: Supports efficient insertion, deletion, and search operations.

### Advantages of This Implementation

- **Performance**: The circular and randomized nature ensures high efficiency, often matching or exceeding the performance of complex data structures.
- **Versatility**: Easily adaptable for various applications.

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

**Note:** The skip list layout may vary with each execution due to its randomized nature, but it provides efficient average-case performance.

## Comparing Skip List with C++ `set` 📊

### How to Run the Comparison

1. **Run the Comparison Script**: Navigate to the `skipList_vs_set` directory and use:
   ```bash
   make all
   ```
   Enter the number of operations to test (e.g., `10000`).

2. **Correctness Check**:
   - Input data is generated using [generate_input.py](skipList_vs_set/helper/generate_input.py).
   - The `diff` command checks for discrepancies between the skip list and `set` outputs.

3. **Performance Comparison**:
   - Execution times are measured and plotted to compare performance.

### Observations and Results 🏅

- **Correctness**: No discrepancies found between skip list and `set` outputs.
  
  ![](skipList_vs_set/images/running2.png)

- **Performance**: The skip list's performance is comparable to the C++ `set`.

  ![](skipList_vs_set/images/comparision.png)

## Skip List vs Set Performance Benchmark

This benchmark compares the execution times of Skip List and Set across 10,000 test cases, measuring how closely their performances align.

### Benchmark Details

- **Number of Tests**: 10,000
- **Input Generation**: Using `helper/generate_input.py`.
- **Measurement**: Times measured in nanoseconds with the `date` command.
- **Tools Used**:
  - **Binaries**: `skip_list.out` and `set.out`
  - **Helper Scripts**: `generate_input.py` and `plot_time.py`

### Closeness Calculation

Closeness between Skip List and Set times is calculated using:

```
closeness = (1 - abs(t1 - t2) / max(t1, t2)) * 100
```

Where:
- `t1`: Time taken by Skip List.
- `t2`: Time taken by Set.

### Results

- **Average Closeness**: `91.74%`
- **Median Closeness**: `93.17%`

This indicates that the Skip List and Set implementations have similar performance, with an average closeness of about 91.74%.

### Why Use Skip Lists?

- **⚡ Efficiency**: Provides fast average-case performance for search, insertion, and deletion.
- **🛠️ Flexibility**: Easily adaptable with good performance due to its randomized nature.
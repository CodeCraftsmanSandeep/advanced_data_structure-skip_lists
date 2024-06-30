## Table of contents

| | description |
|:--|:---|
| [include](include/) | Contains a header file [skip_list.h](include/skip_list.h) which contains my skip list implementation. This header file can be included to use skip list (just as library/API). This provides a nice way of abstracting things while using complicated logic. If you are wondering what is skip list, see this [MIT lecture](https://www.youtube.com/watch?v=2g9OSRKJuzM&t=1780s).
| [skipList_vs_set](skipList_vs_set/) | Contains script to compare the outputs and execution time of C++ set an my implementation skip list(which is cool!). For more details about what is done in [skipList_vs_set](skipList_vs_set/) see  [skipList_vs_set/readme.md](skipList_vs_set/readme.md)|
| [src](src/) | |


## Running [source_code.cpp](src/source_code.cpp)

Go inside src directory and run the following commands
```
$ g++ source_code.cpp
$ ./a.out
```

Output:
```
Skip list entries from down to top:
Level 0 : 12 
Level 1 : 12 

Skip list entries from down to top:
Level 0 : 10 12 
Level 1 : 12 

Skip list entries from down to top:
Level 0 : 10 11 12 
Level 1 : 12 

Skip list entries from down to top:
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
Skip list entries from down to top:
Level 0 : 3 10 12 
Level 1 : 12 

After removing 3
Skip list entries from down to top:
Level 0 : 10 12 
Level 1 : 12 

After removing 12
Skip list entries from down to top:
Level 0 : 10 

After removing 10
Empty skip list
```

Note:
```As a skip list is a randomized data structure, its structure may vary with each execution of the code.As skip list is randomized data structure the structure of skip list need to be same always when you run the code!!```

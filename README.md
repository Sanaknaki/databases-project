
# Databases 2 Project
Project for a Databases2 (CSI3130), built using C.
## INFORMATION

```c
// Contributors
String ali = 'https://github.com/Sanaknaki';
String karim = 'https://github.com/KarimChukfeh';
String abdulwahab = 'https://github.com/Abdulwahaab710';

// Language
bool c = true;

// Need PostgreSQL
bool prostgreSQL = true;
```

```c
// Project Description

/*
 * In this assignment, you are to implement the symmetric hash join 
 * to replace the traditional hash join. 
 * You should alter the necessary files/functions to achieve all requirements. 
 * The assignment can be divided into subtasks as follows:
 */

/* 
 * Change the optimizer so that both the inner and outer relations are first 
 * processed by hash nodes before being processed by the hash join operator. 
 * In the current implementation, only the inner relation is hashed, as described in Section 2. 
 * The hashing nodes is necessary to incrementally retrieve a tuple from each relation, 
 * insert it into the corresponding hash table and return it to the hash join node. 
 * This effect can be implemented by modifying the function that creates the hash join node in the 
 * planner component, which can found in the file createplan.c. (10%)
 * Modify the hashing algorithm to support pipelined execution instead of the multi-tuple execution 
 * mode that is currently implemented. This means that you will need to implement the ExecHash function,
 * which currently returns an error message to indicate that this execution mode is not supported. (20%)
 */

CSI 3530 – Databases II Spring 2007
• For this assignment you can disable the use of multiple batches, i.e. you may assume that the whole
hash table consists one batch that is resident in memory for the duration of the join processing. Modify
the file nodeHash.c to achieve this. Note that related code in nodeHashjoin.c that handles saving
and retrieving tuples to temporary batch files can now be discarded. (0%)
• Modify the structure of HashJoinState to support the symmetric hash join algorithm by altering
the file execnodes.h. You need to replicate the existing structures to support bi-directional probing.
(10%)
• Replace the hash join algorithm with the symmetric hash join. This algorithm should be implemented
in nodeHashjoin.c. After completing the join operation, your operator should print the number of
resulting tuples that were found by probing inner hash table and outer hash tables, respectively. (60%)
• Disable other join operators (i.e. merge join and nested loop join) to force the query optimizer to use the
symmetric hash join operator. This can be done by modifying the configuration file postgresql.conf
which can be found in the database directory. (0%)
You can test that the symmetric hash join is working properly by comparing the tuples resulting from an
arbitrary join query before and after the modification. You can use the provided test case from the course
web site to test your implementation.

## Task 1

Command:
awk 'NR>1 {count++} END {print count}' Lab03-data.csv

Result:
322

Explanation:
The condition NR>1 skips the header line. The variable count is incremented for each record in the file, and the END block prints the total number of submissions.

## Task 2

Command:
awk 'NR>1 {seen[$1]=1} END {print length(seen)}' Lab03-data.csv

Result:
14

Explanation:
An associative array named seen is used with the student name as the index. Each student is stored only once, and the length(seen) function returns the total number of distinct students in the file.

## Task 3

Command:
awk '$3=="FINAL" {printf "%-10s %3d\n", $1, $4}' Lab03-data.csv

Result:
Jackson    169
Kenji      162
Shane      193
Noah       116
Lucia      200
Priya      159
Andrew     123
Diana      152
Maria      152
Eliza      141
Tomas      163
Sam        152
Ava        172
Chelsey    142

Explanation:
The condition $3=="FINAL" selects only the FINAL assignment records. The printf statement formats the output with the student name left-justified in 10 spaces and the score right-justified in 3 spaces.
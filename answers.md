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


## Task 4

Command:
awk 'NR>1 && $4 < 0.6*$5 {count++} END {print count}' Lab03-data.csv

Result:
50

Explanation:
The condition NR>1 skips the header line. The expression $4 < 0.6*$5 checks whether the score is below 60% of the maximum points for that assignment. Each failing submission is counted, and the END block prints the total number of failing submissions.

## Task 5

Command:
awk -f task5.awk Lab03-data.csv

Result:
Name Low High Average
Q06     8   20 14.71
L05    17   50 38.21
WS      2    5 4.21
L06    27   50 40.07
Q07    12   20 15.36
L07    21   50 38.43
H01    46  100 82.71
H02    55  100 77.57
H03    62  100 82.43
H04    32   97 72.93
H05    51  100 74.00
H06    37   98 74.21
H07    40  100 72.93
Q01     9   20 14.29
L01    27   50 40.21
Q02     9   20 14.86
L02    23   50 39.21
Q03     8   20 15.07
L03    19   50 36.57
Q04    13   20 16.43
FINAL 116  200 156.86
Q05     8   18 15.07
L04    25   50 40.36

Explanation:
Associative arrays indexed by the assignment name are used to store the minimum score, maximum score, total score, and number of submissions. The END block calculates the average score and prints the results using printf with two decimal places.

Script:
task5.awk
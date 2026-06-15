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

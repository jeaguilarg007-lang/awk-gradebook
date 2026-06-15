## Task 1

Command:
awk 'NR>1 {count++} END {print count}' Lab03-data.csv

Result:
322

Explanation:
The condition NR>1 skips the header line. The variable count is incremented for each record in the file, and the END block prints the total number of submissions.


# Jorge Aguilar
# Second Semester C
# Task 6: Per-student grade report

NR > 1 {
    score[$1] += $4
    maxscore[$1] += $5
}

END {
    printf "%-10s %-10s %s\n", "Name", "Percent", "Grade"

    for (name in score) {
        percent = score[name] / maxscore[name] * 100

        if (percent >= 90)
            grade = "A"
        else if (percent >= 80)
            grade = "B"
        else if (percent >= 70)
            grade = "C"
        else if (percent >= 60)
            grade = "D"
        else
            grade = "E"

        printf "%-10s %8.2f %6s\n", name, percent, grade
    }
}
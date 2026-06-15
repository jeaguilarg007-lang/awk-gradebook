#!/bin/bash
# Jorge Aguilar
# Second Semester C
# Task 5: Per-assignment report

BEGIN {
    print "Name Low High Average"
}

NR > 1 {
    name = $3

    if (!(name in min) || $4 < min[name])
        min[name] = $4

    if (!(name in max) || $4 > max[name])
        max[name] = $4

    sum[name] += $4
    count[name]++
}

END {
    for (name in sum)
        printf "%-5s %3d %4d %.2f\n", name, min[name], max[name], sum[name]/count[name]
}
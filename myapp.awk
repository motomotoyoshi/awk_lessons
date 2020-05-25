BEGIN {
    split("Gold Silver Bronze", ranks)
    print ranks[1]
    exit
}
NR < 4 {
    sum = 0
    i =4
    for (i = 4; i <= 7; i++){
        if ($i < 100) {
            # continue
            break
        }
        sum += $i
    }
    printf "Name: %-10s Sum: %10d\n", $3, sum
}
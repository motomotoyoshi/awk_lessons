NR < 4 {
    sum = getSum()
    rank = getRank(sum)
    printf "Name: %-10s Sum: %10d Rank: %-10s\n", $3, sum, rank
}

function getSum() {
    sum = 0
    i =4
    for (i = 4; i <= 7; i++){
        sum += $i
    }
    return sum
}

function getRank(sum) {
    split("Gold Silver Bronze", ranks)
    if ( sun > 1000) {
        rank = ranks[1]
    } else if (sum > 800) {
        rank = ranks[2]
    } else {
        rank = ranks[3]
    }
    return rank
}
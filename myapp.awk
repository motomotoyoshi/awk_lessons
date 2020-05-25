{
    sum = getSum()
    total[$3] += sum
}
END {
    for (name in total) {
        printf "Name: %-10s Total: %'10d\n", name, total[name]
    }
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
    # split("Gold Silver Bronze", ranks)
    ranks["first"] = "Gold"
    ranks["second"] = "Silver"
    ranks["third"] = "Bronze"
    if ( sun > 1000) {
        rank = ranks["first"]
    } else if (sum > 800) {
        rank = ranks["second"]
    } else {
        rank = ranks["third"]
    }
    return rank
}
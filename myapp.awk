BEGIN {
    total = 0
}
NR < 4 {  
    total += $4
}
END {
    print total
}
BEGIN {
    OFS = "@"
    ORS = "|"
}
NR > 5 && NR < 10 {
    print $3, $4
}
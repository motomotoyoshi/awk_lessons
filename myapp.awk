# ($3 == "taguchi") && ($4 > 100) {
#     print $3, $4
# }
$3 ~ /t.*/ {
    print $0
}
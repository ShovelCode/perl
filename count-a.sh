perl -ne '$c += tr/a//; END { print "$c\n" }' big.txt


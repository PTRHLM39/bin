#!/bin/awk -f
BEGIN {
    print "Skriv in ett tal";
}
{
    print "Roten ur ", $1, " är ", $1*$1;
    print "Skriv in ett annat tal";
}
END {
    print "Klart"
}

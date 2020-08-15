#!/bin/awk -f
BEGIN {
    rader=0;
    totalt=0;
}
{
    if ($1 != "totalt" ) rader++;
    totalt+=$1;
}
END {
    print rader " lästa rader";
    print "Totalt ", totalt;

    if (rader >  0 ) {
	print "Genomsnittet är ", totalt/rader;
    } else {
	print "Genomsnittet är 0";
    }
}

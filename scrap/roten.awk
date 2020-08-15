#!/bin/awk -f
BEGIN {
    i=1;
    for (i=1; i <= 10; i++) {
	printf "Roten ur ", i, " är ", i*i;
    }
    exit;    
}

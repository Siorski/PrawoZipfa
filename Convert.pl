#!/usr/bin/perl

while (<>) {
    s/<.*>//;               # usuwanie < >
    s/\[//g;                # usuwanie [ ]
    s/\]//g;
    $_=" $_ ";              
    tr/A-Z/a-z/;            # zamiana na małe litery
    s/([0-9]*)//g;          # usuwanie liczb
    s/ą/a/g;                # zamiana polskich znaków
    s/Ą/a/g;
    s/ć/c/g;
    s/Ć/c/g;
    s/ę/e/g;
    s/Ę/e/g;
    s/ł/l/g;
    s/Ł/l/g;
    s/ń/n/g;
    s/Ń/n/g;
    s/ó/o/g;
    s/Ó/o/g;
    s/ś/s/g;
    s/Ś/s/g;
    s/ż/z/g;
    s/Ż/z/g;
    s/ź/z/g;
    s/Ź/z/g;
    tr/a-z/ /cs;
    chop;
    print $_;
}
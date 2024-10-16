#!/usr/bin/env bash
cd lab0/

echo '1)'

wc -l $(grep -LEr '$x' . 2>&1 | grep -v 'Permission denied' | grep -E '(^|/)r[^/]*$') < /dev/null | sort -nr

echo '2)' # под вопросом

ls -ltu $(grep -LEr '$x' . 2>&1 | grep -v 'Permission denied' | grep -E '(^|/)m[^/]*$') /dev/null | grep -v '/dev/null' | head -n 3

echo '3)'

cat $(grep -LEr '$x' . | grep -E '(^|/)m[^/]*$') /dev/null | sort

echo '4)'

wc -m $(grep -LEr '$x' . | grep -E '(^|/)z[^/]*$') < /dev/null > /tmp/n4_4.txt
cat /tmp/n4_4.txt

echo '5)'

ls -lr $(grep -lr 'ro') /dev/null | grep -v '/dev/null' | tail -n 4 

echo '6)'

wc -m $(ls -LA1p ludicolo6/ 2>&1 | grep -v 'Permission denied' | grep '[^/]$') < /dev/null > /tmp/n4_6.txt
cat /tmp/n4_6.txt

cd ..

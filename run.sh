
runtest() {
    make 100mb;
    ./port-copy.rkt >> tests.csv;
    echo -n "," >> tests.csv;
    ./stream-copy.js >> tests.csv
    echo "" >> tests.csv;
    make clean;
}

for i in {1..10}
do
    runtest
done

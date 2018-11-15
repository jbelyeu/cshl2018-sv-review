#plot deletions with the trio
python ../samplot/src/samplot.py \
    -c 6 -s 67009228 -e 67049033 \
    -t DEL \
    -o DEL_6_67009228_67049033.png \
    -n "NA12878","NA12891","NA12892" \
    -b NA12878.bam NA12891.bam NA12892.bam

python ../samplot/src/samplot.py \
    -c 11 -s 4972926 -e 4973837 \
    -t DEL \
    -o DEL_11_4972926_4973837.png \
    -n "NA12878","NA12891","NA12892" \
    -b NA12878.bam NA12891.bam NA12892.bam

#plot duplication
python ../samplot/src/samplot.py \
    -c 10 -s 90795115 -e 90800286 \
    -t DUP \
    -o DUP_10_90795115_90800286.png \
    -n "Duplication" \
    -b NA12878.bam NA12891.bam NA12892.bam

#plot inversion
python ../samplot/src/samplot.py \
    -c 12 -s 12544792 -e 12546607 \
    -t INV \
    -o INV_12_12544792_12546607.png \
    -n "Inversion" \
    -b NA12878.bam NA12891.bam NA12892.bam\

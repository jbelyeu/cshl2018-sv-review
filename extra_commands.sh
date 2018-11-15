#plot deletions with the trio
python ../../samplot/src/samplot.py\
    -c 6 -s 67009228 -e 67049033\
    -t DEL\
    -o ~/public_html/DEL_6_67009228_67049033.png \
    -n "NA12878","NA12891","NA12892" \
    -b NA12878.bam NA12891.bam NA12892.bam \
    -A segdups_selfchain.bed.gz \
    -T Homo_sapiens.GRCh37.82.sorted.gff3.gz \
    -d 75 \
    -w 40000 \
    --end_ci 2000,2000 \
    --start_ci 1000,3000 \
    --common_insert_size

python ../../samplot/src/samplot.py \
    -c 11 -s 4972926 -e 4973837 \
    -t DEL \
    -o ~/public_html/DEL_11_4972926_4973837.png \
    -n "NA12878","NA12891","NA12892" \
    -b NA12878.bam NA12891.bam NA12892.bam\
    -A segdups_selfchain.bed.gz \
    -T Homo_sapiens.GRCh37.82.sorted.gff3.gz \
    -d 75 \
    -w 10000 \
    --end_ci 30,75 \
    --start_ci 45,30 \
    --common_insert_size \
    --hide_annotation_labels

#plot duplication
python ../../samplot/src/samplot.py \
    -c 10 -s 90795115 -e 90800286 \
    -t DUP \
    -o ~/public_html/DUP_10_90795115_90800286.png \
    -n "Duplication" \
    -b NA12878.bam NA12891.bam NA12892.bam\
    -A segdups_selfchain.bed.gz \
    -T Homo_sapiens.GRCh37.82.sorted.gff3.gz \
    -d 750 \
    -w 3000 \
    --end_ci 200,200 \
    --start_ci 100,300 \
    --common_insert_size

#plot inversion
python ../../samplot/src/samplot.py \
    -c 12 -s 12544792 -e 12546607 \
    -t INV \
    -o ~/public_html/INV_12_12544792_12546607.png \
    -n "Inversion" \
    -b NA12878.bam NA12891.bam NA12892.bam\
    -A segdups_selfchain.bed.gz \
    -T Homo_sapiens.GRCh37.82.sorted.gff3.gz \
    -d 75 \
    -w 1000 \
    --end_ci 200,200 \
    --start_ci 100,300 \
    --common_insert_size

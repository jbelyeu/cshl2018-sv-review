# Learn to review genomic regions with samplot
## Step 0: Learn about the data
Download the BAM and BED files from this repo. I like `wget`
```
man wget
```

You can use `wget` like this:
```
wget <some_url>
```

You could also clone this repository. It will come with all the data you need for these examples.

You almost always have to index BAMs before use. Remember how?

Load up the following in IGV once you've indexed the BAMs (`Load from URL` in IGV)
* NA12878.bam
* variants.bed

Choose IGV options to `View as pairs` and `Sort alignments by`->`insert size`
Refer to the cartoons in `cshl2018-sv-review/images/` to learn about the read evidence.

## Step 1: Get samplot
Clone samplot
```
git clone https://github.com/ryanlayer/samplot.git
```

## Step 2: Run samplot
Samplot requires a region and a BAM/CRAM file (we'll use BAMs today). It creates a static image file such as a .png, .jpg, or .pdf. Let's view a region by running the samplot Python script:
```
python samplot/src/samplot.py \
        -c 6\
        -s 66929228\
        -e 66960228\
        -b NA12878.bam\
        -o 6_66929228_66960228.png
```
Any missing dependencies? Try installing with `pip`

## Step 3: Some real examples (or are they?)
Plot the other variants we looked at in IGV and take a look at the results. 
### Questions:
* Which look real and which look like false positives?
* What's the pattern of inheritance for each?
* What types of evidence exist for each?

## Step 4: Advanced options:
* Samplot help
* Downsampling
* Window size
* Confidence intervals
* Common insert size
* Repeat annotation (segmental duplications)
* Gene annotation

To work with annotations, you'll need to download and index them. The GFF will also need to be sorted.
```
bedtools sort -i Homo_sapiens.GRCh37.82.gff3.gz | bgzip > Homo_sapiens.GRCh37.82.sorted.gff3.gz
tabix -p gff Homo_sapiens.GRCh37.82.sorted.gff3.gz
tabix -p bed segdups_selfchain.bed.gz
```

## Extra resources
### Direct measurement of de novo structural variation
Slides [here](https://docs.google.com/presentation/d/1cyAYVkh-S0xFBgzQa1r-qhOJm3krG8aRCGxjqFil7PA/edit?usp=sharing)

### PlotCritic site
[CSHL Genome-in-a-Bottle site](http://cshl-giab-plotcritic-bucket.s3-website-us-east-1.amazonaws.com/)

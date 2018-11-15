# Learn to review genomic regions with samplot
## Step 1: Get samplot and some test files
Note: This isn't meant as a tutorial, just a set of instructions. I hope by this point in the course you'll all have the expertise to figure out the pieces I'm leaving out, with a little help.

Clone samplot to a reasonable location (AWS instance is probably your best bet)
```
git clone https://github.com/ryanlayer/samplot.git
```
Download the BAM files from this repo. I like `wget`
```
man wget
```

You can use `wget` like this:
```
wget <some_url>
```

You almost always have to index BAMs before use. Remember how?

## Step 2: Run samplot
Samplot requires a region and a BAM/CRAM file (we'll use BAMs today). It creates a static image file such as a .png, .jpg, or .pdf. Let's view a region by running the samplot Python script
```
python samplot/src/samplot.py \
        -c 6 \
        -s 66929228 \
        -e 66930228 \
        -b cshl2018-sv-review/NA12878.bam \
        -o 6_66929228_66930228.png
```

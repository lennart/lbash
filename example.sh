# Simple live dynamic range compression, loops through wav files in folder and applies a compressor
# This example need the `sox` utility, install via `apt-get install sox` or `brew install sox`
# To run it use `lbash /path/to/example.sh` in a folder that contains some wave files
for f in $(ls *.wav);
do
    play "$f" compand 0.001,0.005 -70,-20 -4 -90;
done

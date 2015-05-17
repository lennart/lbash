# lbash
Live Bash Coding Environment

## Installation

Clone this repository and symlink lbash into your `$PATH`
```shell
git clone https://github.com/lennart/lbash.git
cd lbash
ln -s `pwd`/lbash ~/bin
```
In this case it is assumed that `~/bin` is in your `$PATH` (check via echo $PATH)

## Usage

you can try out the example that ships with `lbash`. Therefore you will need to install `sox`, a simple audio player/recorder with effects. Depending on your operating system use `apt-get` or `homebrew`, e.g.:

```shell
brew install sox
```
for OS X

```shell
apt-get install sox
```
for Debian

With this you can now start live coding, run `lbash` from within a folder containing `.wav` files, we assume it's called `samples` and `lbash` source is in `~/lbash`:

```shell
cd samples
lbash ~/lbash/example.sh
```

The current shell window will now block and loop over each `.wav` file playing it with a compressor applied.
To change the parameters (or the whole script) start editing the file.

Upon saving the file changes will affect the next loop. e.g. add a delay for the compressor by append `0.1` to the end of the line starting with `play`:

```shell
for f in $(ls *.wav);
do
    play "$f" compand 0.001,0.005 -70,-20 -4 -90 0.1;
done
```

Happy experimenting!

### Known Bugs & Limitations

If you are familiar with bash scripting, it should be very straightforward to read the `lbash` source. `lbash` evaluates a given script and then does it again, infinitely.
If you put in bugs into your script, it will crash `lbash`. Depending on your script, execution might take longer than expected, so if you want realtime beat sync, this might not be what you want.



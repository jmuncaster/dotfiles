# Plugin-specific setup

Run download.sh to clone git plugins

## YouCompleteMe

Install node: [see here](https://nodejs.org/en/download/package-manager/#debian-and-ubuntu-based-linux-distributions)
Install cmake: `sudo apt install cmake`
Install python dev libs: `sudo apt install python-dev`

```
cd YouCompleteMe
git submodule update --init --recursive
python install.py --clang-completer --tern-completer
```


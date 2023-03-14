## Useful commands

### Check who is using apt
```
ps aux | grep -i apt
```

### Tar commands

```
# create (c for create, v for verbose, f for filepath)
tar -cvf filename.tar dir_to_compress

# create .tar.gz (the same as .tgz)
tar cvzf filename.tar.gz dir_to_compress

# untar .tar files (it also works with .tar.gz and .tar.bz2)
tar -xvf filename.tar [-c optional_directory]

# list tar content file (it also works with .tar.gz and .tar.bz2)
tar -tvf filename.tar

# extract file(s) from .tar file
tar -xvf filename.tar filename.ext
# OR
tar --extract --file=filename.tar filename.ext

# extract file(s) from .tar.gz
tar -zxvf filename.tar.gz filename.ext [file2, file3, ...]
# OR
tar --extract --file=filename.tar.gz filename.ext [file2, file3, ...]

# extract file(s) from .tar.bz2
tar -jxvf filename.tar.bz2 filename.ext [file2, file3, ...]
# OR
tar --extract --file=filename.tar.bz2 filename.ext [file2, file3, ...]

# The extract commands have an optional flag called wildcard
--wildcards '*.php'

```
[More info at this link](https://www.tecmint.com/18-tar-command-examples-in-linux/)

## Useful commands

### Check who is using apt
```
ps aux | grep -i apt
```

### Hardware stuff
```
# check usb ports speed
sudo lsusb -vvv |grep -i -B5 -A5 bcdUSB
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


### Apache web server
```
# check if the service is already running
sudo service apache2 status

# stop it
sudo service apache2 stop

# visual interface
sudo /opt/lampp/manager-linux-x64.run
```

### Rename all *.txt to *.js
```
for file in *.txt; do
    mv -- "$file" "${file%.txt}.js"
done
```


### Git commands
```
# Ignore local changes on file
git update-index --assume-unchanged filename

# Create a new branch from commit and changing into it
git checkout -b NEW_BRANCH_NAME COMMIT_ID

# Ignore local changes for file
git update-index --assume-unchanged filename

# Revert previous command
git update-index --no-assume-unchanged filename

# Get list of files ignored locally but not by .gitignore
git ls-files -v | grep '^h'

# Reset last commits
git reset --soft HEAD~n # where n is the number of commits to reset
```

### Grep commmands
```
# Search word into a file
grep "word" filename

# Search word into terminal history
history | grep "word"
```

### Grep flags
```
-i ignore case
-R looks recursively into directory and subdirectories
-c display count of matches
```
[More info at this link](https://www.cyberciti.biz/faq/howto-use-grep-command-in-linux-unix/)

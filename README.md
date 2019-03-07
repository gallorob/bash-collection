# bash-collection
A collection of bash scripts

### portStatus
Purpose: show status of given port

Usage: `./portStatus.sh portNumber`

Example run:
```
$ ./portStatus.sh 53
Status port 53: LISTEN
```


### gitManager
Purpose: clone or pull a GitHub repository (keeping it up to date)

Usage: `./gitManager.sh userName repositoryName`

Example run:
```
$ ./gitManager.sh gallorob sisop_program
[WARN] Folder sisop_program doesn't exist; creating and cloning repository...
Cloning into 'sisop_program'...
remote: Enumerating objects: 9, done.
remote: Total 9 (delta 0), reused 0 (delta 0), pack-reused 9
Unpacking objects: 100% (9/9), done.
[INFO] All done.
```
```
$ ./gitManager.sh gallorob sisop_program
[INFO] Folder sisop_program found.
[INFO] Folder sisop_program contains a valid GitHub repository.
Already up to date.
[INFO] All done.
```

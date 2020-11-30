# SHA-1 
This is just an implementation of SHA-1 hashing algorithm done in ruby. If your machine is 64-bit then it gives a 80 letter long hash, and if it is 32-bit then it should give a 40 bit hash, but i haven't tested this on a 32-bit machine so i can't guarantee it. It definitely works on a 64-bit machine anyway. 
## to run
```shell
$ ruby main.rb
```
It then prompts you to give it a string to hash. You can give it the text from a text file by running the following
```shell
$ ruby main.rb <filename>
```
It does not work if you give it a non-text file, like a pdf or something, so don't try that. Or try it, doesn't matter.

## TODO
- Add an option to salt the hash? ill see if i feel like doing it.
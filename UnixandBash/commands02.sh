01. cat 
Used to concat everything inside a file and show in the terminal
ex: cat movies.txt

02. less
Same as cat but separes in pages and show in a different window. 
Inside less can do search using:
    /value (press enter). Press q to exit.

03 - grep 
Looks Like less command. Filter.
grep value file (can be used -i to be non case sensitive). 
        Other commands: 
        -v (everything that does not correspond to the search)
        -n (select the line)
        -c (how many times repeat)

03. head
Same as cat but show just the 10 firsts by default. 
Can be personalized to other amount of values (ex: head -5 movies.txt)

04. tail
Same as head but to the lasts values.

05. wc
How many characters, words and lines have in some file.
ex: wc movies.txt
can be used with -l (to lines), -w (to words), -c (characters)

06 - vim.
Open file in the directory. Once you opened a file with vim you can insert text 
by typing i, for instance. If you want to save your file use :w (write) or 
:q (quit) or :wq (for write and quit) or :q! (quit and do not save). 
Sometimes you need to hit the ESC key to be able to type the commands.
### SHOW LINE NUMBERS
:set number
:set nonumber
### NAVIGATE FILE
50%
H,M,L on visible screen
gg -- G
half screen CTRL-D, CTRL-U
oneline CTRL-E, CTRL-Y
wholescreen CTRL-F, CTRL-B
context for end of screen zz
marks -- in normal 'm[lowercase]' places a mark under the cursor
:marks lists all marks (http://vim.wikia.com/wiki/Using\_marks) 
### NAVIGATE LINE
start of word w/W --> <--- b/B
end of word e/E --> <--- ge/gE
### SEARCH
parathesis % (:set matchpairs?)
search letter, land on letter f ---> <--- F
search letter, land before letter t --> <-- T
repeat search ; or ,
search pattern /pattern ---> <----- ?pattern; n/N for next/previous
search pattern begin/end only: use \< pattern \>
:set ignorecase?
search word under cursor \* --> <--- #; partial word g\* --- g#
regex -- word at beginning of line ^pattern ; end of line pattern$
-- any character use . ("m.s" matches must but not matches)

### SELECTING TEXT
v - visual mode
V - visual line mode
CTRL-V - visual block mode
o,O move to other side/end of selection
as,is -- a sentence and inner sentence
daw -- delete a word including white space
~ -- changes case of character/s selected
I - start insert at next blank line
A - start insert at end of line

### OPERATOR SUMMARY 04.10
x	delete character under the cursor (short for "dl")
X	delete character before the cursor (short for "dh")
D	delete from cursor to end of line (short for "d$")
dw	delete from cursor to next start of word
db	delete from cursor to previous start of word
diw	delete word under the cursor (excluding white space)
daw	delete word under the cursor (including white space)
dG	delete until the end of the file
dgg	delete until the start of the file

## COMEBACKTO

6 - syntax highlighting (usr\_44.txt)

```
*04.3*	Repeating a change

The "." command is one of the most simple yet powerful commands in Vim.  It
repeats the last change.  For instance, suppose you are editing an HTML file
and want to delete all the <B> tags.  You position the cursor on the first <
and delete the <B> with the command "df>".  You then go to the < of the next
</B> and kill it using the "." command.  The "." command executes the last
change command (in this case, "df>").  To delete another tag, position the
cursor on the < and use the "." command.

			      To <B>generate</B> a table of <B>contents ~
	f<   find first <     --->
	df>  delete to >	 -->
	f<   find next <	   --------->
	.    repeat df>			    --->
	f<   find next <		       ------------->
	.    repeat df>					    -->

The "." command works for all changes you make, except for the "u" (undo),
CTRL-R (redo) and commands that start with a colon (:).

Another example: You want to change the word "four" to "five".  It appears
several times in your text.  You can do this quickly with this sequence of
commands:

	/four<Enter>	find the first string "four"
	cwfive<Esc>	change the word to "five"
	n		find the next "four"
	.		repeat the change to "five"
	n		find the next "four"
	.		repeat the change
			etc.
```


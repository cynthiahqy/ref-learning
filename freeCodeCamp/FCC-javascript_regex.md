
https://beta.freecodecamp.com/en/challenges/regular-expressions/using-the-test-method

Fri  7 Jul 2017 [3hrs]

Javascript methods
----
regEx.test(Str) 
:returns True or False if pattern is found

Str.match(regEx)
:returns matches found

Str.replace(regEx, replacementText)
:replaces all matches with replacementText


Example Patterns
----
/word/
: case sensitive, exact matching literal patterns

/pattern | pattern | pattern/ 
: OR

Character Sets
----

[a-z0-9]
:character set or class

.
: any ONE character, wildcard

[^a-z@]
:negated character set

\w \W
: [A-Za-z0-9] [^A-Za-z0-9]

\d \D
: [0-9]

\s \S
: [ \r\t\f\n\v]

Search operators
----

+
: match preceeding character or group once or more

* 
: match preceeding character, group zero or more

{m}
: match exactly m repetitions of preceeding character

{m,n}
: match at between m-n repetitions of preceeding character, where n can be left blank for unbounded upper limit

?
: optional character/group

^
: only match proceeding pattern at beginning of string

$
: only match preceeding pattern at end of string

(?=pattern) (?!pattern)
: positive and negative lookarounds, searched but not returned in match capture

(pattern)
: capture group

\1
: insert first capture group



Flags
----
/g
: global search, not just first instance

/i
: ignore case

Exercises
----

### lazy matching
[Regular Expressions: Find Characters with Lazy Matching](https://beta.freecodecamp.com/en/challenges/regular-expressions/find-characters-with-lazy-matching)

greedy
: matches longest string it can find

lazy 
: matches shortest string

```javascript
Str = "titanic"
greedyEx = /t[a-z]*i/ // returns "titani"
lazyEx = /t[a-z]*?i/ // returns "ti"
```

### restrict username

[Regular Expressions: Restrict Possible Usernames](https://beta.freecodecamp.com/en/challenges/regular-expressions/restrict-possible-usernames)


1) The only numbers in the username have to be at the end. There can be zero or more of them at the end.

2) Username letters can be lowercase and uppercase.

3) Usernames have to be at least two characters long. A two-letter username can only use alphabet letter characters.

```javascript
let username = "J2";
let userCheck = /^[a-z]{2,}\d*?$/i; // Change this line
let result = userCheck.test(username);

// ^[a-z]{2,} matches at least 2 alphabet letters at the start
// \d*?$ optional sequence of numbers comes after alphabet sequence of 2 or more AT END ONLY
```

### search repetitions

https://beta.freecodecamp.com/en/challenges/regular-expressions/specify-exact-number-of-matches

```javascript
/tim{4}ber/ // matches timmmmber
/tim{1,2}ber/ // matches timber or timmber
/tim{5,}ber/  // matches timmmmmber or longer
```

### optional characters ?

https://beta.freecodecamp.com/en/challenges/regular-expressions/check-for-all-or-none

```
/favou?rite/ // matches favorite and favourite
```

### look arounds

https://beta.freecodecamp.com/en/challenges/regular-expressions/positive-and-negative-lookahead 

```javascript
let sampleWord = "astronaut";
let pwRegex = /(?=\w{5,})(?=\S*\d{2,})/; // Change this line
let result = pwRegex.test(sampleWord);
```

### trim whitespace

https://beta.freecodecamp.com/en/challenges/regular-expressions/remove-whitespace-from-start-and-end  

Can also use .trim() method on Str

```
let hello = "   Hello, World!  ";
let wsRegex = /^\s*|\s*$/g; // Change this line
let result = hello.replace(wsRegex,''); // Change this line
```

https://regexone.com/lesson/introduction

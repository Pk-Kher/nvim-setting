rm -rf ~/.local/share/nvim
:so in vim to source the init.lua

3 modes
- normal - ctrl+c
- visual -  
- insert - i

Move around with the "hjkl" keys.
h -> left
j -> down
k -> up
l -> right

- copy normal mod then "y"
- Just a single "p" (for paste).
- cut using "d"


press "/" normal mode
    /mySearchText
    n	Jump to the next match (forward)
    N	Jump to the previous match (backward)
    :noh + <Enter>	Clear the highlights (nohlsearch)
    ?mySearchText	Search backward instead of forward

find in the current line use fFtT
f{char}  → move cursor forward and land ON the next {char}
t{char}  → move cursor forward and stop BEFORE the next {char}

F{char}  → move cursor backward and land ON the previous {char}
T{char}  → move cursor backward and stop AFTER the previous {char}

;  → repeat last f/t/F/T in same direction
,  → repeat last f/t/F/T in opposite direction

search in file "leader+/" then type
global search leader+sg
find and replace
:s/<search_phrase>/<replace_phrase>/options 
options
g  - global
gi - Case-Insensitive
- w/W - next word
- b/B (back) to jump to the beginning of a word backwards
- e/E (end) to jump to the end of a word
- ge/gE to jump to the end of a word
- $ to end of line
ex:2
"AWS_REGION": "asdf",
:'<,'>s/:\s*".*"/: "string"/g
: → matches the key/value separator
\s* → allows optional spaces
".*" → matches any existing string value
: "string" → replaces only the value
'<,'> → limits replacement to the selected area



leader+sf search file
leader+sr search where you left off
leader+space buffer file
leader+ds open terminal or cmd
exit "ctrl+\+n"

Ctrl + W	Delete previous word
Ctrl + U	Delete everything before cursor on the line
Ctrl + H	Backspace (1 character)
Ctrl + O	Run one Normal mode command, then return to Insert mode
D           cut word till end of line	


:set spell 
:set nospell
"]s"	Go to next misspelled word
"[s"	Go to previous misspelled word
"z="	Show spelling suggestions
zg	Add word to good list (ignore it)
zw	Mark word as bad (undo zg)
zug / zuw	Undo previous zg / zw


comment using visual mode then "gc"

select then U for uppercase u for lower case

K to view the definition of the function
C-y to complete selection from suggestion
<C-n>	Select next completion item
<C-p>	Select previous completion item
<C-y>	Accept the current completion item
<C-e>	Cancel the popup

dw	Delete from cursor to end of word
daw	Delete a word (including spaces)
diw	Delete inner word (just the word, no space)
cw	Change word (delete + enter insert mode)

za- fold current
zA- unfold current
zi-toggle file fold
zm / zr	Increase/decrease fold level
:set foldlevel=0	Close everything (aggressively)

grr - open telescope for list all definition
gri - goto file definition
<C-t> go back

grn - rename variable

In Vim, you can delete all text inside quotes ("") or curly braces ({}) using the "text object" commands.
-di"
-di{
-di'

-da" -delete with "
- normal mode "ct <any text>" it will delete and put you in the insert mode
- normal mode "23d" it will delete from line current cursor to line 23


-Jumping to specific locations:
    -gg: Moves the cursor to the first line of the file.
    -G: Moves the cursor to the last line of the file.
    -[number]G: Moves the cursor to the specified line number.
    -/pattern: Searches for a pattern and moves the cursor to the first match.
- Ctrl-u: Scrolls the screen up half a page.
- Ctrl-f: Scrolls the screen down a full page.

- Ctrl w v split line vertical ans s for horizontal
- <C-^> to move prev file
-  ctrl q quick fix list :cnext :cprev you can bind with C-j and C-k

- For most common multi-line edits (like commenting/uncommenting, adding characters, etc.), Visual Block (Ctrl+v) + I/A + Esc is the fastest.
- Press Shift+V to select whole lines.

- new file using :new
- new file verical :vnew
- save file :w path/to/file.txt



- ohmyzsh use instead of bash
- tmux use for multiple terminal
- zsh-autosuggestions // use this to auto complete for zsh
- use opencode for the agent
- use fzf for the search


<!-- ShowMeTheKey -->
install manually in ubuntu
showmethekey-gtk


tonsky / FiraCode use this font




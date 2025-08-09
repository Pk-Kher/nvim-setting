rm -rf ~/.local/share/nvim

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
<!-- tmux -->

ctrl+b then c create new terminal
ctrl+b then 1-2-3-4 navigate between terminal

ctrl+b then "[" to enter select mode "q" for normal

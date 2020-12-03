# better-asterisk-remap.vim

A simple remap of the `*` key in NORMAL and VISUAL modes. 

Differences:
- Does not jump to the next found instance
- In NORMAL mode, pressing `*` will search for the word the cursor is resting on, separated by word boundaries. (Meaning, if you hit `*` while resting on `bar`, it will not match with `bartender`.)
- In VISUAL mode, pressing `*` will search for the exact text that is selected (including special characters like spaces.)

To install: 
- Using [vim-plug](https://github.com/junegunn/vim-plug): `Plug 'yogeshdhamija/better-asterisk-remap.vim'`
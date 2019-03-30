## I. Vim version
There are many different version of vim. To get most of the function, there are two things that are supposed to be supported from vim.
1. Run ```vim --version |grep"clipboard"``` in terminal. If you see ```-clipboard```, it indicates that current vim does not support using clipboard from the system. In linux, this can be resolved by installing vim-gnome, ```sudo apt-get install vim-gnome```. If ```set clipboard=unnamed``` is added in vimrc file, you are allowed to copy and paste using OS clipboard in vim.
2. Run ```vim --version | grep python``` in terminal. If you see ```+python3```, it means it has python3 integrated. Some plugins may require such support. This is default implementation in vim 8.1.

## II. Buffer, tab and window
Buffer, tab and window has different roles in vim. Buffers are a bunch of files loaded in memory. In other words, they can be "hidden" and not touchable. But you can edit buffer and save it. In that case, buffer has no difference with tab or window--representing a file in a "window" or a "tab". However, when you have more than one file to be edited. Three concepts start to split with distinct definitions. It is not necessary to have one-to-one correspondence between a buffer and a window. Window is regarded as a "viewport" onto a single buffer. Buffers become concrete and visible(opposite to hidden) once being loaded onto a window. And tab is a just a collection of one or mmore windows. If you are still struggling with the concepts, think about their functionalities. Without buffer, tab and window are exactly the same thing as they appear in web browser, file explorer and etc. Vim just provides a less ambiguous way of interpreting the process of dealing with text: load the file from hard drive to memory and then representing it via ad-hoc viewport. To make it short,
```
A buffer is the in-memory text of a file.
A window is a viewport on a buffer.
A tab page is a collection of windows.
```
Below, basic moves of using buffer, tab and window will be given.

### 1. Buffer
Again, it is not necessary to remove hidden buffers, as they do not occupy much resources. They are just loaded files in the background.
* To add files as buffers, run ```vim file1 file2``` in terminal, or ```:e[dit] file``` and ```:badd file``` in vim
* To list all buffers: ```:ls``` or ```:buffers``` 
* Discard buffers: ```:bd[elete]``` or ```!bd```if changes need to be disgarded. Unload buffer ```:bunload```
* Switch between buffers: ```ctrl + i``` or ```:bn```jump forward,  or ```ctrl + o``` or ```:bp``` jump backward
* Go to the #-th buffer(index is give by ```:ls```), ```:b#```
* Map all buffers onto windows in the current tab, ```:ba[ll]```

### 2. Tab
* Open files in tabs: ```vim -p file1 file2```
* Create and close tabs in current tab, ```:tabnew file```and ```:tabc[lose]```. Close all other tabs, ```:tabo[nly]```.
* Switch tabs: ```gt```forward and ```gT```backward. ```#gt``` goes to #-th tab.
* Running ```:tabs``` shows all tabs
* Put all buffers in individual tabs: ```tab ball```

### 3. Window
* Vertically split windows ```vim -o file1 file2``` 
* Horizontally split windows ```vim -O file1 file2``` 
* Close windows
    1. keep only the current window ```:only``` 
    2. close current window ```:close``` 
    3. close all windows and quit vim ```:qall```
    4. keep changes in all windows ```:wall```
* Switch windows, ```ctrl + w, w``` goes to the next window. Alternatively, ```ctrl + w, [h,j,k,l]``` target specific corners.
* Split windows in current window ```:sp[lit]``` or ```ctrl + w, s``` and ```vs[plit]``` or ```ctrl + w, v```
* Swap the current windows with the right or bottom window using```ctrl + w + r```or in the opposite direction using ```ctrl + w + R```

## II. Built-in nerdtree "netrw" and useful plugin "CtrlP"
Vim has its own file explore tree. Tree can be opened in 3 different ways,
* Vertical split, ```:Vex[plore]```. Horizontal split, ```:Sex[plore]```. In current tab, ```:Ex[plore]```.
* Navigate to the file to open, and press ```enter```.

Alternatively, plugin "CtrlP" does the same thing with less micro.
* ```<leader> + p``` searches file in the current folder. ```<leader> + f``` locate file from MostRecentlyUsed files.
* Navigate to the desired file. ```ctrl + x``` opens the file in a horizontal window. ```ctrl + v``` opens the file in a vertical window. ```ctrl + t``` opens the file in a new tab.

## III. Interact with terminal
* Type ```!<commands> will run the terminal command in vim, e.g. ```python -V```displays python version
* ```ctrl+z``` suspends vim, type ```fg``` in terminal to get back to vim
* Alternatively, typing ```:shell``` directs to terminal. Type ```exit``` goes back to vim
* Open a vertical terminal in tab: ```:vert term```

## IV. Copy, paste, cut and delete
1. Copy -> y(yank), paste -> p, cut -> d, delete-> x. These moves are valid in normal mode.
2. To enter insert mode, s = x + insert mode, c = d + insert mode.
3. Magic moves: ```yip``` (yank in paragraph) copies the whole block. Similarly you can replace y by d to cut the paragraph. Changing p by s(sentence) will copy the sentence until next period.


## V. Replace and replace mode
1. Navigate to the character you want to change, do ```r + char``` replaces the character under the cursor by char.
2. ```Shift + r``` enters replace mode where you can replace characters from the current cursor. Backspace will undo the change you made in this mode.
3. Mass replace, ```%s/term1/term2/gc``` meaning replace term1 by term2 in the whole file and every replacement requires comfirmation.


## Keyboard
HHKB works great on mac. and FC660C is a great fit on linux and windows. Time to throw away your cumbersome 104-key keyboard.
* Small tricks of HHKB ```Shift + Fn + Tab``` enable and disable CAPSLOCK mode
* A great way to resolve the conflict between ESC and tilde/backtick is to map ```Shift + ESC -> ~``` and map ```fn/Alt + ESC -> ` ``` These are default maps in FC660C. HHKB requires [karabiner](https://pqrs.org/osx/karabiner/) to set it up.


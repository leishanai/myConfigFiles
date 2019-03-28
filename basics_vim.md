## Buffers
* It is not necessary to remove hidden buffers, as they do not occupy any resources.
* Run ```vim file1 file2``` in terminal, or ```:e[dit] file``` and ```:bad[d] file``` in vim
* Check all buffers: ```:ls``` or ```:buffers``` 
* Close buffers: ```:bd[elete]``` or ```!bd```if changes need to be disgarded
* Switch between buffers: ```ctrl + i``` or ```ctrl + o```
* Switch between buffers:```:n``` go to the next buffer and ```:N``` go to the previous buffer

## Tabs
* Open files in tabs: ```vim -p file1 file2```
* Create and close tabs in current tab, ```:tabnew file```and ```:tabclose```(or```:tabc```)
* Switch tabs: ```gt```forward and ```gT```backward
* Other commands ```:args``` show all tabs
* Type ```:tabs``` to show how many tabs we have and how many windows in each tab. And then we can use ```ngt```(where n is tab index) to go to the specific tab.

## Windows
* Vertical split windows ```vim -o file1 file2``` 
* Horizontally split windows ```vim -O file1 file2``` 
* Close windows
    1. keep only the current window ```:only``` 
    2. close current window ```:close``` 
    3. close all windows and quit vim ```:qall```
    4. keep changes in all windows ```:wall```
* Switch windows ```ctrl + w + w```
* Split windows in current window ```:split```(or ```sp```), ```vsplit```(or ```:vs```)
* Open a vertical terminal in tab: ```:vert term```
* Swap the current windows with the right or bottom window using```ctrl + w + r```or in the opposite direction using ```ctrl + w + R```



## HHKB
* ```Shift + Fn + Tab``` enable and disable CAPSLOCK mode
* A great way to resolve the conflict between ESC and tilde/backtick is to map ```Shift + ESC -> ~``` and map ```fn/Alt + ESC -> ` ```

## Some tips in Vim:
* type ```!<commands> will run the terminal command in vim, e.g. ```python -V```displays python version
* comment and uncomment, run ```ctrl + v```will select number of colums you want insert to. Then press I to insert # or any comment char, and press ESC twice to apply to all columns
* remove comments: run ```ctrl+v```to select comment chars that you want to remove, and then  press d to remove all
* mass copy and paste, press v or V to select the block you want to copy. Then  press y to copy or d to cut. Move the cursor to the place you want to paste and press p to paste after cursor or press P to paste before the cursor.
* ctrl+z to suspend vim
type fg in terminal to get back to vim
alternatively, type :shell direct to terminal and type exit go back to vim(does require support from vim)

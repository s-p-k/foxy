# Description

  foxy(1) is a small script that offers the ability to store bookmarks in a
  plain text file. It has ability to add, remove and seach bookmarks.
  At the moment, foxy(1) does not handle syncing bookmarks between machines.
  It's written so that one can quickly open his bookmarks that are stored in
  a plain text file to an already running firefox session. 

  It can also work with the [surf](http://surf.suckless.org/) browser. We
  suppose that the user has a remote private git repo and uses ssh to sync
  between machines. Along with foxy, comes another small useful script called
  fmarks. It's useful to open in fast and easy way common pages like search
  engines etc. fmarks also works better with dmenu but can still work within a
  terminal emulator.


#### NOTE: In order to work properly, foxy needs [dmenu](http://tools.suckless.org/dmenu/)
Users will be able to use foxy(1) from any terminal emulator but dmenu makes
it easier.


# Installing foxy and fmarks

Installing foxy and fmarks you simply have to run `make install`. Manual page of
foxy is also installed with the scripts. To remove both scripts you must run
`make uninstall`.

# foxy

A simple script that handles bookmarks stored in txt file. It's written so that
one can quickly open his bookmarks that are stored in a plain text file to an
already running firefox session using dmenu.

### options

#### -h 
`show usage message and quit.`

You can run foxy with the below options directly from dmenu:

#### -s tag

search for a tag in $bookmarks file. Currently foxy can search only for
one tag. Show the search results using dmenu so the user can choose a
link. Example:

`foxy -s search-engine`

#### -a LINK @tag1 @tag2...@tagn
add LINK as a bookmark with tags from 1 to [n]. Example:

`foxy -a http://www.google.com @search-engine @google`

#### -t
show all bookmark tags filtered with uniq(1).

#### -n
show the number of stored bookmarks. There's no point to use dmenu
for this option. Just use your terminal.

#### -c tag
show number of bookmarks that are tagged with "tag"

#### -d tag
Delete a bookmark. Search bookmarks for "tag", pipe output to dmenu,
select and delete bookmark. There's an option to open to your browser the
bookmark you chose to delete if you uncomment 2 lines. Read the foxy src for
details.

# fmarks

Another simple script that can be used with or without foxy but I find it quite
handy anyway. fmarks helps you open your favourite pages from the pages.txt
file.

## options

        if no option is passed to fmarks, it assumes you want to open a page with surf.

#### -f
        fmarks will open the page with firefox

#### -h
        show help message and exit

# Bugs

If a proper number of arguments is passed to foxy when using the -a flag,
it can't tell if the user passed a proper URL


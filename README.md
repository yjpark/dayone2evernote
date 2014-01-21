dayone2evernote
===============

Export Day One entries into Evernote

Original blog post: http://blog.yjpark.org/blog/2014/01/21/save-day-one-summary-to-evernote/

Usage
-----
```
usage: dayone2evernote [-h] [-i DAY_ONE_ENTRIES_PATH] [-b EVERNOTE_NOTE_BOOK]
                       [-y YEAR] [-m MONTH] [-d DAY] [-a] [-n] [-s]

optional arguments:
  -h, --help            show this help message and exit
  -i DAY_ONE_ENTRIES_PATH, --day_one_entries_path DAY_ONE_ENTRIES_PATH
  -b EVERNOTE_NOTE_BOOK, --evernote_note_book EVERNOTE_NOTE_BOOK
  -y YEAR, --year YEAR
  -m MONTH, --month MONTH
  -d DAY, --day DAY
  -a, --all             export ALL entries
  -n, --new             export NEW entries
  -s, --save            Save to Evernote
```

Notes:

- Without ```--save``` parameter, nothing will be added to evernote, and the notes will be printed to stdout, so you can have a check before actually save it.
- For the ```--new``` way to work, you need to create a ```dayone2evernote.last``` file at the same place with ```dayone2evernote```, the last date will be saved to that file, note that today's notes will be exported tomorrow, also if you use multiple devices, please make sure the syncing is done.
- If you use symlink to link ```dayone2evernote``` to path, then the ```dayone2evernote.last``` file should be put with the folder holding the link, this is by design.
- If you run export on multiple machines, please make sure the ```dayone2evernote.last``` file is synchronized somehow, otherwise same notes might be created more than once.

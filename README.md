VBS_MOVEMENT
===============================================================================
_by Ingo Karkat_

DESCRIPTION
------------------------------------------------------------------------------

This filetype plugin provides movement commands and text objects for Visual
Basic Script classes, functions, properties, and subs.

USAGE
------------------------------------------------------------------------------

                            Move around VBScript functions, properties and subs:
    ]m                      Go to [count] next start of a function / property / sub.
    ]M                      Go to [count] next end of a function / property / sub.
    [m                      Go to [count] previous start of a function / property / sub.
    [M                      Go to [count] previous end of a function / property / sub.

    ]gm                     Go to [count] next start of a class.
    ]gM                     Go to [count] next end of a class.
    [gm                     Go to [count] previous start of a class.
    [gM                     Go to [count] previous end of a class.

    im                      "inner method" text object, select [count] function /
                            property / sub contents.
    am                      "a method" text object, select [count] function /
                            property / subs, including the function / property / sub
                            definition and 'end ...'.

    igm                     "inner class" text object, select [count] class contents.
    agm                     "a class" text object, select [count] classes, including
                            the class definition and "end class"

INSTALLATION
------------------------------------------------------------------------------

The code is hosted in a Git repo at
    https://github.com/inkarkat/vim-vbs_movement
You can use your favorite plugin manager, or "git clone" into a directory used
for Vim packages. Releases are on the "stable" branch, the latest unstable
development snapshot on "master".

This script is also packaged as a vimball. If you have the "gunzip"
decompressor in your PATH, simply edit the \*.vmb.gz package in Vim; otherwise,
decompress the archive first, e.g. using WinZip. Inside Vim, install by
sourcing the vimball or via the :UseVimball command.

    vim vbs_movement*.vmb.gz
    :so %

To uninstall, use the :RmVimball command.

### DEPENDENCIES

- Requires Vim 7.0 or higher.
- Requires the CountJump plugin ([vimscript #3130](http://www.vim.org/scripts/script.php?script_id=3130)).

CONTRIBUTING
------------------------------------------------------------------------------

Report any bugs, send patches, or suggest features via the issue tracker at
https://github.com/inkarkat/vim-vbs_movement/issues or email (address below).

HISTORY
------------------------------------------------------------------------------

04-Apr-2012
First published version.

------------------------------------------------------------------------------
Copyright: (C) 2012-2022 Ingo Karkat -
The [VIM LICENSE](http://vimdoc.sourceforge.net/htmldoc/uganda.html#license) applies to this plugin.

Maintainer:     Ingo Karkat &lt;ingo@karkat.de&gt;

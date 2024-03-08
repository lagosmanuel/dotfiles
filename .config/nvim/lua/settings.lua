local g   = vim.g
local opt = vim.opt

g.mapleader = ' ' -- Set the leader key.
opt.number=true -- Add numbers to each line on the left-hand side.
opt.relativenumber=true -- Relative numbers for jumping.
opt.rnu=true -- Show the current line number.
opt.cursorline=true -- Highlight cursor line underneath the cursor horizontally.
opt.scrolloff=10 -- " Minimal number of lines to scroll when the cursor gets off the screen (default 1).
opt.shiftwidth=4 -- Set shift width to 4 spaces.
opt.tabstop=4 -- Set tab width to 4 columns.
opt.expandtab=true -- Use space characters instead of tabs.
opt.autoindent=true -- Autoindent always on
opt.undofile=true -- Enable undo files.
opt.backup=true -- Enable backup files.
opt.swapfile=true -- Enable swap files.
opt.undolevels=1000 -- Number of changes that can be undone.
opt.undoreload=10000 -- Save the whole buffer for undo when reoloading it. 
opt.undodir=os.getenv('HOME')..'/.nvim/tmp/undo//' -- Set the undo directory.
opt.backupdir=os.getenv('HOME')..'/.nvim/tmp/backup//' -- Set the backup directory.
opt.directory=os.getenv('HOME')..'/.nvim/tmp/swap//' -- Set the swap directory.

-- Make those folders automatically if they don't already exist.
-- if !isdirectory(expand(&undodir))
--     call mkdir(expand(&undodir), --p--)
-- endif
-- if !isdirectory(expand(&backupdir))
--     call mkdir(expand(&backupdir), --p--)
-- endif
-- if !isdirectory(expand(&directory))
--     call mkdir(expand(&directory), --p--)
-- endif

opt.hidden=true -- Buffer becomes hidden when it is abandoned.
opt.wrap=true -- Enable virtual line wrapping.
opt.linebreak=true -- Wrap on words boundaries.
opt.textwidth=0 -- Turn off physical line wrapping.
opt.wrapmargin=0 -- Idem previous.
opt.ignorecase=true -- Ignore capital letters during search.
opt.smartcase=true -- Override the ignorecase option if searching for capital letters.
opt.showcmd=true -- Show partial command you type in the last line of the screen.
opt.showmode=true -- Show the mode you are on the last line.
opt.hlsearch=true -- Use highlighting when doing a search.
opt.incsearch=true -- While searching through a file incrementally highlight matching characters as you type.
opt.showmatch=true -- Show matching words during a search.
opt.history=1000 -- Set the commands to save in history default number is 20.
opt.wildmenu=true -- Enable auto completion menu after pressing TAB.
opt.belloff=all -- Disable bell sounds.
opt.encoding='utf-8' -- Encoding.
opt.ruler=true -- Show file stats.
opt.colorcolumn='120' -- Show column at 120 characters.
opt.completeopt='longest,menuone' -- Pop up menu to show the possible completions.
opt.clipboard='unnamed,unnamedplus' -- Cross-platform value configuration for clipboard.
opt.path:append '**' -- Search down into subfolders, provides tab-completion for all file-related tasks.

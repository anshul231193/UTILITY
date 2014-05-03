UTILITY
=======
• The utility should collect all executables, libraries, sources and includes from each
directory given on the command line or entered by the user (if no arguments were passed)
into separate directories. By default, the allocation is as follows:
–
–
–
–
executables go to ~/bin
libraries (lib*.*) go to ~/lib
sources (*.c, *.cc, *.cpp, *.cxx) go to ~/src
includes (*.h, *.hxx) go to ~/inc
• The utility should ask whether another directory should be used in place of these default
directories.
• Each move should be recorded in a log file that may be used to reverse the moves (extra
points for writing a reverse utility!). The user should have an option to use a log file other
than the default (~/organize.log).
• At the end, the utility should print statistics on file allocation: how many directories were
processed, how many files in each category were moved and how long the reorganization
was (the processing time in seconds).
• The utility should wait only limited time for user input; if no input, then use defaults.

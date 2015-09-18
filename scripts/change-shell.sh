export SHELL=/bin/bash
env PS1="\u $: " /bin/bash --norc -i
expect script.exp

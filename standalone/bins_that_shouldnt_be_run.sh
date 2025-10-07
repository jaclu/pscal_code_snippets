#!/bin/sh


# exsh complains about Unable to open ...
# for bins that should be ignored in the current env
# In this case running this on a non-iSH node

if [ -d /proc/ish ]; then
    bin_that_doesnt_exist_on_non_ish_os
else
    echo "Won't run the iSH only bin on this env"
fi

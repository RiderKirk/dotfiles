#!/bin/bash

for schema in $(gsettings list-schemas | rg 'keybindings|media-keys')
do
    for key in $(gsettings list-keys $schema)
    do
        if [[ $(gsettings range $schema $key) == "type as" ]]; then
            gsettings set $schema $key "@as []"
        fi
    done
done

#!/bin/sh

if [ $DISPLAY_DIFF = true ]; then
    terraform fmt -check -recursive -diff
else
    terraform fmt -check -recursive    
fi

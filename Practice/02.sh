#!/bin/bash

#############################
## Author: Utsav Katharotiya
## Date: August 16, 2024
## Description: Print number of "s" in mississippi word
#############################

x=mississippi

grep -o "s" <<<"$x" | wc -l



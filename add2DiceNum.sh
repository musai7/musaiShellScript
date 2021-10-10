#!/bin/bash -x
diceOneValue=$(((RANDOM%6)+1));
diceTwoValue=$(((RANDOM%6)+1));
sumOfTwoDiceValues=$(($diceOneValue+$diceTwoValue));

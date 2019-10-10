#!/bin/sh

# classic for loop synthax {START..END..INCREMENT}

# loop over prices from 0 to 100 in increments of 2
for price_max in {2..100..2}; do
   PRICE_MAX=2
   # this is how you do math in bash else it does nothing
   PRICE_MIN=$(expr $PRICE_MAX - 2)
   # pring what price it's currently at
   echo price max $PRICE_MAX
   echo price min $PRICE_MIN
   # execute a command
   node link_parsing.js --price_min $PRICE_MIN --price_max $PRICE_MAX --city "belgrade" --checkin "2020-01-20" --checkout "2020-01-26"
done

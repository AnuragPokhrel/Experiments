#!/bin/bash
# The purpose of this script is to test the speed in different conditions, not to promote cracking or provide efficient tools or faster methods. And this is intentionally set to not stop till 9999.
T1=$(date +%s)
for i in {0000..9999}; do
if [[ $(printf "%s" "$i" | sha256sum | awk '{print $1}') == '03ac674216f3e15c761ee1a5e255f067953623c8b388b4459e13f978d7c846f4' ]]; then
echo "The PIN is $i"
fi
done
T2=$(date +%s) 
TIME=$(($T2 - $T1))
echo "{ \"Id\":$1, \"cores\":$2, \"Ram\": $3,\"Time\": $TIME }" >> time.jsonl 

#!/bin/bash
userNum=-1

for num in {0..100}
do
        if [[ ! "$(who | grep 'user*' | cut -d' ' -f1 | sort | uniq)" =~ "${num}" ]]; then
                userNum=$num
                break
        fi
done
if [[ "$userNum" == -1 ]]; then
        echo "No free users available"
        exit
else
        echo "User 'user$userNum' is free"
        echo "Logging in as 'user$userNum'..."
        ssh user$userNum@127.0.0.1 && exit
fi

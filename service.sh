#!/usr/bin/env bash

cowsay "This is an example service. It will show current date every 10 sec (or so, cows are unpredictable :-)"

while true; do
    sleep 10 && cowsay `date` || exit 0
done

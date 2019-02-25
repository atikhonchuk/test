#!/bin/bash

token='722228959:AAHFSBg2QRy4g27kw_7MD3yPwFg_7YOKZss'
chat="$1"
subj="$2"
message="$3"

/usr/bin/curl -s --header 'Content-Type: application/json' --request 'POST' --data "{\"chat_id\":\"${chat}\",\"text\":\"${subj}\n${message}\"}" "https://api.telegram.org/bot${token}/sendMessage"

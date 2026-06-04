#!/bin/bash

echo "🚀 اسکریپت نگهدارنده Codespace فعال شد!"
echo "هر ساعت یک فعالیت کوچک انجام میشه تا Codespace غیرفعال نشه."

counter=0

while true; do
    counter=$((counter + 1))
    echo "[$counter] ✅ فعالیت در ساعت $(date '+%H:%M:%S') - Codespace زنده نگه داشته شد"
    
    # چند فعالیت سبک مختلف برای اطمینان بیشتر
    echo "keep-alive" >> \~/codespace-keepalive.log 2>/dev/null
    touch \~/.codespace_last_active 2>/dev/null
    
    # هر ساعت یک بار
    sleep 3600
done

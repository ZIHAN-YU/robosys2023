#!/usr/bin/python3
import sys

ans=0
for line in sys.stdin:
    try:
        #ans += float(line)
        ans += int(line)
    except:
        ans += float(line)
print(ans)


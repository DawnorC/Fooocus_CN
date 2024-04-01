@echo off
setlocal enabledelayedexpansion

set "filename=Fooocus\fooocus_version.py"
set "search=version ="

for /f "tokens=2 delims=''" %%a in ('findstr /c:"%search%" %filename%') do (
  set "version=%%a"
)

echo.
echo ------------------ ͼ�����ɹ��� Fooocus ������ ------------------
echo.
echo �汾Ҫ�� 2.1.780 �����ϣ������ļ�Ҫ�󣺷����ĵ� Fooocus\language\cn.json
echo.
echo ��2.1.817 �汾��֧��ͨ���޸Ľű���������л���ǳ���⣬ --theme dark�� --theme light��
echo.
echo ��Ŀǰ�� Fooocus �汾��Ϊ��%version% 
echo.
echo -----------------------------------------------------------------
echo.
echo ��� 1. �Զ����£����� Ĭ��Ԥ�裬Ӣ�Ľ��棬ǳɫ����
echo.
echo ��� 2. �Զ����£����� Ĭ��Ԥ�裬���Ľ��棬ǳɫ����
echo.
echo ----------------------------------------
echo.
echo ��� 3. ���ø��£����� Ĭ��Ԥ�裬Ӣ�Ľ��棬ǳɫ����
echo.
echo ��� 4. ���ø��£����� Ĭ��Ԥ�裬���Ľ��棬ǳɫ����
echo.
echo ��� 5. ���ø��£����� ����Ԥ�裬���Ľ��棬��ɫ���� --
echo.
echo ��� 6. ���ø��£����� дʵԤ�裬���Ľ��棬��ɫ���� --
echo.
echo ��� 7. ���ø��£����� Ĭ��Ԥ�裬���Ľ��棬��ɫ���� --
echo.
echo -----------------------------------------------------------------
echo.

set /p num=��������������ı�ţ�

if "%num%"=="1" (
    .\python_embeded\python.exe -s Fooocus\entry_with_update.py --language en --theme light
    pause
) else if "%num%"=="2" (
    .\python_embeded\python.exe -s Fooocus\entry_with_update.py --language cn --theme light
    pause
) else if "%num%"=="3" (
    .\python_embeded\python.exe -s Fooocus\launch.py --language en --theme light
    pause
) else if "%num%"=="4" (
    .\python_embeded\python.exe -s Fooocus\launch.py --language cn --theme light
    pause
) else if "%num%"=="5" (
    .\python_embeded\python.exe -s Fooocus\launch.py --language cn --preset anime --theme dark
    pause
) else if "%num%"=="6" (
    .\python_embeded\python.exe -s Fooocus\launch.py --language cn --preset realistic --theme dark
    pause
) else if "%num%"=="7" (
    .\python_embeded\python.exe -s Fooocus\launch.py --language cn --theme dark
    pause
) else (
    echo ����ı����Ч
)
@echo off

setlocal

REM ���������б���ΪUTF-8
chcp 936 > nul

REM ��ȡ�������ļ�����Ŀ¼��ΪGit�ֿ�·��
set GIT_REPO_PATH=%~dp0

REM ����Git�ֿ�Ŀ¼
cd %GIT_REPO_PATH%

REM ��ӡ��Ҫ�ύ���ļ���Ϣ
echo Files to be committed:
git status --porcelain

REM ��ʾ�û������ύ��Ϣ
set /p COMMIT_MESSAGE=Enter commit message: 

REM ������и���
git add --all

REM �ύ����
git commit -m "%COMMIT_MESSAGE%"

REM ���͵�Զ�ֿ̲⣨�����Ҫ��
git push

endlocal

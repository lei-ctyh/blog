@echo off

setlocal

REM 设置命令行编码为UTF-8
chcp 936 > nul

REM 获取批处理文件所在目录作为Git仓库路径
set GIT_REPO_PATH=%~dp0

REM 进入Git仓库目录
cd %GIT_REPO_PATH%

REM 打印将要提交的文件信息
echo Files to be committed:
git status --porcelain

REM 提示用户输入提交信息
set /p COMMIT_MESSAGE=Enter commit message: 

REM 添加所有更改
git add --all

REM 提交更改
git commit -m "%COMMIT_MESSAGE%"

REM 推送到远程仓库（如果需要）
git push

endlocal

REM Using s3deploy
rd /q /s public
hugo
rd /q /s public\post
del /s /a .\*thumbs*.db
s3deploy.exe -source=public/ -region=us-east-1 -bucket=pmiow.com
rd /q /s public

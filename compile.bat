@echo off

setlocal

set classpath=lib\json-java.jar
set dest_jar_path=dest\JSONTest.jar
set manifest=src\manifest.mani
set src_files=src\net\refrain\jsontest\*.java

if exist bin del /q bin
mkdir bin

if exist dest del /q dest
mkdir dest

javac %src_files% -cp %classpath% -d bin -encoding utf-8

xcopy /s /y res bin\res\

jar cfm %dest_jar_path% %manifest% -C bin .

java -jar %dest_jar_path%

endlocal

@echo on
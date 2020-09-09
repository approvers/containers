#!/bin/sh
echo "${CloudVision__Credentials__Content}" > /etc/cloudvision.credentials.json
dotnet ./Cadocr.dll

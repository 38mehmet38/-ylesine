@echo off
REM Build Windows 64-bit EXE using PyInstaller
python -m pip install --upgrade pip
python -m pip install -r requirements.txt pyinstaller

REM Create a one-file executable and include texture.png next to exe
pyinstaller --noconfirm --onefile --add-data "texture.png;." --name MyGame main.py

IF EXIST dist\MyGame.exe (
  echo Build successful: dist\MyGame.exe
) ELSE (
  echo Build failed
)

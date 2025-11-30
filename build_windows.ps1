# Build Windows 64-bit EXE using PyInstaller (PowerShell)
python -m pip install --upgrade pip
python -m pip install -r requirements.txt pyinstaller

# Use semicolon for add-data on Windows
pyinstaller --noconfirm --onefile --add-data "texture.png;." --name MyGame main.py

if (Test-Path "dist\MyGame.exe") {
    Write-Host "Built: dist\MyGame.exe"
} else {
    Write-Host "Build failed"
    exit 1
}

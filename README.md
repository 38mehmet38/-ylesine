# Windows EXE build (64-bit)

Bu repo küçük bir Pyglet örneği içeriyor: `main.py` ve `texture.png`.

İki yol gösteriyorum:

1) Yerel Windows makinesinde tek komutla derleme (önerilen):

   - Python 3.8+ yüklü olduğundan emin olun.
   - Komut satırını (PowerShell veya cmd) yönetici olmadan açın ve aşağıyı çalıştırın:

```powershell
python -m pip install --upgrade pip
pip install -r requirements.txt pyinstaller
.
REM cmd için: build_windows.bat
REM PowerShell için: .\build_windows.ps1
```

   Bu işlem `dist\MyGame.exe` oluşturacaktır.

2) Otomatik derleme (GitHub Actions):

   - Bu repoyu `main` dalına pushladığınızda (veya `workflow_dispatch` ile elle tetikleyerek) GitHub Actions `windows-latest` üzerinde PyInstaller ile exe oluşturur ve `MyGame-windows-exe` isimli artifact olarak yükler.

Notlar / İpuçları:

- PyInstaller Windows için hazırlanmıştır; Linux üzerinde derleme genellikle Windows .exe üretmez. Bu yüzden CI (Windows runner) veya gerçek Windows makineleri kullanın.
- Daha kişiselleştirilmiş exe ismi/iconu istiyorsanız PyInstaller komutuna `--name` veya `--icon=app.ico` argümanlarını ekleyin.

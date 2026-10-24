# Uso: powershell -File ferramentas\converter-fotos.ps1 -Saida assets\posers -Base <nome-do-evento> -Fotos <arq1>,<arq2>,...
# Converte JPG/HEIC/DNG para JPEG (máx. 1200px, qualidade 82), aplicando a orientação EXIF.
param([string]$Saida, [string]$Base, [string[]]$Fotos)
Add-Type -AssemblyName PresentationCore
$n = 1
foreach ($arq in $Fotos) {
  $s = [System.IO.File]::OpenRead($arq)
  $fr = [System.Windows.Media.Imaging.BitmapDecoder]::Create($s, "None", "OnLoad").Frames[0]
  $o = 1; try { $v = $fr.Metadata.GetQuery("System.Photo.Orientation"); if ($v) { $o = [int]$v } } catch {}
  $scale = [Math]::Min(1.0, 1200.0 / [Math]::Max($fr.PixelWidth, $fr.PixelHeight))
  $tg = New-Object System.Windows.Media.TransformGroup
  $tg.Children.Add((New-Object System.Windows.Media.ScaleTransform($scale, $scale)))
  switch ($o) {
    2 { $tg.Children.Add((New-Object System.Windows.Media.ScaleTransform(-1, 1))) }
    3 { $tg.Children.Add((New-Object System.Windows.Media.RotateTransform(180))) }
    4 { $tg.Children.Add((New-Object System.Windows.Media.ScaleTransform(1, -1))) }
    5 { $tg.Children.Add((New-Object System.Windows.Media.RotateTransform(90))); $tg.Children.Add((New-Object System.Windows.Media.ScaleTransform(-1, 1))) }
    6 { $tg.Children.Add((New-Object System.Windows.Media.RotateTransform(90))) }
    7 { $tg.Children.Add((New-Object System.Windows.Media.RotateTransform(270))); $tg.Children.Add((New-Object System.Windows.Media.ScaleTransform(-1, 1))) }
    8 { $tg.Children.Add((New-Object System.Windows.Media.RotateTransform(270))) }
  }
  $tb = New-Object System.Windows.Media.Imaging.TransformedBitmap($fr, $tg)
  $enc = New-Object System.Windows.Media.Imaging.JpegBitmapEncoder; $enc.QualityLevel = 82
  $enc.Frames.Add([System.Windows.Media.Imaging.BitmapFrame]::Create($tb))
  $out = Join-Path $Saida ("{0}-{1:D2}.jpg" -f $Base, $n)
  $fs = [System.IO.File]::Create($out); $enc.Save($fs); $fs.Close(); $s.Close()
  "{0} <- {1} (orient {2})  {3}x{4}  {5:N0} KB" -f (Split-Path $out -Leaf), (Split-Path $arq -Leaf), $o, $tb.PixelWidth, $tb.PixelHeight, ((Get-Item $out).Length/1KB)
  $n++
}

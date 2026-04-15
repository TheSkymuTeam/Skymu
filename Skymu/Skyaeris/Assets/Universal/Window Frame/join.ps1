Get-ChildItem -Recurse -Filter spritesheet.png | Remove-Item -Force

Get-ChildItem -Recurse -Directory | ForEach-Object {
  $dir = $_.FullName
  $ordered = @("default.png","hover.png","pressed.png","inactive.png") |
    ForEach-Object {
      $p = Join-Path $dir $_
      if (Test-Path $p) { $p }
    }

  if ($ordered.Count -gt 0) {
    magick $ordered -append (Join-Path $dir "combined.png")
  }
}
$target = "C:\Users\Public\Desktop"

$source = $PSScriptRoot

Copy-Item -Path "$source\content\*" -Destination $target -Recurse -Force -ErrorAction Stop
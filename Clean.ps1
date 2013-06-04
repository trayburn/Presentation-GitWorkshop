param([string] $Path)

# Cleanup any previous execution
if (Test-Path $Path)
{
    Remove-Item -Recurse -Force $Path
}

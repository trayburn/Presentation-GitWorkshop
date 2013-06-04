param([string] $Path)

# Create a git repo
mkdir ".\$Path"
cd ".\$Path"
git init

if (Test-Path "..\Solutions\$Path.ps1") {
    cp "..\Solutions\$Path.ps1" Solution.ps1
}
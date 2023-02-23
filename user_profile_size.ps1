$ErrorActionPreference = "SilentlyContinue"

$UserFolders = Get-ChildItem -Path "C:\Users" -Force -Directory

ForEach ( $Folder in $UserFolders ) {

    [UInt64]$FolderSize = ( Get-Childitem -Path $Folder.FullName -Force -Recurse | Measure-Object -Property "Length" -Sum ).Sum
    
    [PSCustomObject]@{
        FolderName    = $Folder.BaseName
        FolderPath    = $Folder.FullName
        "Size MB"     = [math]::round(($FolderSize/1MB),2)
        "Size GB"     = [math]::round(($FolderSize/1GB),2)
    }

}

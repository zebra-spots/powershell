# Must be done from directory with file to be checked (or put absolute path instead of just filename) and publishedhash must be changed manually to the hash to be compared before running

# TODO: Ask for user input for $FileHash with Read-Host -Prompt 'Input file to be hashed (full path)'
# TODO: Ask for user input for $publishedHash with Read-Host -Prompt 'Input hash to compare file to'


$FileHash = (Get-FileHash 2022-07-01-raspios-bullseye-i386.iso).Hash
$FileHash
$publishedHash = '5fa906df25e600bf7d7e6a5eb7b0e9b6605e60992ee6c8efe79bc99e7c2452bd'.ToUpper()
$publishedHash
$result = $FileHash -eq $publishedHash
$result

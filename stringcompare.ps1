# Must be done from directory with file and publishedhash must be changed manually before running

$FileHash = (Get-FileHash 2022-07-01-raspios-bullseye-i386.iso).Hash
$FileHash
$publishedHash = '5fa906df25e600bf7d7e6a5eb7b0e9b6605e60992ee6c8efe79bc99e7c2452bd'.ToUpper()
$publishedHash
$result = $FileHash -eq $publishedHash
$result

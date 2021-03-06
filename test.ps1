$env:Filename = "Filename"
$env:Message = "Message enviroment variable"

# Create Temp Directory
if (-not(Test-Path -Path 'C:\temp'))
{
    New-Item -Path 'C:\temp' -ItemType directory
}

# Using the environment variables exposed by the Jenkins job 
Set-Content -Path "C:\temp\$($env:Filename).txt" -Value ($env:FileName + " and " + $env:Message)


Write-Output "file has been created"
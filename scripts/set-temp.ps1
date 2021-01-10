# Set Temp Variable using PowerShell

<# Init Log #>;
Start-Transcript -Path 'C:/Automation/setup.txt' -append;
<#$DebugPreference = 'Continue' #>;
$VerbosePreference = 'Continue';
$InformationPreference = 'Continue';

$TempFolder = "C:\TEMP";
New-Item -ItemType Directory -Force -Path $TempFolder;
[Environment]::SetEnvironmentVariable("TEMP", $TempFolder, [EnvironmentVariableTarget]::Machine);
[Environment]::SetEnvironmentVariable("TMP", $TempFolder, [EnvironmentVariableTarget]::Machine);
[Environment]::SetEnvironmentVariable("TEMP", $TempFolder, [EnvironmentVariableTarget]::User);
[Environment]::SetEnvironmentVariable("TMP", $TempFolder, [EnvironmentVariableTarget]::User);
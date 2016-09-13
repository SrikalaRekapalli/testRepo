param 
 ( 
     # The cloud security agent user name     
     [Parameter(Mandatory=$true)] 
     [String] $filename, 
) 
 
if($filename -eq "")
{
 Write-Host "Please provide valid UserName and Password"
 exit
}
else
{
Write-Host "Installing Informatica Cloud Secure Agent............" 
cd 'C:\'
mkdir $filename
}
